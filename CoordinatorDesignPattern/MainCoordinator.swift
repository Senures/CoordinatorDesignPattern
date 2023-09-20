//
//  MainCoordinator.swift
//  CoordinatorDesignPattern
//
//  Created by Semanur Eserler on 18.09.2023.
//

import Foundation
import UIKit

//adım 2:  MainCoordinator classımıza  protocolümüzü ekledik


class MainCoordinator : Coordinator {
    
    var navigationController: UINavigationController?
    
    func eventOcuured(with type: Event) {
        switch type {
        case .buttonTapped:
            var vc: UIViewController & Coordinating = SecondViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    func start() {
        var vc : UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }
   
}
