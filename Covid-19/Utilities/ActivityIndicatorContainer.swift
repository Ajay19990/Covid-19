//
//  ActivityIndicatorContainer.swift
//  Covid-19
//
//  Created by Ajay Choudhary on 05/04/20.
//  Copyright © 2020 Ajay Choudhary. All rights reserved.
//

import UIKit

class ActivityIndicatorContainer: UIView {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
    
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
    
  init(view: UIView) {
    super.init(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
    setup(view: view)
  }
    
  private func setup(view: UIView) {
    center.x = view.center.x
    center.y = view.center.y
    backgroundColor = .systemGray5
    alpha = 0.8
    layer.cornerRadius = 10
  }
}
