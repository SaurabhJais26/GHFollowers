//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Saurabh Jaiswal on 02/12/24.
//

import UIKit

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
