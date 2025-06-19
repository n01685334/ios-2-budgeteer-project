//
//  Item.swift
//  BudgetTracker
//
//  Created by Ghanshyam Anilbhai Soni on 2025-06-13.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
