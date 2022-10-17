//
//  ContentView.swift
//  NightWatch
//
//  Created by BS274 on 16/10/22.
//

import SwiftUI

struct ContentView: View {
    
    var nightlyTasks = [
        "Clean floors",
        "Lock doors",
        "Turn off lights",
        "Keep watch",
        "Monitor night camera",
        "Walk around the premises",
    ]
    
    var weeklyTasks =  [
        "Clean the kitchen",
        "Wash the bathroom",
        "Varnish chairs",
    ]
    
    var monthlyTasks = [
        "Trim bushes",
        "Mow the lawns"
    ]
    
    var body: some View {
        List{
            Section(header: HStack {
                Image(systemName: "moon.stars")
                Text("Nightly Tasks")
            }.font(.title3)
            ){
                ForEach(nightlyTasks,id:\.self, content: {
                        taskName in
                        Text(taskName)
                    }
                )
            }
            
            Section(header: HStack {
                Image(systemName: "sunrise")
                Text("Weekly Tasks")
            }.font(.title3)
            ){
                ForEach(weeklyTasks,id:\.self, content: {
                        taskName in
                        Text(taskName)
                    }
                )
            }
            
            Section(header: HStack {
                Image(systemName: "calendar")
                Text("Monthly Tasks")
            }.font(.title3)
            ){
                ForEach(monthlyTasks,id:\.self, content: {
                        taskName in
                        Text(taskName)
                    }
                )
            }
        }.listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
