//
//  Selector.swift
//  LOTR
//


import SwiftUI

struct Selector: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCoins : Coins
    @Binding var bottomCoins : Coins
    var body: some View {
        ZStack{
            Image("parchment")
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                Text("Select Currency starting with")
                    .fontWeight(.bold)
                    .padding(.bottom)
                IconGrid(coins: $topCoins)
 
                Text("Select Currency to Convert")
                    .fontWeight(.bold)
                    .padding(.top)
                IconGrid(coins: $bottomCoins)
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.headline)
                .padding()
                .foregroundStyle(.white)
                   
            }
            .padding()
            .multilineTextAlignment(.center)
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    @Previewable @State var top = Coins.silverPenny
    @Previewable @State var bottom = Coins.goldPenny

    Selector( topCoins: $top , bottomCoins: $bottom)
}
