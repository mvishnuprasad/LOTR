//
//  ExchangeInfo.swift
//  LOTR
//


import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Image("parchment")
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                Text("Exchange Rates")
                    .tracking(3)
                    .font(.largeTitle)
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .padding()
                    .font(.title3)
                ExchangeRate(leftImage: .goldpenny, rightImage: .goldpenny, amount: 1)
                ExchangeRate(leftImage: .silverpenny, rightImage: .silverpiece, amount: 3)
                ExchangeRate(leftImage: .copperpenny, rightImage: .silverpenny, amount: 2)
                ExchangeRate(leftImage: .goldpenny, rightImage: .goldpenny, amount: 4)
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.headline)
                .padding()
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}


