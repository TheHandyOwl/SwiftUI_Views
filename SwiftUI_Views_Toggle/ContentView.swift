//
//  ContentView.swift
//  SwiftUI_Views_Toggle
//
//  Created by Carlos on 04/07/2020.
//  Copyright © 2020 TestCompany. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var notificationsEnabled = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $notificationsEnabled) {
                Text("Notifications")
            }.padding()
            
            if notificationsEnabled {
                Text("Notifications are disabled")
            } else {
                Text("Notifications are enabled")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
