//
//  Extensions.swift
//  Earey
//
//  Created by Habib Miranda on 11/11/16.
//  Copyright © 2016 littleJohn's. All rights reserved.
//

import Foundation

extension KidSynthViewController {
    
    func playNote(index: Int) {
        oscillator.amplitude = 0.9
        switch index {
        case 0:
            oscillator.frequency = notes.C.rawValue
            oscillator.start()
        case 1:
            oscillator.frequency = notes.Db.rawValue
            oscillator.start()
        case 2:
            oscillator.frequency = notes.D.rawValue
            oscillator.start()
        case 3:
            oscillator.frequency = notes.Eb.rawValue
            oscillator.start()
        case 4:
            oscillator.frequency = notes.E.rawValue
            oscillator.start()
        case 5:
            oscillator.frequency = notes.F.rawValue
            oscillator.start()
        case 6:
            oscillator.frequency = notes.Gb.rawValue
            oscillator.start()
        case 7:
            oscillator.frequency = notes.G.rawValue
            oscillator.start()
        case 8:
            oscillator.frequency = notes.Ab.rawValue
            oscillator.start()
        case 9:
            oscillator.frequency = notes.A.rawValue
            oscillator.start()
        case 10:
            oscillator.frequency = notes.Bb.rawValue
            oscillator.start()
        case 11:
            oscillator.frequency = notes.B.rawValue
            oscillator.start()
        case 12:
            oscillator.frequency = notes.Chi.rawValue
            oscillator.start()
        default:
            oscillator.frequency = 0.0
        }
    }
    
    func releaseNote() {
        oscillator.frequency = 0.0
        oscillator.amplitude = 0.0
    }
}
