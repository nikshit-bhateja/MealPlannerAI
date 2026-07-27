//
//  RouteIdentifiable.swift
//  Recipe-AI
//
//  Created by Nikk Bhateja on 20/07/26.
//

// MARK: - RouteIdentifiable
protocol RouteIdentifiable: Equatable, Hashable {
    var key: String { get }
}

// MARK: - Default Equatable
extension RouteIdentifiable {
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.key == rhs.key
    }
}

// MARK: - Default Hashable
extension RouteIdentifiable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(key)
    }
}
