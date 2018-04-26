//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Ananth Kolladikkal on 26/04/18.
//  Copyright © 2018 Ananth Kolladikkal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacooltableview: UITableView!

//  Previously used line
//  var emojis = ["😎", "😰", "💩", "😄", "👠", "🐹"]
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.definition = "Smiling Face with Sunglasses!"
        emoji1.category = "Smileys"
        emoji1.birthYear = 2010
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😰"
        emoji2.definition = "Face with Open Mouth and Cold Sweat"
        emoji2.category = "Smileys"
        emoji2.birthYear = 2011
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💩"
        emoji3.definition = "Pile of Poop!"
        emoji3.category = "Smileys"
        emoji3.birthYear = 2010
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😄"
        emoji4.definition = "Grinning Face with Squinted Eyes"
        emoji4.category = "Smileys"
        emoji4.birthYear = 2019
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "👠"
        emoji5.definition = "High-Heeled Shoe"
        emoji5.category = "Things"
        emoji5.birthYear = 2012
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐹"
        emoji6.definition = "A Cute Hamster!"
        emoji6.category = "Animals"
        emoji6.birthYear = 2014
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
    }

}

