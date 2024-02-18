//
//  DataStore.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 16.02.2024.
//

import Foundation
import SwiftUI

final class ChatManager {
    
    let chats: [ChatModel] = [
        ChatModel(firstName: "Andrew", sureName: "Parker", message: "What kind of strategy is better?", date: "11/16/19", image: "Andrew Parker", icon: Image(systemName: "checkmark"), iconColor: .blue ),
        ChatModel(firstName: "Caren", sureName: "Castillo", message: "0:14", date: "11/15/19", image: "Caren Castillo", icon: Image(systemName: "mic.fill"), iconColor: .green),
        ChatModel(firstName: "Maximillian", sureName: "Jacobson", message: "Bro, I have a good idea!", date: "10/30/19", image: "Maximillian Jacobson", icon: Image(systemName: "checkmark"), iconColor: .blue ),
        ChatModel(firstName: "Martha", sureName: "Craig", message: "Photo", date: "10/28/19", image: "Martha Craig", icon: Image(systemName: "camera.fill"), iconColor: .gray),
        ChatModel(firstName: "Tabitha", sureName: "Potter", message: "Actually I wanted to сhеск with you about your online business plan on our...", date: "8/25/19", image: "Tabitha Potter", icon: nil, iconColor: nil),
        ChatModel(firstName: "Maisy", sureName: "Humphrey", message: "Welcome, to make design process faster, look at Pixsellz", date: "8/20/19", image: "Maisy Humphrey", icon: Image(systemName: "checkmark"), iconColor: .blue),
        ChatModel(firstName: "Kieron", sureName: "Dotson", message: "Ok, have a good trip!", date: "7/29/19", image: "Kieron Dotson", icon: Image(systemName: "checkmark"), iconColor: .blue)
    ]
    
  
}
