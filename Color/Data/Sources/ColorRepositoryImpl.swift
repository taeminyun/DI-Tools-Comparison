//
//  ColorRepositoryImpl.swift
//  ColorData
//
//  Created by 윤태민(Taemin Yun) on 4/12/25.
//

import CoreGraphics

import Dependencies

import ColorDomain

public struct ColorRepositoryImpl: ColorRepository {

    public var colors: [String] {
        ["systemRed", "systemGreen", "systemBlue"]
    }
}

// MARK: - Dependencies
extension ColorRepositoryImpl: DependencyKey {
    public static var liveValue: ColorRepository = ColorRepositoryImpl()
}

extension DependencyValues {
    public var colorRepository: ColorRepository {
        get { self[ColorRepositoryImpl.self] }
        set { self[ColorRepositoryImpl.self] = newValue }
    }
}
