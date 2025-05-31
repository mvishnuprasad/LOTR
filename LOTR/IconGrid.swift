//
//  Selector.swift
//  LOTR
//


import SwiftUI

struct IconGrid: View {
    @Binding var coins : Coins
    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(),GridItem()]){
            ForEach(Coins.allCases){coins in
                if self.coins == coins{
                    CoinView(coinName: coins.name,coinImage: coins.image)
                        .shadow(color: .black, radius: 10  )
                        .overlay{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 3)
                                .opacity(0.2)
                        }
                }else{
                    CoinView(coinName: coins.name,coinImage: coins.image)
                        .onTapGesture {
                            self.coins = coins
                        }
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var top = Coins.silverPenny
    
    IconGrid( coins: $top)
}
