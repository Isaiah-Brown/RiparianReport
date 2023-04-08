//
//  HistoryView.swift
//  RiparianReport
//
//  Created by TLC Loaner on 4/8/23.
//

import SwiftUI



struct HistoryView: View {
    var questions:[String] = [
        "3/1/2023",
        "3/2/2023",
        "3/3/2023",
        "4/1/2023",
        "4/2/2023",
        "4/3/2023",
        "5/1/2023",
        "5/2/2023",
        "5/3/2023",
    ]
    var body: some View {
        List(questions, id: \.self) {Text($0)}
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
