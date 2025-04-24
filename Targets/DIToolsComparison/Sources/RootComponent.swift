//
//  RootComponent.swift
//  DIToolsComparison
//
//  Created by 윤태민(Taemin Yun) on 4/21/25.
//  Copyright © 2025 tuist.io. All rights reserved.
//

import UIKit

import NeedleFoundation

import ChildPresentation

import ColorDomain
import ColorData
import StringDomain
import StringData

class RootComponent: BootstrapComponent {

    public let colorRepository: ColorRepository
    public let stringRepository: StringRepository

    init(alpha: CGFloat, name: String) {
        self.colorRepository = ColorRepositoryImpl(alpha: alpha)
        self.stringRepository = StringRepositoryImpl(to: name)
    }

    var rootViewController: UIViewController {
        RootViewController(childComponent: childComponent)
    }

    var childComponent: ChildComponent {
        ChildComponent(parent: self)
    }
}
