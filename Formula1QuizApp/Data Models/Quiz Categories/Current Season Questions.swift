//
//  Current Season Questions.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/6/21.
//

import Foundation

//MARK: -Amount of questions: 20
class CurrentSeasonQuestions {
    public var questions = [
//1.
        Question(ask: "Who won the first Grand Prix in bahrain?",
                 answers: [
                    Answer(answer: "Sebatiaan Vettel",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Lewis Hamilton",
                           correctness: true,
                           textSize: 15),
                    Answer(answer: "Max Verstappen",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Charles Leclerc",
                           correctness: false,
                           textSize: 15)
                 ],
                 image: "bahrain-start",
                 category: "Current Season"),
//2.
        Question(ask: "How many laps was the Dutch Grand Prix in Zandvoort",
                 answers: [
                    Answer(answer: "70",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "71",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "72",
                           correctness: true,
                           textSize: 15),
                    Answer(answer: "73",
                           correctness: false,
                           textSize: 15)
                 ],
                 image: "dutch-gp",
                 category: "Current Season"),
//3.
        Question(ask: "In which corner did Lewis Hamilton and Max Verstappen colide during the British Grand Prix?",
                 answers: [
                    Answer(answer: "Stowe, Corner 15",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Backetts, Corner 13",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Abbey, corner 1",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Copse, Corner 9",
                           correctness: true,
                           textSize: 15)
                 ],
                 image: "max-lewis-silverstone",
                 category: "Current Season"),
//4.
        Question(ask: "Which driver completed the highest mileage in 2021 pre-season testing at Bahrain?",
                 answers: [
                    Answer(answer: "Lewis Hamilton",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Pierre Gasly",
                           correctness: true,
                           textSize: 15),
                    Answer(answer: "Max Verstappen",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Kimi Raikkonen",
                           correctness: false,
                           textSize: 15)
                 ],
                 image: nil,
                 category: "Current Season"),
//5.
        Question(ask: "Which circuit hosted the second Grand Prix of the 2021 season?",
                 answers: [
                    Answer(answer: "Baku, Azarbjian",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Portimao, Portugal",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Imola, Italy",
                           correctness: true,
                           textSize: 15),
                    Answer(answer: "Barcalona, Spain",
                           correctness: false,
                           textSize: 15)
                 ],
                 image: nil,
                 category: "Current Season"),
//6.
        Question(ask: "What was new this season during a Formula 1 weekend?",
                 answers: [
                    Answer(answer: "Drivers were not allowed to walk through the paddock",
                           correctness: false,
                           textSize: 10),
                    Answer(answer: "We had sprint qualifing for a couple of races",
                           correctness: true,
                           textSize: 12),
                    Answer(answer: "The race was made longer",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "There was no press allowed on track",
                           correctness: false,
                           textSize: 12)
                 ],
                 image: nil,
                 category: "Current Season"),
//7.
        Question(ask: "What was the reason that Max Versteppen had to start from the back of the grid in Sochi during the Grand Prix of Russia?",
                 answers: [
                    Answer(answer: "He blocked people during qualifing",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "He dit not do a qualifing run",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "He changed his engine",
                           correctness: true,
                           textSize: 15),
                    Answer(answer: "He made a mean comment during press interviews",
                           correctness: false,
                           textSize: 12)
                 ],
                 image: nil,
                 category: "Current Season"),
//8.
        Question(ask: "What was so special about the end result in Monza?",
                 answers: [
                    Answer(answer: "It was Lewis Hamilton's 100th Grand Prix victory",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "It was the highest finish for Williams",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "It was the first victory for Carlos Sainz",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "It was McLaren's first 1, 2 finish since a long time",
                           correctness: true,
                           textSize: 12)
                 ],
                 image: nil,
                 category: "Current Season"),
//9.
        Question(ask: "Why did Valterie Bottos retire from the Monaco Grand Prix?",
                 answers: [
                    Answer(answer: "The team was unable to get the tire of the car",
                           correctness: true,
                           textSize: 15),
                    Answer(answer: "His steering wheel came of the car",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "He had engine problems",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "He crashed into the wall",
                           correctness: false,
                           textSize: 15)
                 ],
                 image: nil,
                 category: "Current Season"),
//10.
        Question(ask: "Qualifying For The Azerbaijan GP Equaled The Record For The Most Red Flags In A Qualifying Session, But How Many Were There?",
                 answers: [
                    Answer(answer: "5",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "4",
                           correctness: true,
                           textSize: 15),
                    Answer(answer: "7",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "6",
                           correctness: false,
                           textSize: 15)
                 ],
                 image: nil,
                 category: "Current Season"),
//11.
        Question(ask: "Redbull used a special livery on the car during the Turkish Grand Prix. Why did they have that livery?",
                 answers: [
                    Answer(answer: "It was Redbulls 500th Grnad Prix",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Because they liked it",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "They did that as thank you to Honda.",
                           correctness: true,
                           textSize: 15),
                    Answer(answer: "",
                           correctness: false,
                           textSize: 15)
                 ],
                 image: nil,
                 category: "Current Season"),
//12.
        Question(ask: "Lewis Hamilton Took His 100th Career Pole In F1 This Year, But At What Circuit?",
                 answers: [
                    Answer(answer: "Hungary",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Spain",
                           correctness: true,
                           textSize: 15),
                    Answer(answer: "Monaco",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "France",
                           correctness: false,
                           textSize: 15)
                 ],
                 image: nil,
                 category: "Current Season"),
//13.
        Question(ask: "How Many Positions Did Fernando Alonso Move Up In The Final Two Lap Sprint At The Azerbaijan Grand Prix?",
                 answers: [
                    Answer(answer: "4",
                           correctness: true,
                           textSize: 15),
                    Answer(answer: "5",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "3",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "6",
                           correctness: false,
                           textSize: 15)
                 ],
                 image: nil,
                 category: "Current Season"),
//14.
        Question(ask: "Who Was The First Driver Who Wasn’t Max Verstappen Or Lewis Hamilton To Finish In Second Place This Season?",
                 answers: [
                    Answer(answer: "Lando Norris",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Sebastiaan Vettel",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Valtteri Bottas",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Carlos Sainz",
                           correctness: true,
                           textSize: 15)
                 ],
                 image: nil,
                 category: "Current Season"),
//15.
        Question(ask: "Hamilton achieved a number of things with victory in Bahrain. Which one of the below statements is correct?",
                 answers: [
                    Answer(answer: "He took the 200th GP victory for a British driver",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "He won the opening race of the year for the first time since 2015",
                           correctness: true,
                           textSize: 15),
                    Answer(answer: "He moved into second in the all-time laps led list behind Michael Schumacher",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "He took his 50th win for Mercedes",
                           correctness: false,
                           textSize: 15)
                 ],
                 image: nil,
                 category: "Current Season"),
//16.
        Question(ask: "With Hamilton’s victory over Max Verstappen in Bahrain, Mercedes extended their championship-leading streak. When did this latest leading streak begin?",
                 answers: [
                    Answer(answer: "Abu Dhabi 2016",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Turkey 2020",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Germany 2018",
                           correctness: true,
                           textSize: 15),
                    Answer(answer: "Great Britain 2019",
                           correctness: false,
                           textSize: 15)
                 ],
                 image: nil,
                 category: "Current Season"),
//17.
        Question(ask: "#44 driver Lewis Hamilton left Imola with 44 points, but what was his championship lead?",
                 answers: [
                    Answer(answer: "2 points",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "1 point",
                           correctness: true,
                           textSize: 15),
                    Answer(answer: "4 points",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "3 points",
                           correctness: false,
                           textSize: 15)
                 ],
                 image: nil,
                 category: "Current Season"),
//18.
        Question(ask: "Fernando Alonso scored P8 in Portugal this season for his best result since Singapore 2018, but how did he fare at the start of the 2021 Portuguese GP?",
                 answers: [
                    Answer(answer: "Lost 2 places",
                           correctness: true,
                           textSize: 15),
                    Answer(answer: "Gained 2 places",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Gained 5 places",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Lost 5 places",
                           correctness: false,
                           textSize: 15)
                 ],
                 image: nil,
                 category: "Current Season"),
//19.
        Question(ask: "Hamilton converted pole #100 to victory in Spain, making this his best start to a season after four races since…",
                 answers: [
                    Answer(answer: "2013",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "2008",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "2018",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Ever",
                           correctness: true,
                           textSize: 15)
                 ],
                 image: nil,
                 category: "Current Season"),
//20.
        Question(ask: "Who led the most laps in Spain?",
                 answers: [
                    Answer(answer: "Bottas",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Verstappen",
                           correctness: true,
                           textSize: 15),
                    Answer(answer: "Hamilton",
                           correctness: false,
                           textSize: 15),
                    Answer(answer: "Leclerc",
                           correctness: false,
                           textSize: 15)
                 ],
                 image: nil,
                 category: "Current Season"),
    ]
}
