//
//  InstrumentsController.swift
//  Know Notes
//
//  Created by ALIA M NEELY on 8/2/17.
//  Copyright © 2017 Wylan. All rights reserved.
//

import AVFoundation
import UIKit


class InstrumentsController {
    
    static var shared = InstrumentsController()
    
    var currentInstrument: Instrument?
    var instrumentsArray: [Instrument] {
            //Keep Order Consistent
        return [piano,guitar,violin,electricGuitar,banjo,xylophone]
    }
    
    //This is for when the collectionview button sends its index to set the current instrument
    func changeCurrentInstrument(soundIndex: Int) {
        switch soundIndex {
        case 0:
            self.currentInstrument = piano
        case 1:
            self.currentInstrument = guitar
        case 2:
            self.currentInstrument = violin
        case 3:
            self.currentInstrument = electricGuitar
        case 4:
            self.currentInstrument = banjo
        case 5:
            self.currentInstrument = xylophone
        default:
            self.currentInstrument = piano
        }
    }
    
    var piano: Instrument {
        
        let pianoANoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "a", ofType: "wav")!)
        let pianoBNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "b", ofType: "wav")!)
        let pianoCNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "c", ofType: "wav")!)
        let pianoDNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "d", ofType: "wav")!)
        let pianoENoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "e", ofType: "wav")!)
        let pianoFNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "f", ofType: "wav")!)
        let pianoGNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "g", ofType: "wav")!)
        
        let pianoANote = Note(name: "A Note", path: pianoANoteURL, soundFileExtenstion: "wav")
        let pianoBNote = Note(name: "B Note", path: pianoBNoteURL, soundFileExtenstion: "wav")
        let pianoCNote = Note(name: "C Note", path: pianoCNoteURL, soundFileExtenstion: "wav")
        let pianoDNote = Note(name: "D Note", path: pianoDNoteURL, soundFileExtenstion: "wav")
        let pianoENote = Note(name: "E Note", path: pianoENoteURL, soundFileExtenstion: "wav")
        let pianoFNote = Note(name: "F Note", path: pianoFNoteURL, soundFileExtenstion: "wav")
        let pianoGNote = Note(name: "G Note", path: pianoGNoteURL, soundFileExtenstion: "wav")
        
        // the Notes Array MUST Be Consistent In Order -- note A allways starts at index: 0
        return Instrument(name: "Piano", notes: [pianoANote,pianoBNote,pianoCNote,pianoDNote,pianoENote,pianoFNote,pianoGNote], easyNotes: [pianoANote,pianoCNote,pianoDNote,pianoFNote], selectedImage: #imageLiteral(resourceName: "PianoSelected"), unselectedImage: #imageLiteral(resourceName: "PianoUnselected"))
    }
    
    var violin: Instrument {
        
        let violinANoteUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "violinA", ofType: "wav")!)
        let violinBNoteUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "violinB", ofType: "wav")!)
        let violinCNoteUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "violinC", ofType: "wav")!)
        let violinDNoteUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "violinD", ofType: "wav")!)
        let violinENoteUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "violinE", ofType: "wav")!)
        let violinFNoteUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "violinF", ofType: "wav")!)
        let violinGNoteUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "violinG", ofType: "wav")!)
        
        let violinANote = Note(name: "A Note", path: violinANoteUrl, soundFileExtenstion: "wav")
        let violinBNote = Note(name: "B Note", path: violinBNoteUrl, soundFileExtenstion: "wav")
        let violinCNote = Note(name: "C Note", path: violinCNoteUrl, soundFileExtenstion: "wav")
        let violinDNote = Note(name: "D Note", path: violinDNoteUrl, soundFileExtenstion: "wav")
        let violinENote = Note(name: "E Note", path: violinENoteUrl, soundFileExtenstion: "wav")
        let violinFNote = Note(name: "F Note", path: violinFNoteUrl, soundFileExtenstion: "wav")
        let violinGNote = Note(name: "G Note", path: violinGNoteUrl, soundFileExtenstion: "wav")
        
        return Instrument(name: "Violin", notes: [violinANote,violinBNote,violinCNote,violinDNote,violinENote,violinFNote,violinGNote], easyNotes: [violinANote,violinCNote,violinDNote,violinFNote], selectedImage: #imageLiteral(resourceName: "ViolinSelected"), unselectedImage: #imageLiteral(resourceName: "ViolinUnselected"))
        
    }
    
    var guitar: Instrument {
        let guitarANoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "AMajorGuitarChord", ofType: "wav")!)
        let guitarBNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "BMajorGuitarChord", ofType: "wav")!)
        let guitarCNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "CMajorGuitarChord", ofType: "wav")!)
        let guitarDNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "DMajorGuitarChord", ofType: "wav")!)
        let guitarENoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "EMajorGuitarChord", ofType: "wav")!)
        let guitarFNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "FMajorGuitarChord", ofType: "wav")!)
        let guitarGNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "GMajorGuitarChord", ofType: "wav")!)
        
        let guitarANote = Note(name: "A Chord", path: guitarANoteURL, soundFileExtenstion: "wav")
        let guitarBNote = Note(name: "B Chord", path: guitarBNoteURL, soundFileExtenstion: "wav")
        let guitarCNote = Note(name: "C Chord", path: guitarCNoteURL, soundFileExtenstion: "wav")
        let guitarDNote = Note(name: "D Chord", path: guitarDNoteURL, soundFileExtenstion: "wav")
        let guitarENote = Note(name: "E Chord", path: guitarENoteURL, soundFileExtenstion: "wav")
        let guitarFNote = Note(name: "F Chord", path: guitarFNoteURL, soundFileExtenstion: "wav")
        let guitarGNote = Note(name: "G Chord", path: guitarGNoteURL, soundFileExtenstion: "wav")
        
        return Instrument(name: "Guitar", notes: [guitarANote,guitarBNote,guitarCNote,guitarDNote,guitarENote,guitarFNote,guitarGNote], easyNotes: [guitarANote,guitarBNote,], selectedImage: #imageLiteral(resourceName: "GuitarSelected"), unselectedImage: #imageLiteral(resourceName: "GuitarUnselected"))
        
    }
    
    var electricGuitar: Instrument {
        
        let electricGuitarANoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "ElectricGuitarA", ofType: "wav")!)
        let electricGuitarBNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "ElectricGuitarB", ofType: "wav")!)
        let electricGuitarCNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "ElectricGuitarC", ofType: "wav")!)
        let electricGuitarDNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "ElectricGuitarD", ofType: "wav")!)
        let electricGuitarENoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "ElectricGuitarE", ofType: "wav")!)
        let electricGuitarFNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "ElectricGuitarF", ofType: "wav")!)
        let electricGuitarGNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "ElectricGuitarG", ofType: "wav")!)
        
        let electricGuitarANote = Note(name: "A Chord", path: electricGuitarANoteURL, soundFileExtenstion: "wav")
        let electricGuitarBNote = Note(name: "B Chord", path: electricGuitarBNoteURL, soundFileExtenstion: "wav")
        let electricGuitarCNote = Note(name: "C Chord", path: electricGuitarCNoteURL, soundFileExtenstion: "wav")
        let electricGuitarDNote = Note(name: "D Chord", path: electricGuitarDNoteURL, soundFileExtenstion: "wav")
        let electricGuitarENote = Note(name: "E Chord", path: electricGuitarENoteURL, soundFileExtenstion: "wav")
        let electricGuitarFNote = Note(name: "F Chord", path: electricGuitarFNoteURL, soundFileExtenstion: "wav")
        let electricGuitarGNote = Note(name: "G Chord", path: electricGuitarGNoteURL, soundFileExtenstion: "wav")
        
        return Instrument(name: "Electric Guitar", notes: [electricGuitarANote,electricGuitarBNote,electricGuitarCNote,electricGuitarDNote,electricGuitarENote,electricGuitarFNote,electricGuitarGNote], easyNotes: [electricGuitarANote,electricGuitarCNote,electricGuitarDNote,electricGuitarFNote], selectedImage: #imageLiteral(resourceName: "ElectricGuitarSelected"), unselectedImage: #imageLiteral(resourceName: "ElectricGuitarUnselected"))
   
    }
    // Example PlaceHolder actually banjo
    var banjo: Instrument {
        let guitarANoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "AMajorGuitarChord", ofType: "wav")!)
        let guitarBNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "BMajorGuitarChord", ofType: "wav")!)
        let guitarCNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "CMajorGuitarChord", ofType: "wav")!)
        let guitarDNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "DMajorGuitarChord", ofType: "wav")!)
        let guitarENoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "EMajorGuitarChord", ofType: "wav")!)
        let guitarFNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "FMajorGuitarChord", ofType: "wav")!)
        let guitarGNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "GMajorGuitarChord", ofType: "wav")!)
        
        let guitarANote = Note(name: "A Chord", path: guitarANoteURL, soundFileExtenstion: "wav")
        let guitarBNote = Note(name: "B Chord", path: guitarBNoteURL, soundFileExtenstion: "wav")
        let guitarCNote = Note(name: "C Chord", path: guitarCNoteURL, soundFileExtenstion: "wav")
        let guitarDNote = Note(name: "D Chord", path: guitarDNoteURL, soundFileExtenstion: "wav")
        let guitarENote = Note(name: "E Chord", path: guitarENoteURL, soundFileExtenstion: "wav")
        let guitarFNote = Note(name: "F Chord", path: guitarFNoteURL, soundFileExtenstion: "wav")
        let guitarGNote = Note(name: "G Chord", path: guitarGNoteURL, soundFileExtenstion: "wav")
        
        return Instrument(name: "Guitar", notes: [guitarANote,guitarBNote,guitarCNote,guitarDNote,guitarENote,guitarFNote,guitarGNote], easyNotes: [guitarANote,guitarBNote,], selectedImage: #imageLiteral(resourceName: "BanjoUnPurchasedTest"), unselectedImage: #imageLiteral(resourceName: "Xylophone"))
        
    }
    // Another Placeholder, actually piano
    var xylophone: Instrument {
        
        let pianoANoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "a", ofType: "wav")!)
        let pianoBNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "b", ofType: "wav")!)
        let pianoCNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "c", ofType: "wav")!)
        let pianoDNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "d", ofType: "wav")!)
        let pianoENoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "e", ofType: "wav")!)
        let pianoFNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "f", ofType: "wav")!)
        let pianoGNoteURL = URL(fileURLWithPath: Bundle.main.path(forResource: "g", ofType: "wav")!)
        
        let pianoANote = Note(name: "A Note", path: pianoANoteURL, soundFileExtenstion: "wav")
        let pianoBNote = Note(name: "B Note", path: pianoBNoteURL, soundFileExtenstion: "wav")
        let pianoCNote = Note(name: "C Note", path: pianoCNoteURL, soundFileExtenstion: "wav")
        let pianoDNote = Note(name: "D Note", path: pianoDNoteURL, soundFileExtenstion: "wav")
        let pianoENote = Note(name: "E Note", path: pianoENoteURL, soundFileExtenstion: "wav")
        let pianoFNote = Note(name: "F Note", path: pianoFNoteURL, soundFileExtenstion: "wav")
        let pianoGNote = Note(name: "G Note", path: pianoGNoteURL, soundFileExtenstion: "wav")
        
        return Instrument(name: "Piano", notes: [pianoANote,pianoBNote,pianoCNote,pianoDNote,pianoENote,pianoFNote,pianoGNote], easyNotes: [pianoANote,pianoCNote,pianoDNote,pianoFNote], selectedImage: #imageLiteral(resourceName: "Xylophone"), unselectedImage: #imageLiteral(resourceName: "BanjoUnPurchasedTest"))
    }
    
    
    
}
