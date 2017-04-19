//
//  ViewController.swift
//  Days Until
//
//  Created by Noy H on 30/03/2017.
//  Copyright © 2017 Inscriptio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var daysLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func onCheck(_ sender: Any) {
        let date = datePicker.date
        let today = Date()
        let dateComponentsFormatter = DateComponentsFormatter()
        dateComponentsFormatter.allowedUnits = [.day, .hour, .minute]
        dateComponentsFormatter.maximumUnitCount = 1
        dateComponentsFormatter.unitsStyle = .full
        let displayableDate = dateComponentsFormatter.string(from: today, to: date)
        daysLabel.text = displayableDate
    }
    
    override func viewDidLoad() { super.viewDidLoad() }

    override func didReceiveMemoryWarning() { super.didReceiveMemoryWarning() }

}

