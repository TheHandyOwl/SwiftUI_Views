//
//  ContentView.swift
//  SwiftUI_Views_AlertView
//
//  Created by Carlos on 04/07/2020.
//  Copyright © 2020 TestCompany. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert = false
    
    var alert : Alert {
        Alert(title: Text("My alert"), message: Text("This is a custom alert"), dismissButton: .default(Text("Ok")))
    }
    
    var body: some View {
        Button(action: {
            self.showAlert.toggle()
        }) {
            Text("Push me!")
        }.alert(isPresented: $showAlert, content: { self.alert })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
