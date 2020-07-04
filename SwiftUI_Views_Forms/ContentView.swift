//
//  ContentView.swift
//  SwiftUI_Views_Forms
//
//  Created by Carlos on 04/07/2020.
//  Copyright © 2020 TestCompany. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var notificationsEnabled = false
    @State private var darkModeItemId = 0
    
    private var darkModeItems = ["Dark mode", "Day mode"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Settings")) {
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Notifications")
                    }
                    Picker(selection: $darkModeItemId, label: Text("Dark mode options")) {
                        ForEach(0..<darkModeItems.count) {
                            Text(self.darkModeItems[$0])
                        }
                    }
                }
                Section(header: Text("Version")) {
                    HStack {
                        Text("iOS Version")
                        Spacer()
                        Text("iOS 13")
                    }
                }
            }.navigationBarTitle(Text("General settings"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
