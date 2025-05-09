//
//  ChildViewModel.swift
//  DIExample
//
//  Created by 윤태민(Taemin Yun) on 4/12/25.
//

import UIKit

class ChildViewModel {
    private let useCase: ChildUseCase

    init(useCase: ChildUseCase) {
        self.useCase = useCase
    }

    var backgroundColor: UIColor {
        useCase.randomColor.color
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
