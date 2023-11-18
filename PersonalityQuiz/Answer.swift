//
//  Answer.swift
//  PersonalityQuiz
//
//  Created by user248634 on 10/5/23.
//

import Foundation

struct Answer{
    var text:String
    var type:AnimalType
    
    enum AnimalType:Character{
        case dog="🐶", cat="😺", rabbit="🐰", turtle="🐢"
        
        var definition:String{
            switch self{
            case .dog:
                return "You are incredibly outgoing. You surround yourself with people you love and enjoy activites with friends."
            case .cat:
                return "Michevious, yet mild-tempered, you enjoy doing things on your own terms."
            case .rabbit:
                return "You love everything that's soft. You are healthy and full of energy."
            case .turtle:
                return "You are wise beyond your years, and you focus on details. Slow and steady wins the race."
            }
        }
    }
}
