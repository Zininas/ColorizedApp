//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Александр Зинин on 18.11.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var multicoloredView: UIView!
    
    @IBOutlet weak var redSliderLabel: UILabel!
    @IBOutlet weak var greenSliderLabel: UILabel!
    @IBOutlet weak var blueSliderLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        multicoloredView.layer.cornerRadius = 15
        redSliderLabel.text = (round((redSlider.value) * 100 ) / 100).formatted()
        greenSliderLabel.text = (round((greenSlider.value) * 100 ) / 100).formatted()
        blueSliderLabel.text = (round((blueSlider.value) * 100 ) / 100).formatted()
    }
    @IBAction func redSliderAction() {
        redSliderLabel.text = (round((redSlider.value) * 100 ) / 100).formatted()
        multicoloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBAction func greenSliderAction() {
        greenSliderLabel.text = (round((greenSlider.value) * 100 ) / 100).formatted()
        multicoloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBAction func blueSliderAction() {
        blueSliderLabel.text = (round((blueSlider.value) * 100 ) / 100).formatted()
        multicoloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}

