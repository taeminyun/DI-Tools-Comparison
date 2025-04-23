//
//  ChildViewModel.swift
//  ChildPresentation
//
//  Created by 윤태민(Taemin Yun) on 4/12/25.
//

import UIKit

import Dependencies

import ChildDomain

public class ChildViewModel {

    let alpha: CGFloat = 0.5
    let name: String = "YOGIYO"

    @Dependency(\.childUseCase) var useCase

    func backgroundColor(with alpha: CGFloat) -> UIColor {
        useCase.randomColor.color.withAlphaComponent(alpha)
    }

    var buttonTitle: String {
        useCase.titleWithColor(with: name)
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

// MARK: - Dependencies
extension ChildViewModel: DependencyKey {
    public static var liveValue: ChildViewModel = ChildViewModel()
}

extension DependencyValues {
    var childViewModel: ChildViewModel {
        get { self[ChildViewModel.self] }
        set { self[ChildViewModel.self] = newValue }
    }
}
