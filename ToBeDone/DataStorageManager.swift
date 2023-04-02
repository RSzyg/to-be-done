//
//  DataStorageManager.swift
//  ToBeDone
//
//  Created by Zhang Yuhao on 2023/4/2.
//

import Foundation

struct DataStorageManager {

    static let shared = DataStorageManager()

    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()

    private init() {}

    func save<T: Codable>(_ object: T, forKey key: String) {
        if let data = try? encoder.encode(object) {
            UserDefaults.standard.set(data, forKey: key)
        }
    }

    func load<T: Codable>(forKey key: String) -> T? {
        if let data = UserDefaults.standard.data(forKey: key) {
            return try? decoder.decode(T.self, from: data)
        }
        return nil
    }
}
