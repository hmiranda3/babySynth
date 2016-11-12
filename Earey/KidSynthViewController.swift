//
//  ViewController.swift
//  Earey
//
//  Created by Habib Miranda on 11/6/16.
//  Copyright © 2016 littleJohn's. All rights reserved.
//

import UIKit
import AudioKit

class KidSynthViewController: UIViewController {
    
    
    //MARK: Outlets
    
    @IBOutlet weak var buttonOneView: UIButton!
    @IBOutlet weak var buttonTwoView: UIButton!
    @IBOutlet weak var buttonThreeView: UIButton!
    @IBOutlet weak var buttonFourView: UIButton!
    @IBOutlet weak var buttonFiveView: UIButton!
    @IBOutlet weak var buttonSixView: UIButton!
    @IBOutlet weak var buttonSevenView: UIButton!
    @IBOutlet weak var buttonEightView: UIButton!
    @IBOutlet weak var buttonNineView: UIButton!
    @IBOutlet weak var buttonTenView: UIButton!
    @IBOutlet weak var buttonElevenView: UIButton!
    @IBOutlet weak var buttonTwelveView: UIButton!
    @IBOutlet weak var buttonThirteenView: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let mixer = AKMixer(KidSynthController.sharedInstance.tb303Filter)
        AudioKit.output = mixer
        AudioKit.start()
    }
    
    //MARK: Oscillator
    
    var oscillator = KidSynthController.sharedInstance.oscillator
    
    
    //MARK: Button Pad Actions
    
    @IBAction func buttonOnePressed(_ sender: Any) {
        animateButton(button: buttonOneView)
        playNote(index: 0)
    }
    @IBAction func buttonOneReleased(_ sender: Any) {
        releaseNote()
    }
    @IBAction func buttonOneDrag(_ sender: Any) {
        releaseNote()
    }
    
    @IBAction func buttonTwoPressed(_ sender: Any) {
        animateButton(button: buttonTwoView)
        playNote(index: 1)
    }
    @IBAction func buttonTwoReleased(_ sender: Any) {
       releaseNote()
    }
    @IBAction func buttonTwoDrag(_ sender: Any) {
        releaseNote()
    }
    
    @IBAction func buttonThreePressed(_ sender: Any) {
        animateButton(button: buttonThreeView)
        playNote(index: 2)
    }
    @IBAction func buttonThreeReleased(_ sender: Any) {
        releaseNote()
    }
    @IBAction func buttonThreeDragged(_ sender: Any) {
        releaseNote()
    }
    
    @IBAction func buttonFourPressed(_ sender: Any) {
        animateButton(button: buttonFourView)
        playNote(index: 3)
    }
    @IBAction func buttonFourReleased(_ sender: Any) {
        releaseNote()
    }
    @IBAction func buttonFourDrag(_ sender: Any) {
        releaseNote()
    }
    
    @IBAction func buttonFivePressed(_ sender: Any) {
        animateButton(button: buttonFiveView)
        playNote(index: 4)
    }
    @IBAction func buttonFiveReleased(_ sender: Any) {
        releaseNote()
    }
    @IBAction func buttonFiveDrag(_ sender: Any) {
        releaseNote()
    }
    
    @IBAction func buttonSixPressed(_ sender: Any) {
        animateButton(button: buttonSixView)
        playNote(index: 5)
    }
    @IBAction func buttonSixReleased(_ sender: Any) {
        releaseNote()
    }
    @IBAction func buttonSixDrag(_ sender: Any) {
        releaseNote()
    }
    
    @IBAction func buttonSevenPressed(_ sender: Any) {
        animateButton(button: buttonSevenView)
        playNote(index: 6)
    }
    @IBAction func buttonSevenReleased(_ sender: Any) {
        releaseNote()
    }
    @IBAction func buttonSevenDrag(_ sender: Any) {
        releaseNote()
    }
   
    @IBAction func buttonEightPressed(_ sender: Any) {
        animateButton(button: buttonEightView)
        playNote(index: 7)
    }
    @IBAction func buttonEightReleased(_ sender: Any) {
        releaseNote()
    }
    @IBAction func buttonEightDrag(_ sender: Any) {
        releaseNote()
    }
   
    @IBAction func buttonNinePressed(_ sender: Any) {
        animateButton(button: buttonNineView)
        playNote(index: 8)
    }
    @IBAction func buttonNineReleased(_ sender: Any) {
        releaseNote()
    }
    @IBAction func buttonNineDrag(_ sender: Any) {
        releaseNote()
       
    }
    
    @IBAction func buttonTenPressed(_ sender: Any) {
        animateButton(button: buttonTenView)
        playNote(index: 9)
    }
    @IBAction func buttonTenDrag(_ sender: Any) {
        releaseNote()
    }
    @IBAction func buttonTenReleased(_ sender: Any) {
        releaseNote()
    }
    
    @IBAction func buttonElevenPressed(_ sender: Any) {
        animateButton(button: buttonElevenView)
        playNote(index: 10)
    }
    @IBAction func buttonElevenDrag(_ sender: Any) {
        releaseNote()
    }
    @IBAction func buttonElevenReleased(_ sender: Any) {
        releaseNote()
    }
    
    @IBAction func buttonTwelvePressed(_ sender: Any) {
        animateButton(button: buttonTwelveView)
        playNote(index: 11)
    }
    @IBAction func buttonTwelveDrag(_ sender: Any) {
        releaseNote()
    }
    @IBAction func buttonTwelveReleased(_ sender: Any) {
        releaseNote()
    }
    
    @IBAction func buttonThirteenPressed(_ sender: Any) {
        animateButton(button: buttonThirteenView)
        playNote(index: 12)
    }
    @IBAction func buttonThirteenDrag(_ sender: Any) {
        releaseNote()
    }
    @IBAction func buttonThirteenReleased(_ sender: Any) {
        releaseNote()
    }
    
    
    //MARK: Button Appearance

    
    func animateButton(button: UIButton) {
        button.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: {
            [weak button] in
            button?.transform = .identity
        },
        completion: nil)
    }
}






