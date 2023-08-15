//
//  SupportTopics.swift
//  SupportClone
//
//  Created by Gabriel Vicentin Negro on 15/08/23.
//

import Foundation
import SwiftUI

class SupportTopics{
    static var supportTopics: [SupportTopic] = [
        SupportTopic(name: "Repairs & Physical Damage", image: "screwdriver.fill", color: .red),
        SupportTopic(name: "Device Performace", image: "waveform.path.ecg", color: .blue),
        SupportTopic(name: "Subscriptions & Purshaces", image: "creditcard.fill", color: .yellow),
        SupportTopic(name: "Apple Store Shopping", image: "bag.fill", color: .cyan),
        SupportTopic(name: "Passwords & Secutiry", image: "lock.fill", color: .blue),
        SupportTopic(name: "Update, Backup & Restore", image: "arrow.counterclockwise.circle.fill", color: .green),
        SupportTopic(name: "More", image: "ellipsis.circle.fill", color: .gray)
    ]
}
