//
//  ThemeManager.swift
//  ThriveApp
//
//  Manages app-wide dark mode preference with persistence.
//

import SwiftUI
import Combine

class ThemeManager: ObservableObject {

    enum ThemeMode: Int {
        case system = 0
        case light = 1
        case dark = 2
    }

    private static let key = "app_theme_mode"

    @Published var themeMode: ThemeMode {
        didSet {
            UserDefaults.standard.set(themeMode.rawValue, forKey: ThemeManager.key)
        }
    }

    var resolvedColorScheme: ColorScheme? {
        switch themeMode {
        case .system: return nil
        case .light:  return .light
        case .dark:   return .dark
        }
    }

    init() {
        let stored = UserDefaults.standard.integer(forKey: ThemeManager.key)
        self.themeMode = ThemeMode(rawValue: stored) ?? .system
    }

    func cycleTheme() {
        switch themeMode {
        case .system: themeMode = .light
        case .light:  themeMode = .dark
        case .dark:   themeMode = .system
        }
    }

    var themeLabel: String {
        switch themeMode {
        case .system: return "Auto"
        case .light:  return "Light"
        case .dark:   return "Dark"
        }
    }

    var themeIcon: String {
        switch themeMode {
        case .system: return "circle.lefthalf.fill"
        case .light:  return "sun.max.fill"
        case .dark:   return "moon.fill"
        }
    }
}
