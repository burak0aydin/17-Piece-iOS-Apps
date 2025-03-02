//
//  ViewController.swift
//  WidgetExample
//
//  Created by Burak Aydın on 17.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var mSwitch: UISwitch!
    @IBOutlet weak var textLabelSwitch: UILabel!
    @IBOutlet weak var segmentedController: UISegmentedControl!
    @IBOutlet weak var textLabelSegmented: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textLabelSlider: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var textLabelStepper: UILabel!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TextField
        if let receivedData = textField.text {
            textLabel.text = receivedData
        }
        
        //Switch
        textLabelSwitch.text = String(mSwitch.isOn).firstUppercased
        
        //Segmented Controller
        let selectedIndex = segmentedController.selectedSegmentIndex
        let selectedCategory = segmentedController.titleForSegment(at: selectedIndex)
        textLabelSegmented.text = selectedCategory
        
        //Slider
        textLabelSlider.text = String(Int(slider.value))
        
        //Stepper
        textLabelStepper.text = String(Int(stepper.value))
        
        //indicator
        indicator.isHidden = true
    }
    
    @IBAction func showButon(_ sender: Any) {
        if let receivedData = textField.text {
            textLabel.text = receivedData
        }
    }
    
    @IBAction func happButton(_ sender: Any) {
        imageView.image = UIImage(named: "happy")
        imageView.tintColor = UIColor.systemGreen    }
    
    @IBAction func sadButton(_ sender: Any) {
        imageView.image = UIImage(named: "sad")
        imageView.tintColor = UIColor.systemRed


    }
    @IBAction func `switch`(_ sender: UISwitch) {
        if sender.isOn {
            textLabelSwitch.text = String(mSwitch.isOn).firstUppercased
        } else {
            textLabelSwitch.text = String(mSwitch.isOn).firstUppercased
        }
    }

    @IBAction func segmentedAction(_ sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        let selectedCategory = sender.titleForSegment(at: selectedIndex)
        textLabelSegmented.text = selectedCategory
    }
    
    
    @IBAction func sliderAction(_ sender: UISlider) {
        textLabelSlider.text = String(Int(sender.value))
        
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        textLabelStepper.text = String(Int(sender.value))
    }
    
    
    @IBAction func startButton(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    @IBAction func stopButtton(_ sender: Any) {
        indicator.isHidden = true
        indicator.stopAnimating()
    }
    
    @IBAction func scrollViewPage(_ sender: Any) {
    }
}

// capitalize the first letter
extension StringProtocol {
    var firstUppercased: String {
        prefix(1).uppercased() + dropFirst()
    }
}
