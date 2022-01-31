//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by rikucherry on 2022/01/12.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
