//
//  ContentView.swift
//  SwiftUI_Views_TabView
//
//  Created by Carlos on 04/07/2020.
//  Copyright © 2020 TestCompany. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabIndex = 0
    
    var body: some View {
        TabView (selection: $tabIndex) {
            emailView().tabItem {
                Text("email")
                Image("email")
            }.tag(0)
            twitterView().tabItem {
                Text("Twitter")
                Image("twitter")
            }.tag(1)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
