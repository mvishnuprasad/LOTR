//
//  CoinView.swift
//  LOTR
//


import SwiftUI


struct CoinView: View {
    var coinName: String
    var coinImage: ImageResource
    var body: some View {
        ZStack(alignment: .bottom){
            Image(coinImage)
                .resizable()
                .scaledToFit()
            Text(coinName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .fontWeight(.bold)
                .background(.brown.opacity(0.75))
            
        }
        .padding(3)
        .background(.brown)
        .frame(width: 100, height: 100)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CoinView(coinName: "Copper",coinImage: .copperpenny)
}
