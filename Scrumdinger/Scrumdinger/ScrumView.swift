//
//  ScrumView.swift
//  Scrumdinger
//
//  Created by rikucherry on 2022/01/12.
//

import SwiftUI
import os

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List {
            ForEach(scrums) {item in
                NavigationLink(destination: DetailView(scrum: item)) {
                    CardView(scrum: item)
                }.listRowBackground(item.theme.mainColor)
            }
        }.navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }.accessibilityLabel("New Scrum")
            }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
