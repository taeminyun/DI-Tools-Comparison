//
//  ChildUseCase.swift
//  ChildDomain
//
//  Created by 윤태민(Taemin Yun) on 4/12/25.
//

import CoreGraphics

import NeedleFoundation

import ColorDomain
import StringDomain

public protocol ChildUseCaseProtocol: Dependency {
    var colorRepository: ColorRepository { get }
    var stringRepository: StringRepository { get }
}

public class ChildUseCase: ChildUseCaseProtocol {

    public let colorRepository: ColorRepository
    public let stringRepository: StringRepository

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
