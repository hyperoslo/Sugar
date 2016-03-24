//
//  NSDate+Compare.swift
//  Sugar
//
//  Created by Aashish Dhawan on 18/03/16.
//  Copyright © 2016 Hyper Interaktiv AS. All rights reserved.
//

import UIKit

extension NSDate : Comparable {}

public func < (lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.timeIntervalSince1970 < rhs.timeIntervalSince1970
}

public func <= (lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.timeIntervalSince1970 <= rhs.timeIntervalSince1970
}

public func >= (lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.timeIntervalSince1970 >= rhs.timeIntervalSince1970
}

public func > (lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.timeIntervalSince1970 > rhs.timeIntervalSince1970
}
