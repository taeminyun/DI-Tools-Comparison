//
//  StringRepository.swift
//  DIExample
//
//  Created by 윤태민(Taemin Yun) on 4/12/25.
//

public protocol StringRepository {
    var str1: String { get }
    var str2: String { get }
    var str3: String { get }
    var name: String { get }

    init(to name: String)
}

