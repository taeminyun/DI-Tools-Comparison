//
//  ChildViewModel.swift
//  ChildPresentation
//
//  Created by 윤태민(Taemin Yun) on 4/12/25.
//

import UIKit

import Swinject

import ChildDomain

public final class ChildViewModel {

    private let alpha: CGFloat = 0.5
    private let name: String = "YOGIYO"

    private let useCase: ChildUseCase

    public init(with container: Container) {
        self.useCase = container.resolve(ChildUseCase.self, arguments: alpha, name)!
    }

    var backgroundColor: UIColor {
        useCase.randomColor.color.withAlphaComponent(useCase.alpha)
    }

    var buttonTitle: String {
        useCase.titleWithColor
    }
}

fileprivate extension String {
    var color: UIColor {
        switch self {
            case "systemRed":   return .systemRed
            case "systemGreen": return .systemGreen
            case "systemBlue":  return .systemBlue
            default:            return .systemBackground
        }
    }
}
