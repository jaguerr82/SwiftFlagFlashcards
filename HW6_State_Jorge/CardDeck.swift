//
//  CardDeck.swift
//  HW6_State_Jorge
//
//  Created by Jorge Guerra on 6/21/17.
//  Copyright © 2017 Jorge Guerra. All rights reserved.
//

import Foundation

struct CardDeck {
    var priorCardNum = 0
    var cardNumber = 0
    
    let cardData = [(name: "Afghanistan", capital: "Kabul", Population:"32.53 million", area: "252,000 sq mi"),
                    (name: "Armenia", capital: "Yerevan", Population:"3.018 million", area: "11,484 sq mi"),
                    (name: "Azerbaijan", capital: "Baku", Population:"9.824 million", area: "33,400 sq mi"),
                    (name: "Bahrain", capital: "Manama", Population:"1.378 million", area: "295 sq mi"),
                    (name: "Bangladesh", capital: "Dhaka", Population:"161 million", area: "56,990 sq mi"),
                    (name: "Bhutan", capital: "Thimphu", Population:"743 thousand", area: "14,824 sq mi"),
                    (name: "Brunei", capital: "Bandar Seri Begawan", Population:"90 thousand", area: "2,875 sq mi"),
                    (name: "Cambodia", capital: "Dhaka", Population:"417 thousand", area: "2,226 sq mi"),
                    (name: "China", capital: "Beijing", Population:"1.371 billion", area: "3,705,407 sq mi"),
                    (name: "Cyprus", capital: "Nicosia", Population:"1.141 million", area: "320 sq mi"),
                    (name: "Georgia", capital: "Tbilisi", Population:"3.720 million", area: "26,900 sq mi"),
                    (name: "India", capital: "New Delhi", Population:"1.327 billion", area: "1,269,219 sq mi"),
                    (name: "Indonesia", capital: "Jakarta", Population:"263.51 million", area: "735,358 sq mi"),
                    (name: "Iran", capital: "Tehran", Population:"79.926 million", area: "636,372 sq mi"),
                    (name: "Iraq", capital: "Bagdad", Population:"38.146 million", area: "168,754 sq mi"),
                    (name: "Israel", capital: "Jerusalem", Population:"8.706 million", area: "8,019–8,522 sq mi"),
                    (name: "Japan", capital: "Tokyo", Population:"126.730 million", area: "145,936 sq mi"),
                    (name: "Jordan", capital: "Amman", Population:"9.916 million", area: "34,495 sq mi"),
                    (name: "Kazakhstan", capital: "Astana", Population:"18.051 million", area: "1,052,100 sq mi"),
                    (name: "Kuwait", capital: "Kuwait City", Population:"4.348 million", area: "6,880 sq mi"),
                    (name: "Kyrgyzstan", capital: "Bishkek", Population:"6.019 million", area: "77,202 sq mi"),
                    (name: "Laos", capital: "Vientiane", Population:"6.804 million", area: "91,875 sq mi"),
                    (name: "Lebanon", capital: "Beirut", Population:"6.185 million", area: "4,036 sq mi"),
                    (name: "Malaysia", capital: "Kuala Lumpur", Population:"31.551 million", area: "127,724 sq mi"),
                    (name: "Maldives", capital: "Malé", Population:"393,253 thousand", area: "115 sq mi"),
                    (name: "Mongolia", capital: "Ulaanbaatar", Population:"3.082 million", area: "605,000 sq mi"),
                    (name: "Myanmar", capital: "Naypyidaw", Population:"51.486 million", area: "261,228 sq mi"),
                    (name: "Nepal", capital: "Kathmandu", Population:"26.495 million", area: "56,827 sq mi"),
                    (name: "North Korea", capital: "Pyongyang", Population:"25.155 million", area: "46,540 sq mi"),
                    (name: "Oman", capital: "Muscat", Population:"4,573 million", area: "119,500 sq mi"),
                    (name: "Pakistan", capital: "Islamabad", Population:"202 million", area: "340,509 sq mi"),
                    (name: "Palestine", capital: "East Jerusalem", Population:"4.7 million", area: "Unknown"),
                    (name: "Philippines", capital: "Manila", Population:"100.981 million", area: "120,000 sq mi"),
                    (name: "Qatar", capital: "Doha", Population:"2.675 million", area: "4,471 sq mi"),
                    (name: "Russia", capital: "Moscow", Population:"144.463 million", area: "6,592,800 sq mi"),
                    (name: "Saudi Arabia", capital: "Riyadh", Population:"33.0 million", area: "830,000 sq mi"),
                    (name: "Singapore", capital: "Singapore", Population:"5.607 million", area: "278 sq mi"),
                    (name: "South Korea", capital: "Seoul", Population:"51.446 million", area: "38,690 sq m"),
                    (name: "Sri Lanka", capital: "Sri Jayawardenepura Kotte", Population:"921.203 million", area: "25,330 sq mi"),
                    (name: "Syria", capital: "Damascus", Population:"17.065 million", area: "71,500 sq mi"),
                    (name: "Taiwan", capital: "Taipei", Population:"23.520 million", area: "13,974 sq mi"),
                    (name: "Tajikistan", capital: "Dushanbe", Population:"8.610 million", area: "55,300 sq mi"),
                    (name: "Thailand", capital: "Bangkok", Population:"67.959 million", area: "198,120 sq mi"),
                    (name: "Timor-Leste", capital: "Dili", Population:"1.167 million", area: "5,950 sq mi"),
                    (name: "Turkey", capital: "Ankara", Population:"79.815 million", area: "302,455 sq mi"),
                    (name: "Turkmenistan", capital: "Ashgabat", Population:"5.172 million", area: "189,660 sq mi"),
                    (name: "United Arab Emirates", capital: "Abu Dhabi", Population:"10.139 million", area: "32,300 sq mi"),
                    (name: "Uzbekistan", capital: "Tashkent", Population:"32.121 million", area: "173,351 sq mi"),
                    (name: "Vietnam", capital: "Hanoi", Population:"92.700 million", area: "128,455 sq mi"),
                    (name: "Yemen", capital: "Sana'a", Population:"25.408 million", area: "194,553 sq mi"),
                    ]
    
    mutating func drawACard() {
        
        cardNumber = priorCardNum
        while cardNumber == priorCardNum {
            cardNumber = Int(arc4random_uniform(50))
        }
        priorCardNum = cardNumber
    }
    
    
}
