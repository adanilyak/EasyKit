//
//  String+FirstCapitalized.swift
//  EasyKit
//
//  Created by Alexander Danilyak on 18/02/2018.
//

import Foundation

// MARK: - String+FirstCapitalized
public extension String {
    
    /// Common implementation
    ///
    /// - Returns: string with first capitalized letter
    fileprivate func _capitalizeFirst() -> String {
        guard let first: Character = first else {
            return ""
        }
        
        return String(first).uppercased() + dropFirst()
    }
    
    /// Replace first character in current string with capitalized (if possible)
    public mutating func capitalizeFirst() {
        self = _capitalizeFirst()
    }
    
    /// Replace first character with capitalized (if possible)
    ///
    /// - Returns: new string
    public func capitalizeFirst() -> String {
        return _capitalizeFirst()
    }
    
}
