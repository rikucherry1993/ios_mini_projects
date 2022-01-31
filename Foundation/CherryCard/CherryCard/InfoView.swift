//
//  InfoView.swift
//  CherryCard
//
//  Created by 陸影 on 2022/01/29.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25, style: RoundedCornerStyle.circular)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName:imageName).foregroundColor(Color(red: 0.20, green: 0.60, blue: 0.86))
                    Text(text)
                }
            )
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Tel: xxx-xxxx-xxxx", imageName: "Cherry Lu")
            .previewLayout(.sizeThatFits)
    }
}
