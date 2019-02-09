//
//  ViewController+Alert.swift
//  MelloApp
//
//  Created by Suraya Shivji on 2/9/19.
//  Copyright © 2019 Suraya Shivji. All rights reserved.
//

import UIKit

extension UIViewController {
 func alertUserOf(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(defaultAction)
        self.present(alertController, animated: true, completion: nil)
}
}
