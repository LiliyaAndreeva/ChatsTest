//
//  ContentView.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 16.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State var selected = "4"
    var chatManager = ChatManager()
    let contact: ModelContactInfo
    let chat: ChatModel
    
    var body: some View {
        TabView(selection: $selected){
            Text("Status")
                .tag("1")
            .tabItem {
                Label("Status", systemImage: "circle.dashed")
            }
            Text("Calls")
                .tag("2")
            .tabItem {
                Label("Calls", systemImage: "phone")
            }
            Text("Camera")
                .tag("3")
            .tabItem {
                Label("Camera", systemImage: "camera")
            }
            ChatsScreen(contact: contact, chat: chat)
                .tag("4")
                .tabItem {
                    Label("Chats", systemImage: "message" )
                }
            Text("Settings")
                .tag("5")
            .tabItem {
                Label("Settings", systemImage: "gear")
            }
        }
        
    }
}

#Preview {
    ContentView(contact: ModelContactInfo.getContactInfo(chat: ChatManager().chats[4]), chat: ChatManager().chats[5])
}
