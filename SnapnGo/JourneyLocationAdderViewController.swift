//
//  JourneyLocationAdderViewController.swift
//  SnapnGo
//
//  Created by Megan Shum on 3/21/17.
//  Copyright © 2017 Megan Shum. All rights reserved.
//

import UIKit

class JourneyLocationAdderViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    // MARK: Properties
    @IBOutlet weak var locationPicker: UIPickerView!
    @IBOutlet weak var startLocation: UILabel!

    @IBOutlet weak var destLocation: UILabel!
    @IBOutlet weak var destLocationPicker: UIPickerView!
    var type = ["Science Centre", "Pendleton", "Jewett", "Clapp", "Green Hall", "Lulu", "Founders Hall", "Tower", "Severance", "Munger", "Pomeroy", "Cazenove", "Beebe", "Shafer", "Mcafee", "Bates", "Freeman", "Stone-Davis", "Dower"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationPicker.dataSource = self
        locationPicker.delegate = self
        destLocationPicker.dataSource = self
        destLocationPicker.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if (pickerView.tag == 1){
            return type.count
        } else {
            return type.count
        }
    
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView.tag == 1){
            return type[row]
        }else{
            return type[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (pickerView.tag==1){
            startLocation.text = type[row]
        }else{
            destLocation.text = type[row]
        }
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
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
