//
//  NextBViewController.swift
//  
//
//  Created by 山本省吾 on 2018/01/16.
//

import UIKit

class NextBViewController: UIViewController {

    var sendLabel: String?

    @IBOutlet weak var bLabel: UILabel!

    override func viewDidLoad() {

        super.viewDidLoad()

        bLabel.text = sendLabel
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
