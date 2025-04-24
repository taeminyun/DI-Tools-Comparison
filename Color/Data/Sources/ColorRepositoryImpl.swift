//
//  ColorRepositoryImpl.swift
//  ColorData
//
//  Created by 윤태민(Taemin Yun) on 4/12/25.
//

import CoreGraphics

import ColorDomain

public class ColorRepositoryImpl: ColorRepository {

    public var colors: [String] {
        ["systemRed", "systemGreen", "systemBlue"]
    }

    public let alpha: CGFloat

    required public init(alpha: CGFloat) {
        self.alpha = alpha
    }
}
