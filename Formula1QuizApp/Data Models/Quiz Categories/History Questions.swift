//
//  History Questions.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/6/21.
//

import Foundation

//MARK: -Amount of questions: 1
class HistoryQuestions {
    public var questions = [
//1.
        Question(ask: "Which team is the longest competing team?",
                 answers: [
                    Answer(answer: "McLaren", correctness: false),
                    Answer(answer: "RedBull Racing", correctness: false),
                    Answer(answer: "Scuderia Ferarri", correctness: true),
                    Answer(answer: "Williams Racing", correctness: false)
                 ],
                 image: nil,
                 category: "History")
    ]
}
