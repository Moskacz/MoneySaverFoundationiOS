//
//  TransactionCategory.swift
//  MoneySaverFoundationiOS
//
//  Created by Michal Moskala on 02.10.2017.
//  Copyright © 2017 Michal Moskala. All rights reserved.
//

import Foundation

public struct TransactionCategory {
    
    public let name: String
    public let icon: UIImage
    public let backgroundColor: UIColor
    
    public init(name: String, icon: UIImage, backgroundColor: UIColor) {
        self.name = name
        self.icon = icon
        self.backgroundColor = backgroundColor
    }
    
}
