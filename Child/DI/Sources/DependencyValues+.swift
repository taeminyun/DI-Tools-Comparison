//
//  DependencyValues+.swift
//  ChildDI
//
//  Created by 윤태민(Taemin Yun) on 4/24/25.
//

import Dependencies

import ColorDomain
import ColorData
import StringDomain
import StringData

extension DependencyValues {
    public var colorRepository: ColorRepository {
        get { self[ColorRepositoryImpl.self] }
        set { self[ColorRepositoryImpl.self] = newValue }
    }

    public var stringRepository: StringRepository {
        get { self[StringRepositoryImpl.self] }
        set { self[StringRepositoryImpl.self] = newValue }
    }
}

extension ColorRepositoryImpl: @retroactive DependencyKey {
    public static var liveValue: ColorRepository = ColorRepositoryImpl()
}

extension StringRepositoryImpl: @retroactive DependencyKey {
    public static var liveValue: StringRepository = StringRepositoryImpl()
}
