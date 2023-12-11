//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Александр Зинин on 18.11.2023.
//

import UIKit

final class ColorViewController: UIViewController {
    
    @IBOutlet weak var multicoloredView: UIView!
    
    @IBOutlet weak var redSliderLabel: UILabel!
    @IBOutlet weak var greenSliderLabel: UILabel!
    @IBOutlet weak var blueSliderLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    weak var delegate: ColorViewControllerDelegate?
    
    var colorView: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        multicoloredView.layer.cornerRadius = 15
        multicoloredView.backgroundColor = colorView
        
        redSlider.value = Float(colorView.rgba.red)
        greenSlider.value = Float(colorView.rgba.green)
        blueSlider.value = Float(colorView.rgba.blue)
        
        redSliderLabel.text = String(format: "%.2f", redSlider.value)
        greenSliderLabel.text = String(format: "%.2f", greenSlider.value)
        blueSliderLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    private func setupMulticoloredView() {
        multicoloredView.backgroundColor = UIColor(
            red: redSlider.value.cgFloat(),
            green: greenSlider.value.cgFloat(),
            blue: blueSlider.value.cgFloat(),
            alpha: 1
        )
    }

    @IBAction func doneAction() {
        delegate?.setColor(multicoloredView.backgroundColor ?? .white)
        dismiss(animated: true)
    }
    
    @IBAction func slidersAction(_ sender: UISlider) {
        setupMulticoloredView()
        
        switch sender {
        case redSlider:
            redSliderLabel.text = String(format: "%.2f", redSlider.value)
        case greenSlider:
            greenSliderLabel.text = String(format: "%.2f", greenSlider.value)
        default:
            blueSliderLabel.text = String(format: "%.2f", blueSlider.value)
        }
    }
}
// MARK: - Float
extension Float {
    func cgFloat() -> CGFloat {
        CGFloat(self)
    }
}
// MARK: - UIColor
extension UIColor {
    var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)

        return (red, green, blue, alpha)
    }
}



