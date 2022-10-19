//
//  TaskRowView.swift
//  NightWatch
//
//  Created by BS274 on 19/10/22.
//

import SwiftUI

struct TaskRowView: View {
    let task : Task
    
    var body: some View {
        VStack{
            if(task.isComplete){
                HStack {
                    Image(systemName: "checkmark.square")
                    Text(task.name)
                        .foregroundColor(.gray)
                        .strikethrough()
                }
            }else{
                HStack {
                    Image(systemName: "square")
                    Text(task.name)
                }
            }
        }
    }
}

struct TaskRowView_Previews: PreviewProvider {
    static var previews: some View {
        TaskRowView(task: Task(
            name:"Clean floors",
            isComplete: true,
            lastCompleted: nil
        ))
    }
}
