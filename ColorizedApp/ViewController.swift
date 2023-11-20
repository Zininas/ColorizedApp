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
        setupSliders()
        setupMulticoloredView()
    }
    
    private func setupMulticoloredView() {
        multicoloredView.layer.cornerRadius = 15
        multicoloredView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setupSliders() {
        redSliderLabel.text = String(format: "%.2f", redSlider.value)
        greenSliderLabel.text = String(format: "%.2f", greenSlider.value)
        blueSliderLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    @IBAction func slidersAction() {
        setupSliders()
        setupMulticoloredView()
    }
}

