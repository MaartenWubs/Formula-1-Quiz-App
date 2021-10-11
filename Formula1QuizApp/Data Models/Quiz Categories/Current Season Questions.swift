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
                 category: "Current Season"),
//6.
        Question(ask: "What was new this season during a Formula 1 weekend?",
                 answers: [
                    Answer(answer: "Drivers were not allowed to walk through the paddock", correctness: false),
                    Answer(answer: "We had sprint qualifing for a couple of races", correctness: true),
                    Answer(answer: "The race was made longer", correctness: false),
                    Answer(answer: "There was no press allowed on track", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
//7.
        Question(ask: "What was the reason that Max Versteppen had to start from the back of the grid in Sochi during the Grand Prix of Russia?",
                 answers: [
                    Answer(answer: "He blocked people during qualifing", correctness: false),
                    Answer(answer: "He dit not do a qualifing run", correctness: false),
                    Answer(answer: "He changed his engine", correctness: true),
                    Answer(answer: "He made a mean comment during press interviews", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
//8.
        Question(ask: "What was so special about the end result in Monza?",
                 answers: [
                    Answer(answer: "It was Lewis Hamilton's 100th Grand Prix victory", correctness: false),
                    Answer(answer: "It was the highest finish for Williams", correctness: false),
                    Answer(answer: "It was the first victory for Carlos Sainz", correctness: false),
                    Answer(answer: "It was McLaren's first 1, 2 finish since a long time", correctness: true)
                 ],
                 image: nil,
                 category: "Current Season"),
//9.
        Question(ask: "Why did Valterie Bottos retire from the Monaco Grand Prix?",
                 answers: [
                    Answer(answer: "The team was unable to get the tire of the car", correctness: true),
                    Answer(answer: "His steering wheel came of the car", correctness: false),
                    Answer(answer: "He had engine problems", correctness: false),
                    Answer(answer: "He crashed into the wall", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
//10.
        Question(ask: "Qualifying For The Azerbaijan GP Equaled The Record For The Most Red Flags In A Qualifying Session, But How Many Were There?",
                 answers: [
                    Answer(answer: "5", correctness: false),
                    Answer(answer: "4", correctness: true),
                    Answer(answer: "7", correctness: false),
                    Answer(answer: "6", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
//11.
        Question(ask: "Redbull used a special livery on the car during the Turkish Grand Prix. Why did they have that livery?",
                 answers: [
                    Answer(answer: "It was Redbulls 500th Grnad Prix", correctness: false),
                    Answer(answer: "", correctness: false),
                    Answer(answer: "It was supposed to be the Japanise Grnad Prix that weekend and they did that as thank you to Honda.", correctness: true),
                    Answer(answer: "", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
//12.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: true),
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
//13.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: true),
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
//14.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: true)
                 ],
                 image: nil,
                 category: "Current Season"),
//15.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: true),
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
//16.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: true),
                    Answer(answer: "", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
//17.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: true),
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
//18.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: true),
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
//19.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
//20.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: false),
                    Answer(answer: "", correctness: false)
                 ],
                 image: nil,
                 category: "Current Season"),
    ]
}
