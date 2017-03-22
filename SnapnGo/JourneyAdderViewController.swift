//
//  JourneyAdderViewController.swift
//  SnapnGo
//
//  Created by Megan Shum on 3/21/17.
//  Copyright © 2017 Megan Shum. All rights reserved.
//

import UIKit

class JourneyAdderViewController: UIViewController {


    @IBOutlet weak var startDateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var endDateLabel: UILabel!
    @IBOutlet weak var endDatePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.addTarget(self, action: #selector(datePickerChanged(datePicker:)), for: UIControlEvents.valueChanged)
        endDatePicker.addTarget(self, action: #selector(endDatePickerChanged(endDatePicker:)), for: UIControlEvents.valueChanged)
    
        // Do any additional setup after loading the view.
    }
    
    func datePickerChanged(datePicker:UIDatePicker) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
    
        let strDate = dateFormatter.string(from: datePicker.date)
        startDateLabel.text = strDate
    }
    func endDatePickerChanged(endDatePicker:UIDatePicker) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        
        let strEndDate = dateFormatter.string(from: endDatePicker.date)
        endDateLabel.text = strEndDate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
