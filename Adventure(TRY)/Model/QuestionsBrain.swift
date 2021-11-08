//
//  QuestionsBrain.swift
//  Adventure(TRY)
//
//  Created by Ahmad Hasan on 10/31/21.
//

import Foundation

struct QuestionsBrain {
    
    var storyNumber = 0
    
    let stories = [
    Questions(title:"Many Years ago, there lived a brutal and savage King. The King has a different way of dealing with justice in his kingdom. one day, the king discovers that his daughter has fallen in love with sincere young man who is not of royal birth. The king was enaraged by this news and had summoned the young man to the Royal Arena to determine his fate", choice1: "The young man entered the arena ", choice1Destination: 2, choice2: "The young man asked the king to fight for his daughter hand in marriage", choice2Destination: 1),
    
    Questions(title:"The king denied the young man request.", choice1: "The young man was charged with a prison sentence", choice1Destination: 7, choice2: "The young man was given a choice to fight the King's Tiger and if he wins-the king will give him the permission and blessings to marry his daughter ", choice2Destination: 2),
    
    Questions(title:"The young man was set to fight against the Tiger. However, the King does not know that the young man and the tiger know each other.", choice1: "The Tiger did not attack the young man", choice1Destination: 6, choice2: "The Tiger was manipulated by the royal guards", choice2Destination: 11),
    
    Questions(title:"The princess tries to stop the King, in killing her lover and the Tiger. The princess vowed to her father that she will leave the kingdom-if he decided to carry out his decision. ", choice1: "The king did not care and ordered execution", choice1Destination: 6, choice2: "The King agreed under certain conditions", choice2Destination: 8),
    
    Questions(title:"The Princess was able to change the king decision ", choice1: "THE", choice1Destination: 0, choice2: "End", choice2Destination: 0),
    
    Questions(title:"The young man and the tiger was set free. The King gave an order for the young man to leave and stay away from kingdom", choice1: "THE", choice1Destination: 0, choice2: "END", choice2Destination: 0),
    
    Questions(title:"the king killed the young man and the tiger and locked the princess in a room until she gets married from a man who is a royal birth", choice1:"The", choice1Destination: 0, choice2:"End", choice2Destination: 0),
    
    Questions(title:"the princess tries to stop the king from sending her lover to prison ", choice1:"the king refused", choice1Destination: 10, choice2:"the king agreed but under certain conditions", choice2Destination: 8),
    
    Questions(title:"the young man was set free. the king gave an order for the young man to leave and stay away from kingdom.", choice1: "THE", choice1Destination: 0, choice2:"End", choice2Destination: 0),
    
    Questions(title:"the young man and the tiger died and the princess married a birth royal.", choice1: "THE", choice1Destination: 0, choice2:"End", choice2Destination: 0),
    
    Questions(title:"the young man was sent to prison and the princess married a royal birth", choice1: "The", choice1Destination: 0, choice2: "End", choice2Destination: 0),
    
    Questions(title:"The tiger attacked the young man and left him injured", choice1: "the tiger did not care about their friendship and killed the young man", choice1Destination: 12, choice2: "despite the manipulation, the tiger was able to recgonize the young man face", choice2Destination: 6),
    
    Questions(title:"The young man died and the princess married a birth royal", choice1: "The", choice1Destination: 0, choice2: "End", choice2Destination: 0),
    
              
//              Questions(title:"The young man was set to fight against the Tiger. However, the King does not know that the young man and the tiger know each other.", choice1: "The Tiger did not attack the young man", choice1Destination: 5, choice2: "The Tiger and the young man was both killed by the King's Royal Guards", choice2Destination: 9),
    ]
    
    
    
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
