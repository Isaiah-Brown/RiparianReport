//
//  ContentView.swift
//  RiparianReport
//
//  Created by TLC Loaner on 4/8/23.
//

import SwiftUI

var x = 2

struct ContentView: View {
    var body: some View {
        VStack {
            Button{
                x = 3
            } label: {
                Text("Report").padding(10)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
