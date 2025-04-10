//
//  Coordinator.swift
//  MVVMCStudy
//
//  Created by Sagar Amin on 3/11/25.
//


import Foundation
import UIKit

public protocol Coordinator {
    var navigationController: UINavigationController { get  set }
    var childCoordinators: [Coordinator] { get set }
    
    func start()
}
