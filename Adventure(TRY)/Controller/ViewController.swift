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
        case 12: ImageView1.image = #imageLiteral(resourceName: "34-344450_tiger-and-man-fight")
            storyLabel1.textColor = UIColor.white
            
        case 11: ImageView1.image = #imageLiteral(resourceName: "34-344450_tiger-and-man-fight")
            storyLabel1.textColor = UIColor.white
            
        case 10: ImageView1.image = #imageLiteral(resourceName: "7855003-man-behind-bars")
            storyLabel1.textColor = UIColor.black
            
        case 9: ImageView1.image = #imageLiteral(resourceName: "34-344450_tiger-and-man-fight")
            storyLabel1.textColor = UIColor.white
            
        case 8: ImageView1.image = #imageLiteral(resourceName: "34-344450_tiger-and-man-fight")
            storyLabel1.textColor = UIColor.white
            
        case 7: ImageView1.image = #imageLiteral(resourceName: "7855003-man-behind-bars")
            storyLabel1.textColor = UIColor.black
            
        case 6: ImageView1.image = #imageLiteral(resourceName: "34-344450_tiger-and-man-fight")
            storyLabel1.textColor = UIColor.white
            
        case 5: ImageView1.image = #imageLiteral(resourceName: "34-344450_tiger-and-man-fight")
            storyLabel1.textColor = UIColor.white
            
        case 4: ImageView1.image = #imageLiteral(resourceName: "34-344450_tiger-and-man-fight")
            storyLabel1.textColor = UIColor.white
            
        case 3: ImageView1.image = #imageLiteral(resourceName: "34-344450_tiger-and-man-fight")
            storyLabel1.textColor = UIColor.white
            
        case 2: ImageView1.image = #imageLiteral(resourceName: "34-344450_tiger-and-man-fight")
            storyLabel1.textColor = UIColor.white
            
        case 1: ImageView1.image = #imageLiteral(resourceName: "DENIED!")
            storyLabel1.textColor = UIColor.black
            
        case 0: ImageView1.image = #imageLiteral(resourceName: "kingdom")
            storyLabel1.textColor = UIColor.black
            
        default: print("error")
        }
    }
    
    
    func updateUI() {
        storyLabel1.text = storyBrain.getStoryTitle()
        Choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        Choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }

}

