//
//  ReportModel.swift
//  RiparianReport
//
//  Created by TLC Loaner on 4/8/23.
//

import Foundation


struct ReportModel: Identifiable {
    
    init(type:String, question:String) {
        self.type = type
        self.question = question
        self.choices = []
        self.answer = ""
        self.answered = false
    }
    
    var id: UUID = UUID()
    var type:String
    var question:String
    var choices:[String]
    var answer:String
    var answered:Bool

    
    func getType() -> String {
        return type
    }
    func getQuestion() -> String {
        return question
    }
    func getChoices() -> [String] {
        return choices
    }
    func getAnswer() -> String {
        return answer
    }
    
    func isAnswered() {
        return isAnswered()
    }
    
    mutating func setChoices(choices:[String]) {
        self.choices = choices
    }
    mutating func setAsnwer(answer:String) {
        self.answer = answer
        self.answered = true
    }
    
}



