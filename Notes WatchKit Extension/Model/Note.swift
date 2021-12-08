//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Deep Bose on 6/21/21.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
