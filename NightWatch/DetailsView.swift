//
//  DetailsView.swift
//  NightWatch
//
//  Created by BS274 on 18/10/22.
//

import SwiftUI

struct DetailsView: View {
    
    @Binding var task : Task
    
    var body: some View {
        VStack {
            Text(task.name)
            Text("plalceholder description")
            Button("Mark Complete"){
                task.isComplete = true
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    
    static var previews: some View {
        DetailsView(task: Binding<Task>.constant(
            Task(
                name:"Clean floors",
                isComplete: false,
                lastCompleted: nil
            )
        ))
    }
}
