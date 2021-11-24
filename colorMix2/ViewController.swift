//
//  ViewController.swift
//  colorMix2
//
//  Created by Lisette Antigua on 11/23/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    
    @IBOutlet weak var colorView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorView.backgroundColor = .black
        updateColor()
    }

    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
    }
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = 1
        }
        if greenSwitch.isOn {
            green = 1
        }
        if blueSwitch.isOn {
            blue = 1
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }}

