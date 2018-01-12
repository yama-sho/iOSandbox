//
//  ViewController.swift
//  storyBoardLess
//
//  Created by 山本省吾 on 2018/01/12.
//  Copyright © 2018年 yama-sho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let nextButton = UIButton(frame: CGRect(x: 50, y: 50, width: 100, height: 50))
        nextButton.setTitle("go next", for: .normal)
        nextButton.backgroundColor = #colorLiteral(red: 0.7150014356, green: 0.9615237405, blue: 1, alpha: 1)
        nextButton.addTarget(self, action: #selector(ViewController.goNext(_:)), for: .touchUpInside)
        view.addSubview(nextButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func goNext(_ sender: UIButton) {
        let nextVc = NextViewController()
        nextVc.view.backgroundColor = #colorLiteral(red: 0.7150014356, green: 0.9615237405, blue: 1, alpha: 1)
        self.present(nextVc, animated: true, completion: nil)
    }

}
