//
//  CoinModel.swift
//  LOTR
//


import Foundation
import SwiftUI
enum Coins : Double, CaseIterable , Identifiable{
  
    
    case copperPenny = 6400
    case silverPenny = 64
    case goldPenny = 16
    case goldPiece = 1
    case silverPiece = 4
    var id: Coins{
        self
    }
    var image : ImageResource{
        switch self {
        case .copperPenny:
            return .copperpenny
        case .silverPiece:
            return .silverpiece
        case .silverPenny:
            return .silverpenny
        case .goldPenny:
            return .goldpenny
        case .goldPiece:
            return .goldpiece
         
        }
    }
    
    var name : String{
        switch self {
        case .copperPenny:
            return "Copper Penny"
        case .silverPenny:
            return "Silver Penny"
        case .goldPenny:
            return "Gold Penny"
        case .goldPiece:
            return "Gold Piece"
        case .silverPiece:
            return "Silver Piece"
        }
    }
    func convert (amount: String,coin: Coins)-> String {
        guard let amt = Double(amount) else {
            return ""
        }
        let convAmt = (amt/self.rawValue) * coin.rawValue
        
        return String(format: "%0.2f", convAmt)
    }
}
