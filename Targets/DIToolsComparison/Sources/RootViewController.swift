//
//  RootViewController.swift
//  DIToolsComparison
//
//  Created by 윤태민 on 9/13/24.
//

import UIKit

import NeedleFoundation

import ChildPresentation

public final class RootViewController: UIViewController {

    let childComponent: ChildComponent

    init(childComponent: ChildComponent) {
        self.childComponent = childComponent
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

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
        present(ChildViewController(component: childComponent), animated: true)
    }
}

