//
//  Todo.swift
//  ToBeDone
//
//  Created by Zhang Yuhao on 2023/4/2.
//

import Foundation

struct Todo: Identifiable, Codable {
    var id = UUID()
    var title: String
    var detail: String
    var done: Bool
}
