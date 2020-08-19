//
//  ContentView.swift
//  Memorize
//
//  Created by Coach on 2020/8/18.
//  Copyright © 2020 Coach Lee. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4,content: {  index in
                cardView(isFaceUp: true)
            })
        }
        .padding() //边隔
        .foregroundColor(Color.orange) //背面颜色
        .font(Font.largeTitle)
    }
}

struct cardView: View {
    
    var isFaceUp : Bool

    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10).fill(Color.white)    //填充色
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)     //边框
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10).fill()
            }
        }
    }
    
}














struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
