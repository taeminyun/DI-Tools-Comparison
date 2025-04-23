//
//  ChildViewController.swift
//  ChildPresentation
//
//  Created by 윤태민 on 9/13/24.
//

import UIKit

import Dependencies

final public class ChildViewController: UIViewController {

    @Dependency(\.childViewModel) var viewModel

    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = viewModel.backgroundColor(with: viewModel.alpha)

        let button = UIButton(frame: view.frame)
        button.setTitle(viewModel.buttonTitle, for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
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
