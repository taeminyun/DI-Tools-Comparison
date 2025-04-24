//
//  ChildComponent.swift
//  ChildPresentation
//
//  Created by 윤태민(Taemin Yun) on 4/21/25.
//

import UIKit

import NeedleFoundation

import ChildDomain

public class ChildComponent: Component<ChildUseCaseProtocol> {
    var childUseCase: ChildUseCase {
        ChildUseCase(
            colorRepository: dependency.colorRepository,
            stringRepository: dependency.stringRepository
        )
    }
}
