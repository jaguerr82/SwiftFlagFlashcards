//
//  CardViewController.swift
//  Asia_Countries_Jorge
//
//  Created by Jorge Guerra on 4/19/17.
//  Copyright © 2017 Jorge Guerra. All rights reserved.
//

import UIKit
import AVFoundation

class CardViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var StateName: UILabel!
    @IBOutlet weak var CapitalName: UILabel!
    @IBOutlet weak var FlagImage: UIImageView!
    @IBOutlet weak var populationLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    
    //MARK: - Properties
    var exploreCardNumber: Int?
    var myCardDeck = CardDeck()
    var cardIsRevealed = false
    var hideSettings = (name: false, flag: false, info: false)
    var sound = AVAudioPlayer()
    
    //MARK: - Overridden Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if exploreCardNumber != nil {
            title = "Explore"
            myCardDeck.cardNumber = exploreCardNumber!
        } else {
            myCardDeck.drawACard()
        }
        updateDisplay()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard exploreCardNumber == nil else {
            return
        }
        
        if cardIsRevealed {
            myCardDeck.drawACard()
            playDrawSound()
        } else {
            playRevealSound()
        }
        cardIsRevealed = cardIsRevealed ? false : true
        updateDisplay()
    }
    
    func updateDisplay() {
        
        if cardIsRevealed || !hideSettings.flag {
            FlagImage.image = UIImage(named: myCardDeck.cardData[myCardDeck.cardNumber].name)
        } else {
            FlagImage.image = UIImage(named: "AaHiddenFlag")
        }
        
        if cardIsRevealed || !hideSettings.name {
            StateName.text = "Name: \(myCardDeck.cardData[myCardDeck.cardNumber].name)"
        } else {
            StateName.text = " "
        }
        if cardIsRevealed || !hideSettings.info {
            CapitalName.text = "Capital: \(myCardDeck.cardData[myCardDeck.cardNumber].capital)"
            populationLabel.text = "Population: \(myCardDeck.cardData[myCardDeck.cardNumber].Population)"
            areaLabel.text = "Area: \(myCardDeck.cardData[myCardDeck.cardNumber].area)"
        } else {
            CapitalName.text = ""
            populationLabel.text = ""
            areaLabel.text = ""
        }
        if hideSettings == (false,false,false){
            cardIsRevealed = true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let thatWebVC = segue.destination as! WebInfoViewController
        thatWebVC.name = myCardDeck.cardData[myCardDeck.cardNumber].name
    }
    //MARK: sound methods
    
    //TODO: - Add Sounds
    
    func playDrawSound() {
        let path = Bundle.main.path(forResource: "draw-card", ofType: "mp3")
        playSound(withPath: path!)
    }
    func playRevealSound() {
        let path = Bundle.main.path(forResource: "reveal", ofType: "mp3")
        playSound(withPath: path!)
    }
    
    func playSound(withPath path: String) {
        
        let soundURL = URL(fileURLWithPath: path)
        do {
            try sound = AVAudioPlayer(contentsOf: soundURL)
            sound.prepareToPlay()
        } catch {
            print("ERROR! Couldn't load sound file")
        }
        sound.play()
    }

}
