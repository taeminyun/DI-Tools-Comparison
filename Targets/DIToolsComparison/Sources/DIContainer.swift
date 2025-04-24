//
//  DIContainer.swift
//  DIToolsComparison
//
//  Created by 윤태민(Taemin Yun) on 4/21/25.
//  Copyright © 2025 tuist.io. All rights reserved.
//

import Foundation

import Swinject

import ChildDomain

import ColorData
import ColorDomain
import StringData
import StringDomain

final class DIContainer {
    static let shared = DIContainer()

    let container = Container()

    private init() {
        registerDependencies()
    }

    private func registerDependencies() {
        container.register(ColorRepository.self) { _, alpha in
            ColorRepositoryImpl(alpha: alpha)
        }
        container.register(StringRepository.self) { _, name in
            StringRepositoryImpl(to: name)
        }

        container.register(ChildUseCase.self) { (resolver, alpha: CGFloat, name: String) in
            ChildUseCase(
                colorRepository: resolver.resolve(ColorRepository.self, argument: alpha)!,
                stringRepository: resolver.resolve(StringRepository.self, argument: name)!
            )
        }
    }
}
