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
    private let stringRepositry: StringRepository

    public init(
        colorRepository: ColorRepository,
        stringRepositry: StringRepository
    ) {
        self.colorRepository = colorRepository
        self.stringRepositry = stringRepositry
    }

    public var randomColor: String {
        colorRepository.colors.randomElement() ?? "white"
    }

    public var alpha: CGFloat {
        colorRepository.alpha
    }

    public var titleWithColor: String {
        stringRepositry.str1 + stringRepositry.str2 + stringRepositry.str3 + "\n"
        + "\n"
        + stringRepositry.name
    }
}
