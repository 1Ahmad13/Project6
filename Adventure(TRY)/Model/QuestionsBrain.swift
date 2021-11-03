//
//  QuestionsBrain.swift
//  Adventure(TRY)
//
//  Created by Ahmad Hasan on 10/31/21.
//

import Foundation

struct QuestionsBrain {
    
    var storyNumber = 0
    
    let stories = [Questions(title:"start", choice1: "Choice 2", choice1Destination: 2, choice2: "Choice 8", choice2Destination: 1),
                   Questions(title:"a", choice1: "Choice 1", choice1Destination: 2, choice2: "Choice 2", choice2Destination: 3),
                   Questions(title:"b", choice1: "Choice 1", choice1Destination: 5, choice2: "Choice 2", choice2Destination: 4),
                   Questions(title:"c", choice1: "Choice 1", choice1Destination: 0, choice2: "Choice 2", choice2Destination: 0),
                   
                   Questions(title:"d", choice1: "Choice 1", choice1Destination: 0, choice2: "Choice 2", choice2Destination: 0),
                   Questions(title:"e", choice1: "Choice 1", choice1Destination: 0, choice2: "Choice 1", choice2Destination: 0)]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
}
