//
//  ContentView.swift
//  SwiftUI_Views_Images
//
//  Created by Carlos on 04/07/2020.
//  Copyright © 2020 TestCompany. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image("placeholder")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .shadow(color: .orange, radius: 8)
                .overlay(Circle()
                    .stroke(Color.red, lineWidth: 3))
                .padding()
                .overlay(Text("Placeholder image")
                    .foregroundColor(.blue)
                    .font(Font.system(size: 16, weight: .thin, design: .default)), alignment: .bottomTrailing)
            Divider()
            Image(systemName: "icloud.and.arrow.down")
            Divider()
            Image(systemName: "message.fill")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
