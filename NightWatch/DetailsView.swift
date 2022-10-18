//
//  DetailsView.swift
//  NightWatch
//
//  Created by BS274 on 18/10/22.
//

import SwiftUI

struct DetailsView: View {
    
    let taskName : String
    
    var body: some View {
        VStack {
            Text(taskName)
            Text("plalceholder description")
            Text("paceholder button")
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(taskName: "Test Task")
    }
}
