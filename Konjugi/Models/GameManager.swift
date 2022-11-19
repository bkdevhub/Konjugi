//
//  gameManager.swift
//  Konjugi
//
//  Created by Björn Viehmann on 18.05.22.
//

import Foundation
import SwiftUI

class GameManager: ObservableObject {
    @Published var currentConjugationTask: ConjugationTask
    @Published var gameFinished = false
    @Published var score: Int = 0
    @Published var conjugationProgressInformation: String = ""
    
    private let dataService: ConjugationDataService = MockAPI()
    private var conjugationTasks: [ConjugationTask]
    private var currentIndex = 0
    
    var conjugationsCount: Int {
        conjugationTasks.count
    }
    
    var currentConjugationDisplayIndex: Int {
        currentIndex + 1
    }
    
    init(){
        self.conjugationTasks = dataService.getConjugationTasks()
        self.currentConjugationTask = conjugationTasks[0]
        
        setConjugationProgressInformation()
    }
    
    func restartGame() {
        resetGameStates()
        
        conjugationTasks = dataService.getConjugationTasks()
        currentConjugationTask = conjugationTasks[0]
        setConjugationProgressInformation()
    }
    
    func resetGameStates() {
        conjugationTasks.removeAll()
        currentIndex = 0
        gameFinished = false
        score = 0
        
        setConjugationProgressInformation()
    }
    
    func nextConjugation(){
        setCurrentConjungationTask()
        setConjugationProgressInformation()
    }
    
    private func setCurrentConjungationTask(){
        guard nextConjugationExists() else {
            gameFinished = true
            return
        }
        
        currentIndex += 1
        currentConjugationTask = conjugationTasks[currentIndex]
    }
    
    private func nextConjugationExists() -> Bool {
        return currentIndex < conjugationTasks.count-1
    }
    
    private func setConjugationProgressInformation() {
        conjugationProgressInformation = "\(currentConjugationDisplayIndex) von \(conjugationsCount)"
    }
    
    func selectAnswer(answer: Answer) {
        guard !answer.isSelected else { return }
        
        if answer.isCorrectAnswer{
            increaseScoreByOne()
        }

        currentConjugationTask.selectAllAnswers()
    }
    
    private func increaseScoreByOne(){
        score += 1
    }
}
