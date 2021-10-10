//
//  ViewController.swift
//  NavigationController
//
//  Created by Зайнал Гереев on 17.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var secondVCButton = UIButton()
    var thirdVCButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "FirstVC"
        
        secondVCButton = UIButton(type: .system)
        secondVCButton.setTitle("Simple Switch View Controller", for: .normal)
        secondVCButton.sizeToFit()
        secondVCButton.center = self.view.center
        secondVCButton.addTarget(self, action: #selector(secondVC), for: .touchUpInside)
        view.addSubview(secondVCButton)
        createButton()
    }

    
    //MARK: - настройка кнопки для переход на SegmentedControllerView
    func createButton(){
        thirdVCButton = UIButton(type: .system)
        thirdVCButton.setTitle("SegmentedController View", for: .normal)
        thirdVCButton.addTarget(self, action: #selector(thirdVC(parametrSender:)), for: .touchUpInside)
        view.addSubview(thirdVCButton)
        thirdVCButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            thirdVCButton.topAnchor.constraint(equalTo: secondVCButton.bottomAnchor, constant:20),
            thirdVCButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            thirdVCButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            thirdVCButton.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        
    }
    @objc func thirdVC(parametrSender: Any){
        let thirdVC = ThirdViewController()
        self.navigationController?.pushViewController(thirdVC, animated: false)
        
    }
    
    @objc func secondVC(parametrSender: Any){
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: false)
        
        
    }

}

