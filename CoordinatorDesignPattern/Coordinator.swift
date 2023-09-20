//
//  Coordinator.swift
//  CoordinatorDesignPattern
//
//  Created by Semanur Eserler on 18.09.2023.
//

import Foundation
import UIKit

//adım 1: Coordinator protocolümüzü tanımladık

enum Event {
    case buttonTapped
}

protocol Coordinator {
    var navigationController : UINavigationController? { get set }
    //parametre olarak enum verdik
    func eventOcuured(with type : Event)
    func start()
    
}

//protocol içinde coordinator protokolünü tanımladık.
protocol Coordinating {
    var coordinator : Coordinator? { get set }
}
