//
//  AppCoordinator.swift
//  MVVMCStudy
//
//  Created by Sagar Amin on 3/11/25.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    var navigationController: UINavigationController = UINavigationController()
    
    var childCoordinators: [any Coordinator] = []
    
    func start() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        viewController.mainCoordinator = self
        navigationController.pushViewController(viewController, animated: false)
    }
    
    func navigateToSecondScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        viewController.mainCoordinates = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func navigateToThirdScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        navigationController.pushViewController(viewController, animated: true)
    }
}
