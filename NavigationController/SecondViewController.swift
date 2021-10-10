//
//  SecondViewController.swift
//  NavigationController
//
//  Created by Зайнал Гереев on 17.09.2021.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Simple Switch"
        
        let simpleSwitch = UISwitch()
        simpleSwitch.isOn = true
        simpleSwitch.addTarget(self, action: #selector(switchIsChange(param:)), for: .valueChanged)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: simpleSwitch)
        
    }

    
    @objc func switchIsChange(param: Any){
        if (param as AnyObject).isOn {
            self.view.backgroundColor = .white
        } else{
            self.view.backgroundColor = .black
        }
        
    }
}
