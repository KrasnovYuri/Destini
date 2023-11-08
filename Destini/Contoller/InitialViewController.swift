//
//  InitialViewController.swift
//  Destini
//
//  Created by Юрий on 07.11.2023.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        
        storyBrain.nextStory(userChoice: userAnswer ?? "")
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.story[storyBrain.storyNumber].title
        
        choice1Button.setTitle(storyBrain.story[storyBrain.storyNumber].choice1, for: .normal)
        
        choice2Button.setTitle(storyBrain.story[storyBrain.storyNumber].choice2, for: .normal)
    }


}
