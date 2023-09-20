//
//  SecondViewController.swift
//  CoordinatorDesignPattern
//
//  Created by Semanur Eserler on 18.09.2023.
//

import UIKit

class SecondViewController: UIViewController,Coordinating {
    
    
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second"
        view.backgroundColor = .systemBlue
       
    }
    
    
   

}
