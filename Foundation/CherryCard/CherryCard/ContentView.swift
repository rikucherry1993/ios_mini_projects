//
//  ContentView.swift
//  CherryCard
//
//  Created by 陸影 on 2022/01/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.60, blue: 0.86)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("cherry_google")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                
                Text("Cherry Lu")
                    .font(Font.custom("ArchitectsDaughter-Regular", size: 30))
                    .bold()
                .foregroundColor(.white)
                
                Text("Android Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                
                Divider()
                
                InfoView(text: "Tel: xxx-xxxx-xxxx", imageName: "phone.fill")
                InfoView(text: "E-mail: xxx@xxx.com", imageName: "envelope.fill")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
