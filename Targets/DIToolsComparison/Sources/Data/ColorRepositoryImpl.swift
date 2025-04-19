//
//  ColorRepositoryImpl.swift
//  DIExample
//
//  Created by 윤태민(Taemin Yun) on 4/12/25.
//

import Domain

struct ColorRepositoryImpl: ColorRepository {
    var colors: [String] {
        ["systemRed", "systemGreen", "systemBlue"]
    }
}
