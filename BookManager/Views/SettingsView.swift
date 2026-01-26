//
//  SettingsView.swift
//  BookManager
//
//  Created by Daisha McCutcheon on 1/24/26.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage(SETTINGS_THEME_KEY) private var currentTheme: Theme = .light
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Appearence")) {
                    Picker("Theme", selection: $currentTheme) {
                        ForEach(Theme.allCases, id: \.self) { theme in
                            Text(theme.rawValue).tag(theme)
                        }
                    }
                }
            }
        }
    }
}
