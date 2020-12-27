//
//  FinderListViewController.swift
//  Edhita
//
//  Created by Tatsuya Tobioka on 10/7/14.
//  Copyright (c) 2014 tnantoka. All rights reserved.
//

import UIKit

class FinderListViewController: EDHFinderListViewController {

    let kToolbarIconSize: CGFloat = 26.0

    override func viewDidLoad() {
        super.viewDidLoad()

        let settingsItem = Utility.barButtonItem(target: self,
                                                 icon: FAKIonIcons.gearAIcon(withSize: self.kToolbarIconSize),
                                                 action: #selector(settingsItemDidTap))
        navigationItem.leftBarButtonItem = settingsItem
        navigationItem.leftItemsSupplementBackButton = true
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Actions

    @objc func settingsItemDidTap(_ sender: AnyObject) {
        let formController = SettingsViewController()
        let navController = UINavigationController(rootViewController: formController)
        navController.modalPresentationStyle = .formSheet
        self.present(navController, animated: true, completion: nil)
    }
}
