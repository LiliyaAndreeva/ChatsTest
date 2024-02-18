//
//  ChatModel.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 16.02.2024.
//

//import Foundation
import SwiftUI

struct ChatModel: Identifiable {
    let id = UUID()
    let firstName: String
    let sureName: String
    let message: String
    let date: String
    let image: String
    let icon: Image?
    let iconColor: Color?
    var fullName: String {
        firstName + " " + sureName
    }
}
