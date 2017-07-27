//
//  HomeViewController.swift
//  HW6_State_Jorge
//
//  Created by Jorge Guerra on 6/27/17.
//  Copyright © 2017 Jorge Guerra. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var exploreButton: UIButton!
    
    @IBOutlet weak var flashCardButton: UIButton!
    
    
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
        exploreButton.layer.cornerRadius = 10
        exploreButton.layer.borderWidth = 2
        exploreButton.layer.borderColor = UIColor.black.cgColor
        flashCardButton.layer.cornerRadius = 10
        flashCardButton.layer.borderWidth = 2
        flashCardButton.layer.borderColor = UIColor.black.cgColor
    }
}

   
