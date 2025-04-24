//
//  ChildUseCase.swift
//  ChildDomain
//
//  Created by 윤태민(Taemin Yun) on 4/12/25.
//

import CoreGraphics

import Dependencies

import ChildDI

public struct ChildUseCase {

    @Dependency(\.colorRepository) var colorRepository
    @Dependency(\.stringRepository) var stringRepository

    public var randomColor: String {
        colorRepository.colors.randomElement() ?? "white"
    }

    public func titleWithColor(with name: String) -> String {
        stringRepository.str1 + stringRepository.str2 + stringRepository.str3 + "\n"
        + "\n"
        + name
    }
}

// MARK: - Dependencies
extension ChildUseCase: DependencyKey {
    public static var liveValue: ChildUseCase = ChildUseCase()
}

extension DependencyValues {
    public var childUseCase: ChildUseCase {
        get { self[ChildUseCase.self] }
        set { self[ChildUseCase.self] = newValue }
    }
}
