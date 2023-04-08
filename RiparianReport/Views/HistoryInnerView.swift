//
//  HistoryInnerView.swift
//  RiparianReport
//
//  Created by TLC Loaner on 4/8/23.
//

import SwiftUI

var answers:[String] = [
    "John Doe",
    "3/1/2023",
    "Lancaster",
    "3 hours",
    "Somewhat, it was mowed",
    "No invasive species",
    "30 Minuets",
    "5",
    "Manure",
    "Deer",
    "No",
    "No",
    "Understood",
]


func setAnswers() -> [ReportModel] {
    var reportModels:[ReportModel] = setUpReportModels()
    for i in 0...reportModels.count - 1 {
        var tmpReport = reportModels[i]
        tmpReport.setAsnwer(answer: answers[i])
        reportModels[i] = tmpReport
    }
    return reportModels
}


struct HistoryInnerRow: View {
    var reportModel: ReportModel
    
    var body: some View {
        VStack {
            Text(reportModel.getQuestion())
            Text(reportModel.getAnswer())
             
        }
    }
}

struct HistoryInnerView: View {
    
    var reportModels = setAnswers()
    
    var body: some View {
        List(reportModels) { reportModel in
            HistoryInnerRow(reportModel: reportModel)
        }.ignoresSafeArea()
    }
}

struct HistoryInnerView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryInnerView()
    }
}
