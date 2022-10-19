//
//  Task.swift
//  NightWatch
//
//  Created by BS274 on 18/10/22.
//

import Foundation

struct Task : Identifiable{
    let id = UUID()
    var name: String
    var isComplete: Bool
    var lastCompleted: Date?
}
