//
//  ThemeManager.swift
//  ThriveApp
//
//  Dark mode support with persistent user preference.
//

import SwiftUI
import Combine

/// Represents the user's theme preference.
enum ThemeMode: Int {
    case system = 0
    case light = 1
    case dark = 2
}

/// Manages the app-wide color scheme preference. Inject as an environment object
/// at the root of the view hierarchy so every view can read the current scheme.
class ThemeManager: ObservableObject {

    /// Raw integer stored in UserDefaults (0 = system, 1 = light, 2 = dark).
    @Published var themeMode: ThemeMode {
        didSet {
            UserDefaults.standard.set(themeMode.rawValue, forKey: "appThemeMode")
        }
    }

    /// The `ColorScheme` to apply via `.preferredColorScheme()`.
    /// Returns `nil` when the user chooses "System" so the OS decides.
    var colorScheme: ColorScheme? {
        switch themeMode {
        case .system: return nil
        case .light:  return .light
        case .dark:   return .dark
        }
    }

    init() {
        let stored = UserDefaults.standard.integer(forKey: "appThemeMode")
        self.themeMode = ThemeMode(rawValue: stored) ?? .system
    }
}
