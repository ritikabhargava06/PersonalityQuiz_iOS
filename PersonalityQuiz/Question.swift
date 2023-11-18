//
//  Question.swift
//  PersonalityQuiz
//
//  Created by user248634 on 10/5/23.
//

import Foundation

struct Question{
    var question:String
    var type:ResponseType
    var answers:[Answer]
    
    enum ResponseType{
        case single, multiple, ranged
    }
}
