//
//  MainViewController.swift
//  ColorizedApp
//
//  Created by Александр Зинин on 08.12.2023.
//

import UIKit

protocol ColorViewControllerDelegate: AnyObject {
    func setColor(_ color: UIColor)
}

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorVC = segue.destination as? ColorViewController else { return }
        colorVC.colorView = view.backgroundColor
        colorVC.delegate = self
    }
}
extension MainViewController: ColorViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
    

