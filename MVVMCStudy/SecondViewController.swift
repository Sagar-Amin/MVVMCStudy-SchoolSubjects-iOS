//
//  SecondViewController.swift
//  MVVMCStudy
//
//  Created by Sagar Amin on 3/11/25.
//

import UIKit

class SecondViewController: UIViewController {

    weak var mainCoordinates: AppCoordinator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onClickNext(_ sender: Any) {
        mainCoordinates.navigateToThirdScreen()
    }
}

