//
//  UIColor+Hex.swift
//  EasyKit
//
//  Created by Alexander Danilyak on 18/02/2018.
//

import UIKit

// MARK: - UIColor+Hex
public extension UIColor {
    
    fileprivate static func _formatToSuitable(hex: String) -> String? {
        let lowercasedHex: String = hex.lowercased()
        if lowercasedHex.range(of: "[a-f]{6}",
                               options: .regularExpression,
                               range: nil,
                               locale: nil) != nil {
            return lowercasedHex
        }
        
        if lowercasedHex.range(of: "#[a-f]{6}",
                               options: .regularExpression,
                               range: nil,
                               locale: nil) != nil {
            return String(lowercasedHex.dropFirst())
        }
        
        return nil
    }
    
    /// Init color with hex code string
    ///
    /// - Parameter hex: string like "ffffff" or "#ffffff"
    public convenience init?(hex: String) {
        guard let `hex` = UIColor._formatToSuitable(hex: hex) else {
            return nil
        }
        
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(red: CGFloat(r) / 0xff,
                  green: CGFloat(g) / 0xff,
                  blue: CGFloat(b) / 0xff,
                  alpha: 1)
    }
}
