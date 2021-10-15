//
//  Data Models.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/6/21.
//

import Foundation
import UIKit

struct Question {
    let ask: String
    let answers: [Answer]
    let image: String?
    let category: String
}

struct Answer {
    let answer: String
    let correctness: Bool
}
