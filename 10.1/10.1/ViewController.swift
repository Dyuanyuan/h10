//
//  ViewController.swift
//  10.1
//
//  Created by student on 2018/12/13.
//  Copyright © 2018年 gjn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {[weak weakSelf=self](mytimer) in weakSelf?.myView.center.x += 20
        })
    }
    
    
    @IBAction func btnClicked(_ sender: Any) {
        let imageView = UIImageView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        imageView.image = UIImage(named: "1")
        UIView.transition(from: myView, to: imageView, duration: 2, options: .transitionFlipFromRight, completion: nil)

    }
}

