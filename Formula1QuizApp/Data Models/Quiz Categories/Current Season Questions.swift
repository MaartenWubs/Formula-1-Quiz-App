//
//  Current Season Questions.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/6/21.
//

import Foundation

//MARK: -Amount of questions: 5
class CurrentSeasonQuestions {
    public var questions = [
//1.
        Question(ask: "Who won the first Grand Prix in bahrain?",
                 answers: [
                    Answer(answer: "Sebatiaan Vettel", correctness: false),
                    Answer(answer: "Lewis Hamilton", correctness: true),
                    Answer(answer: "Max Verstappen", correctness: false),
                    Answer(answer: "Charles Leclerc", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
//2.
        Question(ask: "How many laps was the Dutch Grand Prix in Zandvoort",
                 answers: [
                    Answer(answer: "70", correctness: false),
                    Answer(answer: "71", correctness: false),
                    Answer(answer: "72", correctness: true),
                    Answer(answer: "73", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
//3.
        Question(ask: "In which corner did Lewis Hamilton and Max Verstappen colide during the British Grand Prix?",
                 answers: [
                    Answer(answer: "Stowe, Corner 15", correctness: false),
                    Answer(answer: "Backetts, Corner 13", correctness: false),
                    Answer(answer: "Abbey, corner 1", correctness: false),
                    Answer(answer: "Copse, Corner 9", correctness: true)
                 ],
                 image: nil,
                 category: "Current Season"),
//4.
        Question(ask: "Which driver completed the highest mileage in 2021 pre-season testing at Bahrain?",
                 answers: [
                    Answer(answer: "Lewis Hamilton", correctness: false),
                    Answer(answer: "Pierre Gasly", correctness: true),
                    Answer(answer: "Max Verstappen", correctness: false),
                    Answer(answer: "Kimi Raikkonen", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
//5.
        Question(ask: "Which circuit hosted the second Grand Prix of the 2021 season?",
                 answers: [
                    Answer(answer: "Baku, Azarbjian", correctness: false),
                    Answer(answer: "Portimao, Portugal", correctness: false),
                    Answer(answer: "Imola, Italy", correctness: true),
                    Answer(answer: "Barcalona, Spain", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season")
    ]
}
