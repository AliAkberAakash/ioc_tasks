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
        NavigationView{
            List{
                Section(
                    header: TaskHeaderView(
                        iconName: "moon.stars",
                        titleText: "Nightly Tasks"
                    )
                ){
                    ForEach(nightlyTasks,id:\.self, content: {
                            taskName in
                        NavigationLink(
                            taskName,
                            destination: DetailsView(taskName: taskName)
                        )
                      }
                    )
                }
                
                Section(header: TaskHeaderView(
                    iconName: "sunrise", titleText: "Weekly Tasks")
            ){
                    ForEach(weeklyTasks,id:\.self, content: {
                            taskName in
                        NavigationLink(taskName, destination: DetailsView(taskName: taskName))
                        }
                    )
                }
                
                Section(
                    header: TaskHeaderView(
                    iconName: "calendar", titleText: "Monthly Tasks")

                ){
                    ForEach(monthlyTasks,id:\.self, content: {
                            taskName in
                        NavigationLink(taskName, destination: DetailsView(taskName: taskName))
                        }
                    )
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
        }
    }
}

struct TaskHeaderView: View {
    
    let iconName: String;
    let titleText: String;
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
            Text(titleText)
        }.font(.title3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
