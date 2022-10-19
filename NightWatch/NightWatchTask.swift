//
//  NightWatchTask.swift
//  NightWatch
//
//  Created by BS274 on 19/10/22.
//

import Foundation

class NightWatchTask: ObservableObject {
    @Published var nightlyTasks = [
        Task(
            name:"Clean floors",
            isComplete: false,
            lastCompleted: nil
        ),
        Task(
            name:"Lock doors",
            isComplete: false,
            lastCompleted: nil
        ),
        Task(
            name:"Turn off lights",
            isComplete: false,
            lastCompleted: nil
        ),
        Task(
            name:"Keep watch",
            isComplete: false,
            lastCompleted: nil
        ),
        Task(
            name:"Monitor night camera",
            isComplete: false,
            lastCompleted: nil
        ),
        Task(
            name:"Walk around the premises",
            isComplete: false,
            lastCompleted: nil
        ),
    ]
    
    @Published var weeklyTasks =  [
        Task(
            name:"Varnish chairs",
            isComplete: false,
            lastCompleted: nil
        ),
        Task(
            name:"Clean the kitchen",
            isComplete: false,
            lastCompleted: nil
        ),
        Task(
            name:"Wash the bathroom",
            isComplete: false,
            lastCompleted: nil
        ),
    ]
    
    @Published var monthlyTasks = [
        Task(
            name:"Trim bushes",
            isComplete: false,
            lastCompleted: nil
        ),
        Task(
            name:"Mow the lawns",
            isComplete: false,
            lastCompleted: nil
        ),
    ]
}
