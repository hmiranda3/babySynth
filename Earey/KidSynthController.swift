//
//  SoundController.swift
//  Earey
//
//  Created by Habib Miranda on 11/8/16.
//  Copyright © 2016 littleJohn's. All rights reserved.
//

import Foundation
import AudioKit

class KidSynthController {
    
    /**** NOTE TO KEVIN ****/
    // Sampled this from Mike's "Penthesis" becuse I don't understand sound very well. I also took a look at your "Simple FM", but I couldn't understand a thing Hahaha!
    
    static let sharedInstance = KidSynthController()
    
    let oscillator = AKOscillator()
    var delay: AKDelay
    var echo: AKReverb
    var tb303Filter: AKRolandTB303Filter
    var funkyValue = Double()
    
    init() {
        delay = AKDelay(oscillator)
        echo = AKReverb(delay)
        tb303Filter = AKRolandTB303Filter(echo)
        
        delaySettings()
        filter303Settings()
        reverbSettings()
    }
    
    func filter303Settings() {
        // 2850
        // 660 is lower value and sounds funky. Higher value makes it sound more normal
        // This value will eventually be replaced by "funkyValue" in a slider.
        tb303Filter.cutoffFrequency = 4000
        tb303Filter.resonance = 0.1
    }
    
    func reverbSettings() {
        echo.start()
    }
    
    func delaySettings() {
        delay.time = 0.0
        //between 0 and 5 for feedback
        //this will also be a slider value.
        delay.feedback = 0.0
//        delay.dryWetMix = 0.05
    }
    
    
}
