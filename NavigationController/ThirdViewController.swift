//
//  ThirdViewController.swift
//  NavigationController
//
//  Created by Зайнал Гереев on 17.09.2021.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "SegmentedController View"
        
        let item = ["white", "black"]
        let segment = UISegmentedControl(items: item)
        
        segment.isMomentary = true //без этого она показывала бы выбранную сторону
        segment.addTarget(self, action: #selector(segmentTaped(param:)), for: .valueChanged)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: segment)
        
    }
    
    @objc func segmentTaped(param: Any){
        switch (param as AnyObject).selectedSegmentIndex {
        case 0:
            self.view.backgroundColor = .white
        case 1:
            self.view.backgroundColor = .black
        default:
            break
        }
        
    }
    
}
