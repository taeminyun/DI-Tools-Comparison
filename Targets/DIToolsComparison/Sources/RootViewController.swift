//
//  RootViewController.swift
//  DIExample
//
//  Created by 윤태민 on 9/13/24.
//

import UIKit

import ChildPresentation
import ChildDomain

import ColorData
import StringData

final public class RootViewController: UIViewController {

    let alpha: CGFloat = 0.5
    let name: String = "YOGIYO"

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
                        colorRepository: ColorRepositoryImpl(alpha: alpha),
                        stringRepository: StringRepositoryImpl(to: name)
                    )
                )
            ),
            animated: true
        )
    }
}

