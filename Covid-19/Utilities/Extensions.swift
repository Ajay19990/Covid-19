//
//  Extensions.swift
//  Covid-19
//
//  Created by Ajay Choudhary on 04/04/20.
//  Copyright © 2020 Ajay Choudhary. All rights reserved.
//

import UIKit

extension UIViewController {
  func presentCustomAlertOnMainThread(title: String, message: String, delegate: RefreshHomeDelegate?) {
    DispatchQueue.main.async {
      let alertVC = CustomAlertVC(title: title, message: message)
      alertVC.delegate = delegate
      alertVC.modalPresentationStyle = .overFullScreen
      alertVC.modalTransitionStyle = .crossDissolve
      self.present(alertVC, animated: true)
    }
  }
  
  func presentAlert(title: String, message: String) {
    let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
    let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alertVC.addAction(alertAction)
    present(alertVC, animated: true)
  }
}
