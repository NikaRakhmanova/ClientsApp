//
//  AboutMeViewController.swift
//  ClientsApp
//
//  Created by Nika Rakhmanova on 26.04.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    private let user = User.getUserData()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        
    }

}
