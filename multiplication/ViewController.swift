//
//  ViewController.swift
//  multiplication
//
//  Created by Bibek Shrestha on 2/13/19.
//  Copyright © 2019 Bibek Shrestha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    @IBOutlet weak var sliderLabelText: UILabel!
    @IBOutlet weak var sliderView: UISlider!
    
    @IBOutlet weak var tableViewUpdate: UITableView!
    @IBAction func sliderValueChange(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        sliderLabelText.text = "\(currentValue)"
        tableViewUpdate.reloadData()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numOfRow = 50
        return numOfRow
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let count = Int(sliderView.value)
        var multiplicationTable: [String] = []
        
        for i in 1...50 {
            multiplicationTable.append("\(count) X \(i) = \(count * i)")
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = multiplicationTable[indexPath.row]
        
        return cell
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}
