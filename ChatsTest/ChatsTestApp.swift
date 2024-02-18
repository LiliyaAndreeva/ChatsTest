//
//  ChatsTestApp.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 16.02.2024.
//

import SwiftUI

@main
struct ChatsTestApp: App {
    let contact: ModelContactInfo
    let chat: ChatModel
    
    init() {
        contact = ModelContactInfo.getContactInfo(chat: ChatManager().chats[0])
        chat = ChatManager().chats[0]
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView( contact: contact, chat: chat)
        }
    }
}
