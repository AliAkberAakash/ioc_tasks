//
//  ContentView.swift
//  NightWatch
//
//  Created by BS274 on 16/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var nightWatchTask: NightWatchTask
    
    var body: some View {
        NavigationView{
            List{
                Section(
                    header: TaskHeaderView(
                        iconName: "moon.stars",
                        titleText: "Nightly Tasks"
                    )
                ){
                    ForEach($nightWatchTask.nightlyTasks,content: {
                            task in
                        NavigationLink(
                            destination: DetailsView(task: task),
                            label: {
                                TaskRowView(task: task.wrappedValue)
                            }
                        )
                      }
                    )
                }
                
                Section(header: TaskHeaderView(
                    iconName: "sunrise", titleText: "Weekly Tasks")
            ){
                    ForEach($nightWatchTask.weeklyTasks,content: {
                        task in
                        NavigationLink(
                                destination: DetailsView(task: task),
                                label: {
                                    TaskRowView(task: task.wrappedValue)
                                }
                            )
                        }
                    )
                }
                
                Section(
                    header: TaskHeaderView(
                    iconName: "calendar", titleText: "Monthly Tasks")

                ){
                    ForEach($nightWatchTask.monthlyTasks,content: {
                            task in
                            NavigationLink(
                                destination: DetailsView(task: task),
                                label: {
                                    TaskRowView(task: task.wrappedValue)
                                }
                            )
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
        ContentView(nightWatchTask: NightWatchTask())
    }
}
