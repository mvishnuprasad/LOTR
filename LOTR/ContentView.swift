//
//  ContentView.swift
//  LOTR
//
//
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var showSelectCoin = false
    @State var leftAmount  = ""
    @State var rightAmount  = ""
    @State var leftCoin : Coins = .silverPiece
    @State var rightCoin : Coins = .goldPenny
    @FocusState var leftTyping
    @FocusState var rightTyping

    var body: some View {
        ZStack{
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                Text("Currency Exchange")
                    .font(.title)
                    .foregroundStyle(.white)
                

                HStack {
                    VStack{
                        HStack{
                            Image(leftCoin.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            Text(leftCoin.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                        }
                        .onTapGesture {
                            showSelectCoin.toggle()
                        }
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                            .focused($leftTyping)
                            .onChange(of: leftAmount){
                                if(leftTyping==true){
                                    rightAmount = leftCoin.convert(amount: leftAmount, coin: rightCoin)
                                }
                                
                            }
                            
                        
                    }
                    Image(systemName:"equal")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    VStack{
                        HStack{
                            Text(rightCoin.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            Image(rightCoin.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                        }
                        .onTapGesture {
                            showSelectCoin.toggle()
                        }
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                            .focused($rightTyping)
                            .onChange(of: rightAmount){
                                if(rightTyping==true)
                                {
                                    leftAmount = rightCoin.convert(amount: rightAmount, coin: leftCoin)
                                }
                            }
                        
                    }
                }
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                Spacer()
                HStack {
                    Spacer()
                    Button{
                        showExchangeInfo.toggle()
                    } label:{
                        Image(systemName:"info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .sheet(isPresented: $showExchangeInfo, content: {
                        ExchangeInfo()
                    })
                    .sheet(isPresented: $showSelectCoin, content: {
                        Selector(topCoins: $leftCoin, bottomCoins: $rightCoin)
                    })
                    .padding(.trailing)
                }

                   
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
