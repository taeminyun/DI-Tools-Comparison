//
//  ChildUseCase.swift
//  DIExample
//
//  Created by 윤태민(Taemin Yun) on 4/12/25.
//

import CoreGraphics

import ColorDomain
import StringDomain

public struct ChildUseCase {

    private let colorRepository: ColorRepository
    private let stringRepository: StringRepository

    public init(
        colorRepository: ColorRepository,
        stringRepository: StringRepository
    ) {
        self.colorRepository = colorRepository
        self.stringRepository = stringRepository
    }

    public var randomColor: String {
        colorRepository.colors.randomElement() ?? "white"
    }

    public var alpha: CGFloat {
        colorRepository.alpha
    }

    public var titleWithColor: String {
        stringRepository.str1 + stringRepository.str2 + stringRepository.str3 + "\n"
        + "\n"
        + stringRepository.name
    }
}
