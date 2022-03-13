//
//  ContentView.swift
//  DiceGame
//
//  Created by Zhang Xu on 2022/3/12.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftNumber = 1
    @State var rightNumber = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(number: leftNumber)
                    DiceView(number: rightNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action:{
                    self.leftNumber = Int.random(in: 1...6)
                    self.rightNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size:40))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(.red)
                .cornerRadius(10)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let number : Int
    
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
