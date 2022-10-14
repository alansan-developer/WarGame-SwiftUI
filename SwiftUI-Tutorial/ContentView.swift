//
//  ContentView.swift
//  SwiftUI-Tutorial
//
//  Created by Alan Santoso on 14/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    var body: some View {
        
        ZStack{
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                    .aspectRatio(contentMode: .fit)
                Spacer()
                
                HStack(){
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    
                    //Generate Random Number between 2 - 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //update cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //update score
                    if playerCard > cpuCard{
                        playerScore += 1
                    }else if cpuCard > playerCard{
                        cpuScore += 1
                    }
                    
                } label: {
                    Image("dealbutton")
                }
                Spacer()
                HStack(spacing: 30){
                    Spacer()
                    VStack(){
                        Text("Player").foregroundColor(Color.white).padding(.bottom, 10.0)
                        Text("\(playerScore)").foregroundColor(Color.white).font(.largeTitle)
                    }
                    Spacer()
                    VStack(spacing: 10){
                        Text("CPU").foregroundColor(Color.white).padding(.bottom, 10.0)
                        Text("\(cpuScore)").foregroundColor(Color.white).font(.largeTitle)
                    }
                    Spacer()
                }
                
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
