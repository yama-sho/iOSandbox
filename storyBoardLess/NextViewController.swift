//
//  NextViewController.swift
//  storyBoardLess
//
//  Created by 山本省吾 on 2018/01/12.
//  Copyright © 2018年 yama-sho. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let nextButton = UIButton(frame: CGRect(x: 150, y: 50, width: 100, height: 50))
        nextButton.setTitle("go back", for: .normal)
        nextButton.setTitleColor(#colorLiteral(red: 0.7150014356, green: 0.9615237405, blue: 1, alpha: 1), for: .normal)
        nextButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        nextButton.addTarget(self, action: #selector(NextViewController.goBack(_:)), for: .touchUpInside)
        view.addSubview(nextButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @objc func goBack(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
