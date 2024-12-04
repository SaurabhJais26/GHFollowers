//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Saurabh Jaiswal on 04/12/24.
//

import UIKit

extension UIView {
    
    // Variadic parameters
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
    
}
