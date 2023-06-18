//
//  Friend.swift
//  APIChallenge
//
//  Created by Jorge Henrique on 18/06/23.
//

import Foundation

struct Friend: Codable, Identifiable {
    let id: UUID
    let name: String
}
