//
//  ContentView.swift
//  NightWatch
//
//  Created by BS274 on 16/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var nightWatchTask: NightWatchTask
    @State private var focusMode = false
    
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
                        if(!focusMode || (focusMode && !task.wrappedValue.isComplete)){
                            NavigationLink(
                                destination: DetailsView(task: task),
                                label: {
                                    TaskRowView(task: task.wrappedValue)
                                }
                            )
                        }
                      }
                    ).onDelete { indexSet in
                        nightWatchTask.nightlyTasks.remove(atOffsets: indexSet)
                    }
                    .onMove { indexSet, newOffset in
                        nightWatchTask.nightlyTasks.move(fromOffsets: indexSet, toOffset: newOffset)
                    }
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
                    ).onDelete { indexSet in
                        nightWatchTask.weeklyTasks.remove(atOffsets: indexSet)
                    }
                    .onMove { indexSet, newOffset in
                        nightWatchTask.weeklyTasks.move(fromOffsets: indexSet, toOffset: newOffset)
                    }
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
                    ).onDelete { indexSet in
                        nightWatchTask.monthlyTasks.remove(atOffsets: indexSet)
                    }
                    .onMove { indexSet, newOffset in
                        nightWatchTask.monthlyTasks.move(fromOffsets: indexSet, toOffset: newOffset)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
            .toolbar {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Reset") {
                        let newTasks = NightWatchTask()
                        nightWatchTask.nightlyTasks = newTasks.nightlyTasks
                        nightWatchTask.weeklyTasks = newTasks.weeklyTasks
                        nightWatchTask.monthlyTasks = newTasks.monthlyTasks
                    }
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Toggle(
                        isOn: $focusMode,
                        label: {
                            Text("Focus Mode")
                        }
                    ).toggleStyle(.switch)
                    
                }
            }
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
