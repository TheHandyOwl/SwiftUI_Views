//
//  ContentView.swift
//  SwiftUI_Views_ZStack
//
//  Created by Carlos on 04/07/2020.
//  Copyright © 2020 TestCompany. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Text("This text is hidden")
            Color
                .blue
                .edgesIgnoringSafeArea(.all)
            ZStack {
                Color
                    .red
                    .shadow(color: .black, radius: 5, x: 2, y: 2)
                VStack {
                    Spacer()
                    Text("Title:")
                        .frame(width: 200, height: 40, alignment: .leading)
                        .font(Font.system(size: 32, design: .default))
                    Text("Lorem ipsum dolor sit amet")
                        .frame(width: 200, height: 20, alignment: .trailing)
                        .font(Font.system(size: 12, design: .default))
                }
            }.frame(width: 200, height: 200)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
