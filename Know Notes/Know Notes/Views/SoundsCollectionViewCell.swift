//
//  SoundsCollectionViewCell.swift
//  Know Notes
//
//  Created by ALIA M NEELY on 7/21/17.
//  Copyright © 2017 Wylan. All rights reserved.
//

import UIKit

class SoundsCollectionViewCell: UICollectionViewCell {
    
    var isButtonSelected: Bool = false
    var cellIndexPath: Int = 0
    
    weak var delegate: SoundCollectioncellDelegate?

    @IBOutlet weak var soundButton: UIButton!
    @IBOutlet weak var selectedImageState: UIImageView!
    @IBOutlet weak var normalImageState: UIImageView!
    
    func switchButtonStates(){
        if selectedImageState.isHidden == false {
            selectedImageState.isHidden = true
        }else if selectedImageState.isHidden == true {
            selectedImageState.isHidden = false
        }
        if normalImageState.isHidden == true {
           normalImageState.isHidden = false
        } else if normalImageState.isHidden == false {
            normalImageState.isHidden = true
        }
    }

    
    @IBAction func soundButtonTapped(_ sender: Any) {
        delegate?.settingButtonChanges(cell: self, selectedValue: cellIndexPath)
        switchButtonStates()
        InstrumentsController.shared.changeCurrentInstrument(soundIndex: cellIndexPath)
    }
    
    
    
}

protocol SoundCollectioncellDelegate: class {
    func settingButtonChanges(cell: SoundsCollectionViewCell, selectedValue: Int)
}
