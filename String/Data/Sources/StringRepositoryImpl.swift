//
//  StringRepositoryImpl.swift
//  StringData
//
//  Created by 윤태민(Taemin Yun) on 4/12/25.
//

import StringDomain

public class StringRepositoryImpl: StringRepository {
    public var str1: String { "Hello, " }

    public var str2: String { "World" }

    public var str3: String { "!" }

    public let name: String

    required public init(to name: String) {
        self.name = name
    }
}

