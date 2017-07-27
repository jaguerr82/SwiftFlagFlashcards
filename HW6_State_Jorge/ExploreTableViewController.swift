//
//  ExploreTableViewController.swift
//  HW6_State_Jorge
//
//  Created by Jorge Guerra on 6/26/17.
//  Copyright © 2017 Jorge Guerra. All rights reserved.
//

import UIKit

class ExploreTableViewController: UITableViewController {

    let thisCardDeck = CardDeck()
        
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return thisCardDeck.cardData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! ListTableViewCell
      
        cell.nameLabel.text = thisCardDeck.cardData[indexPath.row].name
        cell.flagImage.image = UIImage(named: thisCardDeck.cardData[indexPath.row].name)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "TableToCard", sender: indexPath.row)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! CardViewController
        destVC.exploreCardNumber = sender as? Int
    }
}
