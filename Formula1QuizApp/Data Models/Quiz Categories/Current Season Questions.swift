//
//  Current Season Questions.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/6/21.
//

import Foundation

class CurrentSeasonQuestions {
    public var questions = [
        
        Question(ask: "Who won the first Grand Prix in bahrain?",
                 answers: [
                    Answer(answer: "Sebatiaan Vettel", correctness: false),
                    Answer(answer: "Lewis Hamilton", correctness: true),
                    Answer(answer: "Max Verstappen", correctness: false),
                    Answer(answer: "Charles Leclerc", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
        
        Question(ask: "How many laps was the Dutch Grand Prix in Zandvoort",
                 answers: [
                    Answer(answer: "70", correctness: false),
                    Answer(answer: "71", correctness: false),
                    Answer(answer: "72", correctness: true),
                    Answer(answer: "73", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season")
    ]
}
