//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by 陸影 on 2022/01/25.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let question : String
    let answer: String
    
    init(q: String, a: String) {
        question = q
        answer = a
    }
}
