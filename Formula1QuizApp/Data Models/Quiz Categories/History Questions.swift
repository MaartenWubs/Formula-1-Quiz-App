//
//  History Questions.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/6/21.
//

import Foundation

//MARK: -Amount of questions 20
class HistoryQuestions {
    public var questions = [
//1.
        Question(ask: "Which team is the longest competing team?",
                 answers: [
                    Answer(answer: "McLaren", correctness: false, textSize: 15),
                    Answer(answer: "RedBull Racing", correctness: false, textSize: 15),
                    Answer(answer: "Scuderia Ferarri", correctness: true, textSize: 15),
                    Answer(answer: "Williams Racing", correctness: false, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//2.
        Question(ask: "When was the first Formula 1 Grand Prix?",
                 answers: [
                    Answer(answer: "May 13, 1950", correctness: true, textSize: 15),
                    Answer(answer: "August 24, 1953", correctness: false, textSize: 15),
                    Answer(answer: "June 16, 1950", correctness: false, textSize: 15),
                    Answer(answer: "September 22, 1951", correctness: false, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//3.
        Question(ask: "Which driver had a fatal crash at the San Marino Grnad Prix in 1994?",
                 answers: [
                    Answer(answer: "Alain Prost", correctness: false, textSize: 15),
                    Answer(answer: "Ayrton Senna", correctness: true, textSize: 15),
                    Answer(answer: "Nikki Lauda", correctness: false, textSize: 15),
                    Answer(answer: "Nigel Mansell", correctness: false, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//4.
        Question(ask: "The Ferrari racing team have won over 200 F1 races. Which Ferrari driver won their 100th victory at the 1990 French Grand Prix?",
                 answers: [
                    Answer(answer: "Michael Schumacher", correctness: false, textSize: 15),
                    Answer(answer: "Rubens Barrichello", correctness: false, textSize: 15),
                    Answer(answer: "Juan Manuel Fangio", correctness: false, textSize: 15),
                    Answer(answer: "Alain Prost", correctness: true, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//5.
        Question(ask: "Fernando Alonso won the F1 World Drivers' Championship in 2005 and 2006. Which team was he driving for?",
                 answers: [
                    Answer(answer: "Renault", correctness: true, textSize: 15),
                    Answer(answer: "Ferrari", correctness: false, textSize: 15),
                    Answer(answer: "McLaren", correctness: false, textSize: 15),
                    Answer(answer: "Minardi", correctness: false, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//6.
        Question(ask: "In the 1976 season Niki Lauda survived a near featal crash, At which track did this occur?",
                 answers: [
                    Answer(answer: "Brands Hatch, Great Britain", correctness: false, textSize: 15),
                    Answer(answer: "Österreichring, Austria", correctness: false, textSize: 15),
                    Answer(answer: "Nurburgring, Germany", correctness: true, textSize: 15),
                    Answer(answer: "Zandvoort, The Netherlands", correctness: false, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//7.
        Question(ask: "Which F1 constructor enters the most races without a win?",
                 answers: [
                    Answer(answer: "Arrows", correctness: true, textSize: 15),
                    Answer(answer: "Tyrrell", correctness: false, textSize: 15),
                    Answer(answer: "Matra", correctness: false, textSize: 15),
                    Answer(answer: "Brawn", correctness: false, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//8.
        Question(ask: "The title 'Grand Prix' was first used for a motor race in which country?",
                 answers: [
                    Answer(answer: "The United States", correctness: false, textSize: 15),
                    Answer(answer: "Germany", correctness: false, textSize: 15),
                    Answer(answer: "Great Britain", correctness: false, textSize: 15),
                    Answer(answer: "France", correctness: true, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//9.
        Question(ask: "How old was Ayrton Senna when he died?",
                 answers: [
                    Answer(answer: "32", correctness: false, textSize: 15),
                    Answer(answer: "33", correctness: false, textSize: 15),
                    Answer(answer: "34", correctness: true, textSize: 15),
                    Answer(answer: "35", correctness: false, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//10.
        Question(ask: "The trio Hamilton, Verstappen, Bottas are the most frequent to grace the top 3 podium. But which is the most frequent PAIR of podium finishers in F1 history?",
                 answers: [
                    Answer(answer: "Hamilton and Rosberg", correctness: false, textSize: 15),
                    Answer(answer: "Prost and Senna", correctness: false, textSize: 15),
                    Answer(answer: "Barrichello and Schumacher", correctness: false, textSize: 15),
                    Answer(answer: "Hamilton and Vettel", correctness: true, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//11.
        Question(ask: "Charles Leclerc took pole position in Monaco 2021 but didn’t start the race thanks to damage sustained from his qualifying crash. How many other drivers have qualified on pole but failed to start in F1?",
                 answers: [
                    Answer(answer: "3", correctness: false, textSize: 15),
                    Answer(answer: "1", correctness: false, textSize: 15),
                    Answer(answer: "2", correctness: false, textSize: 15),
                    Answer(answer: "4", correctness: true, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//12.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//13.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//14.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//15.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//16.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//17.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//18.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//19.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
//20.
        Question(ask: "",
                 answers: [
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15),
                    Answer(answer: "", correctness: false, textSize: 15)
                 ],
                 image: nil,
                 category: "History"),
    ]
}
