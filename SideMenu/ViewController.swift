//
//  ViewController.swift
//  SideMenu
//
//  Created by Mohamed on 10/27/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuContriants: NSLayoutConstraint!
    
    var isPressed: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.isUserInteractionEnabled = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleMenuAppearance))
        
        self.view.addGestureRecognizer(tapGesture)
        
    }

    @objc func handleMenuAppearance(){
        
        self.isPressed = !self.isPressed

        
        UIView.animate(withDuration: 0.5, animations: {
                    
            if self.isPressed{
                self.menuContriants.constant = 0
            }else{
                self.menuContriants.constant = -315.0
            }
                
            self.view.layoutIfNeeded()
            
        }, completion: nil)
    }
}

