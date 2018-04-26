//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Ananth Kolladikkal on 26/04/18.
//  Copyright © 2018 Ananth Kolladikkal. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        emojiLabel.text = emoji
        
        if emoji == "😎" {
            definitionLabel.text = "Smiling Face with Sunglasses!"
        }
        if emoji == "😰" {
            definitionLabel.text = "Face with Open Mouth and Cold Sweat"
        }
        if emoji == "💩" {
            definitionLabel.text = "Pile of Poop"
        }
        if emoji == "😄" {
            definitionLabel.text = "Grinning Face with Squinted Eyes"
        }
        if emoji == "👠" {
            definitionLabel.text = "High-Heeled Shoe"
        }
        if emoji == "🐹" {
            definitionLabel.text = "A Cute Hamster"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
