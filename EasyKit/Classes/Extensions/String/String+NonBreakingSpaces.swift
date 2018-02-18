//
//  String+NonBreakingSpaces.swift
//  EasyKit
//
//  Created by Alexander Danilyak on 18/02/2018.
//

import Foundation

/// Just simple whitespace
fileprivate let space: String = " "

/// Space character that prevents an automatic line break at its position
fileprivate let nonBreakingSpace: String = " "

// MARK: - String+NonBreakingSpaces
public extension String {
    
    /// Replace all simple spaces in current string with non-breaking
    public mutating func replaceWhitespacesForNonBreaking() {
        self = replacingOccurrences(of: space, with: nonBreakingSpace)
    }
    
    /// Replace all simple spaces with non-breaking
    ///
    /// - Returns: new string
    public func replaceSpacesForNonBreakingSpaces() -> String {
        return replacingOccurrences(of: space, with: nonBreakingSpace)
    }
    
}
