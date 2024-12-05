//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Saurabh Jaiswal on 05/12/24.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
