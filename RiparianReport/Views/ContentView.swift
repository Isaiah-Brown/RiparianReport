//
//  ContentView.swift
//  RiparianReport
//
//  Created by TLC Loaner on 4/8/23.
//

import SwiftUI

var x = 2

struct ContentView: View {
    
    @State private var path = NavigationPath()
    var body: some View {
        NavigationStack (path: $path) {
            HStack {
                Button{
                    print("button pressed")
                    path.append("ReportView")
                } label: {
                    Text("Report").padding(10)
                }
                .padding()
                Button{
                    print("button pressed")
                    path.append("HistoryView")
                } label: {
                    Text("View Previous").padding(10)
                }
                .padding()
            }
            .navigationDestination(for: String.self) { view in
                if view == "ReportView" {
                    ReportView()
                } else if view == "HistoryView"{
                    HistoryView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
