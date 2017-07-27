//
//  WebInfoViewController.swift
//  HW6_State_Jorge
//
//  Created by Jorge Guerra on 6/22/17.
//  Copyright © 2017 Jorge Guerra. All rights reserved.
//

import UIKit

class WebInfoViewController: UIViewController {
    @IBOutlet weak var myWebView: UIWebView!
    var name = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var wikiUrlString = "https://en.wikipedia.org/wiki/" + name
        wikiUrlString = wikiUrlString.replacingOccurrences(of: " ", with: "_")
        if let wikiurl = URL(string: wikiUrlString){
            myWebView.loadRequest(URLRequest(url: wikiurl))
        }
        
    }
    
    
}
