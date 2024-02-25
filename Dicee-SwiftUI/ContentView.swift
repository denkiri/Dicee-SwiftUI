//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Macbook Pro on 23/02/2024.
//

import SwiftUI

struct ContentView: View {
  @State  var leftDiceNumber = 1
  @State  var rightDiceNumber = 1
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    ExtractedView(n:leftDiceNumber)
                    ExtractedView(n:rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
               
                Button("Roll") {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }
                .padding(.horizontal)
                .font(.system(size:50))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .background(Color.red)
                .padding()

            }
        }

    }
}
struct ExtractedView: View {
    let n:Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
#Preview {
    ContentView()
}


