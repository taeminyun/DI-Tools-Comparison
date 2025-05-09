//
//  ChildViewController.swift
//  DIExample
//
//  Created by 윤태민 on 9/13/24.
//

import UIKit

final class ChildViewController: UIViewController {

    private let viewModel: ChildViewModel

    init(viewModel: ChildViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = viewModel.backgroundColor

        let button = UIButton(frame: view.frame)
        button.setTitle(viewModel.buttonTitle, for: .normal)
        button.center = view.center
        button.addAction(
            UIAction { [weak self] _ in
                self?.dismiss(animated: true)
            },
            for: .touchUpInside
        )
        view.addSubview(button)
    }
}
