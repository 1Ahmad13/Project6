//
//  ViewController.swift
//  Adventure(TRY)
//
//  Created by Ahmad Hasan on 10/31/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel1: UILabel!
    
    @IBOutlet weak var Choice1Button: UIButton!
    
    @IBOutlet weak var Choice2Button: UIButton!
    
    @IBOutlet weak var ImageView1: UIImageView!
    
    var storyBrain = QuestionsBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    
    @IBAction func choiceMade1(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
        switch storyBrain.storyNumber{
        case 5: ImageView1.image = #imageLiteral(resourceName: "jeopardy!-3")
            
        case 4: ImageView1.image = #imageLiteral(resourceName: "jeopardy!-4")
        
        case 3: ImageView1.image = #imageLiteral(resourceName: "jeopardy!-3")
            
        case 2: ImageView1.image = #imageLiteral(resourceName: "Untitled design-12")
            
        case 1: ImageView1.image = #imageLiteral(resourceName: "jeopardy!-4")
            
        case 0: ImageView1.image = #imageLiteral(resourceName: "jeopardy!-3")
            
        default: print("error")
        }
    }
    
    
    
    func updateUI() {
        storyLabel1.text = storyBrain.getStoryTitle()
        Choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        Choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }

}

