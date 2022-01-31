//
//  DetailView.swift
//  Scrumdinger
//
//  Created by rikucherry on 2022/01/13.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        List {
            
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
