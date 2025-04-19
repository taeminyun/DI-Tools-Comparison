//
//  ColorRepositoryImpl.swift
//  DIExample
//
//  Created by 윤태민(Taemin Yun) on 4/12/25.
//

import SampleDomain

public struct ColorRepositoryImpl: ColorRepository {
    public var colors: [String] {
        ["systemRed", "systemGreen", "systemBlue"]
    }

    public init() { }
}
