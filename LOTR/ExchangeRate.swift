//
//  ExchangeRate.swift
//  LOTR
//


import SwiftUI

struct ExchangeRate: View {
    var  leftImage :ImageResource
    var  rightImage : ImageResource
    var amount : Int
    var body: some View {
        HStack{
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            Text("1 Gold Piece equal \(amount) gold pennies")
                .font(.callout)
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}
#Preview {
    ExchangeRate(leftImage: .goldpenny, rightImage:.goldpiece, amount: 1)
}
