//
//  Highscore.swift
//  Know Notes
//
//  Created by ALIA M NEELY on 8/12/17.
//  Copyright © 2017 Wylan. All rights reserved.
//

import Foundation

class HighScore {
    
    var lives: Int
    var score: Int
    var name: String
    
    init(name: String, lives: Int, score: Int) {
        self.name = name
        self.lives = lives
        self.score = score
    }
    var dictionaryRep: [String:Any] {
        return[HighScore.kName: name, HighScore.kLives: lives, HighScore.kScore: score]
    }
    
    var jsonData: Data? {
        let data = try? JSONSerialization.data(withJSONObject: dictionaryRep, options: .prettyPrinted)
        return data
    }
    
    convenience init?(dictionary: [String:Any]) {
        guard let name = dictionary[HighScore.kName] as? String,
            let lives = dictionary[HighScore.kLives] as? Int,
            let score = dictionary[HighScore.kScore] as? Int
            else {return nil}
        self.init(name: name, lives: lives, score: score)
    }
    
    //MARK: - Keys
    
    static fileprivate let kName = "nameKey"
    static fileprivate let kLives = "livesKey"
    static fileprivate let kScore = "scoreKey"
    
    
}
