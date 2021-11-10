//
//  AddViewController.swift
//  CalcApp
//
//  Created by 森園王 on 2021/11/10.
//

import UIKit

class AddViewController: UIViewController {

    var resultArray:[Double] = []
    var sum:Double = 0



    @IBOutlet weak var addLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        resultArray = UserDefaults.standard.object(forKey: "item") as! [Double]
        print(resultArray)
        sum = resultArray.reduce(0) { (num1:Double, num2:Double) -> Double in
            return num1 + num2
        }

        addLabel.text = String(format: "%.0f", sum)
    }

}
