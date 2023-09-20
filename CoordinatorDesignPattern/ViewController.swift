//
//  ViewController.swift
//  CoordinatorDesignPattern
//
//  Created by Semanur Eserler on 18.09.2023.
//

import UIKit

class ViewController: UIViewController , Coordinating {
    
    
    var coordinator: Coordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Home"
        
        //butonu olusturalım
        let button = UIButton(frame:CGRect(x: 0, y: 0, width: 220, height: 55))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action:#selector(didTapButton), for: .touchUpInside)
        button.setTitle("Tap me", for: .normal)
    }
    
    @objc func didTapButton(){
        coordinator?.eventOcuured(with: .buttonTapped)
    }


}

