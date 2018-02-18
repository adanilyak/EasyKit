//
//  UIApplication+OpenSettings.swift
//  EasyKit
//
//  Created by Alexander Danilyak on 18/02/2018.
//

import UIKit

// MARK: - UIApplication+OpenSettings
public extension UIApplication {
    
    /// Open system settings in your app's settings page
    ///
    /// - Returns: is opened or not
    @discardableResult public static func openSettings() -> Bool {
        guard let settingsURL: URL = URL(string: UIApplicationOpenSettingsURLString),
            UIApplication.shared.canOpenURL(settingsURL) else {
                return false
        }
        
        return UIApplication.shared.openURL(settingsURL)
    }
    
}
