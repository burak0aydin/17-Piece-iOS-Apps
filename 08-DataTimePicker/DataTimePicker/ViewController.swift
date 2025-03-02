//
//  ViewController.swift
//  DataTimePicker
//
//  Created by Burak Aydın on 20.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    
    var timePicker : UIDatePicker?
    var datePicker : UIDatePicker?

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        dateTextField.inputView = datePicker
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        timeTextField.inputView = timePicker
        
        datePicker?.addTarget(self, action: #selector(showSelectedDate(uiDatePicker: )), for: .valueChanged)
        
        timePicker?.addTarget(self, action: #selector(showSelectedTime(uiDatePicker: )), for: .valueChanged)
        
        if #available(iOS 13.4, *) {
            datePicker?.preferredDatePickerStyle = .wheels
            timePicker?.preferredDatePickerStyle = .wheels
        }
        
        
        let screenTouchDetection = UITapGestureRecognizer(target: self, action: #selector(screenTouchDetectionMethod))
        view.addGestureRecognizer(screenTouchDetection)

    }
    
    @objc func screenTouchDetectionMethod () {
        print("Touched the screen")
              view.endEditing(true)
    }
    
    @objc func showSelectedDate (uiDatePicker : UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "MM/dd/yyyy"
        let selectedDate = format.string(from: uiDatePicker.date)
        dateTextField.text = selectedDate
    }
    
    @objc func showSelectedTime(uiDatePicker : UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "HH:mm"
        let selectedTime = format.string(from: uiDatePicker.date)
        timeTextField.text = selectedTime
    }


}

