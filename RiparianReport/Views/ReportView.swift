//
//  ReportView.swift
//  RiparianReport
//
//  Created by TLC Loaner on 4/8/23.
//

import SwiftUI

var questions:[String] = [
    "Your name",
    "Date of Check-up",
    "Site name or location",
    "How much time did you spend at your site for this months check-in?",
    "Did the site look maintained",
    "Any invasive species? If so, indicate which ones:",
    "How much time did you spend doing invasive species removal?",
    "Number of dead trees you marked during this site visit",
    "Signs of livestock in the planting area?",
    "Signs of animal browsing?",
    "Any damage that needs to be further addressed?",
    "Any other comments or concerns?",
    "Any photos to share? Please send them riparianrangers@allianceforthebay.org"
]

var types:[[String]] = [
    ["TEXT"],
    ["DATE"],
    ["TEXT"],
    ["TEXT"],
    ["MULTIPLE_CHOICE", "Yes, mowed and herbicide rings around shelters", "Somewhat, it was mowed", "Somewhat, there were herbicide rings", "No, it did not look maintained"],
    ["TEXT"],
    ["TEXT"],
    ["TEXT"],
    ["MULTIPLE_CHOICE", "Manure", "Livestock hoof prints", "Livestock actively in the buffer", "None"],
    ["MULTIPLE_CHOICE_OTHER", "Deer", "Voles", "None"],
    ["MULTIPLE_CHOICE_OTHER", "No", "Yes, missing stakes", "Yes, missing tubes", "Yes, fencing problems"],
    ["TEXT"],
    ["MULTIPLE_CHOICE", "Understood"],
]



func setUpReportModels() -> [ReportModel]{
    var reportModels:[ReportModel] = []
    for i in 0...questions.count - 1  {
        let mType = types[i][0]
        var tmpReport = ReportModel(type: mType, question: questions[i])
        
        if (mType == "MULTIPLE_CHOICE" || mType == "MULTIPLE_CHOICE_OTHER") {
            let mChoices:[String] = Array(types[i][1...types[i].count - 1])
            tmpReport.setChoices(choices: mChoices)
            
        }
        reportModels.append(tmpReport)
    }
    
    return reportModels
}


struct ReportRow: View {
    var reportModel: ReportModel
    
    var body: some View {
        Text(reportModel.getQuestion())
    }
    
    
}



struct ReportView: View {
    var reportModels = setUpReportModels()
    var body: some View {
        return List(reportModels) { reportModel in
            ReportRow(reportModel: reportModel)
        }
    }
}

struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}
