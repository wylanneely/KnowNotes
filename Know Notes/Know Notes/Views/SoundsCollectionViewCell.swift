//
//  SoundsCollectionViewCell.swift
//  Know Notes
//
//  Created by ALIA M NEELY on 7/21/17.
//  Copyright © 2017 Wylan. All rights reserved.
//

import UIKit

class SoundsCollectionViewCell: UICollectionViewCell {
    
    var cellIndexPath: Int = 0
    
    @IBOutlet weak var soundButton: UIButton!
    @IBAction func soundButtonTapped(_ sender: Any) {
        delegate?.settingButtonChanges(cell: self, selectedValue: cellIndexPath)
        
    }
    
    weak var delegate: SoundCollectioncellDelegate?
    
    
    
}

protocol SoundCollectioncellDelegate: class {
    func settingButtonChanges(cell: SoundsCollectionViewCell, selectedValue: Int)
}
