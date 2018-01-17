//
//  NextViewController.swift
//  storyBoardLess
//
//  Created by 山本省吾 on 2018/01/12.
//  Copyright © 2018年 yama-sho. All rights reserved.
//

import UIKit

class NextAViewController: UIViewController {

    @IBOutlet weak var sendLabel: UILabel!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NextView" {

            let nextBViewController: NextBViewController = (segue.destination as? NextBViewController)!

            // 変数:遷移先ViewController型 = (segue.destination as 遷移先ViewController型)
            // segue.destination は遷移先のViewController

            nextBViewController.sendLabel = sendLabel.text
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
