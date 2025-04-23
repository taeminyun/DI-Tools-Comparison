//
//  ColorRepository.swift
//  ColorDomain
//
//  Created by 윤태민(Taemin Yun) on 4/12/25.
//

import CoreGraphics

public protocol ColorRepository {
    var colors: [String] { get }
    var alpha: CGFloat { get }

    init(alpha: CGFloat)
}
