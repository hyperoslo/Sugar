//
//  String+Validation.swift
//  Sugar
//
//  Created by Aashish Dhawan on 18/03/16.
//  Copyright © 2016 Hyper Interaktiv AS. All rights reserved.
//

import Foundation

public extension String {
    
    public func isEmail() -> Bool {
        return matchesPattern(Regex.Email.pattern)
    }
    
    public func isPhoneNumber() -> Bool {
        return matchesPattern(Regex.PhoneNumber.pattern)
    }
    
    public func isZipCode() -> Bool {
        return matchesPattern(Regex.ZipCode.pattern)
    }
    
    public func isNumber() -> Bool {
        return matchesPattern(Regex.Numbers.pattern)
    }
}