//
//  ViewController.swift
//  AnimationsDevMountain
//
//  Created by Kelly Johnson on 8/8/18.
//  Copyright © 2018 DunDak, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sunImageView: UIImageView!
    @IBOutlet weak var backCloudImageView: UIImageView!
    @IBOutlet weak var frontCloudImageView: UIImageView!
    @IBOutlet weak var showTheSunButtonOutlet: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        animateClouds()
        animateButton()
        
    }

    func animateClouds() {
        self.backCloudImageView.center.x -= self.view.bounds.width
        self.frontCloudImageView.center.x -= self.view.bounds.width
        
        UIView.animate(withDuration: 10.0, delay: 0.0, options:[UIViewAnimationOptions.repeat], animations: {
            self.backCloudImageView.center.x += 2 * self.view.bounds.width
        }, completion: nil)
        
        UIView.animate(withDuration: 5.0, delay: 3.0, options:[UIViewAnimationOptions.repeat], animations: {
            self.frontCloudImageView.center.x += 2 * self.view.bounds.width
        }, completion: nil)
    }

    func animateButton() {
        self.showTheSunButtonOutlet.transform = CGAffineTransform(scaleX: 0, y: 0)
        UIView.animate(withDuration: 3.0,
                       delay: 2.0,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 0,
                       options: [],
                       animations: {
                        self.showTheSunButtonOutlet.transform = .identity
        },
                       completion: nil)
    }
}

