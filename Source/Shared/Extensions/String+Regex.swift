//
//  String+Regex.swift
//  Sugar
//
//  Created by Aashish Dhawan on 18/03/16.
//  Copyright © 2016 Hyper Interaktiv AS. All rights reserved.
//

import Foundation

public enum Regex: String {
    
    case Email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
    case PhoneNumber = "^[0-9]{10}$"
    case ZipCode = "^[0-9]{5}$"
    case TwoDecimalPoints = "^[0-9]*((\\.)[0-9]{0,2})?$"
    case TwoDecimalPointsAndTwoDigits = "^[0-9]{0,2}((\\.)[0-9]{0,2})?$"
    case Numbers = "^[0-9]*?$"
    
    var pattern: String {
        return rawValue
    }
}

public extension String {
    
    public func matchesPattern(pattern: String) -> Bool {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: [.CaseInsensitive])
            return regex.firstMatchInString(self, options: NSMatchingOptions(rawValue: 0), range: NSMakeRange(0, characters.count)) != nil
        } catch {
            return false
        }
    }
}
