//
//  RootViewController.swift
//  DIExample
//
//  Created by 윤태민 on 9/13/24.
//

import UIKit

import SampleDomain
import SampleData

final public class RootViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: view.frame)
        button.setTitle("Tap Me", for: .normal)
        button.center = view.center
        
        button.addAction(
            UIAction { [weak self] _ in
                self?.handleButton()
            },
            for: .touchUpInside
        )
        view.addSubview(button)
    }
}

// MARK: - private
private extension RootViewController {
    func handleButton() {
        present(
            ChildViewController(
                viewModel: ChildViewModel(
                    useCase: ChildUseCase(
                        colorRepository: ColorRepositoryImpl(),
                        stringRepositry: StringRepositoryImpl()
                    )
                )
            ),
            animated: true
        )
    }
}

