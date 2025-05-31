//
//  CoinTIp.swift
//  LOTR
//
//  Created by qbuser on 31/05/25.
//

import Foundation
import TipKit
struct CoinTip : Tip{
    var title = Text("Change currency")
    var message : Text? = Text("You can tap the left or right currency to bring up select currency screen")
    var image = Image(systemName: "hand.tap.fill")
}
