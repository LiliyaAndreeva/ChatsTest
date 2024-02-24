//
//  ContentView.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 16.02.2024.
//

import SwiftUI
enum TabBarItem {

    case status
    case сalls
    case сamera
    case chats
    case settings

    var text: String {
        switch self {
        case .status: return "Status"
        case .сalls: return "Calls"
        case .сamera: return "Camera"
        case .chats: return "Chats"
        case .settings: return "Settings"
        }
    }

    var tag: String {
        switch self {
        case .status: return "1"
        case .сalls: return "2"
        case .сamera: return "3"
        case .chats: return "4"
        case .settings: return "5"
        }
    }

    var systemImageName: String {
        switch self {
        case .status: return "circle.dashed"
        case .сalls: return "phone"
        case .сamera: return "camera"
        case .chats: return "message"
        case .settings: return "gear"
        }
    }
}

struct ContentView: View {
    @State private var selectedTab: TabBarItem = .chats
    var chatManager = ChatManager()
    let contact: ModelContactInfo
    let chat: ChatModel
    let tabs = [TabBarItem.status, TabBarItem.сalls, TabBarItem.сamera, TabBarItem.chats, TabBarItem.settings]
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(tabs, id: \.tag) { tab in
                if tab == .chats {
                    ChatsScreen(contact: contact, chat: chat)
                        .tabItem {
                            Label(
                                tab.text, systemImage: tab.systemImageName
                            )
                        }
                } else {
                    CustomTextView(
                        text: tab.text,
                        tag: tab.tag,
                        labelText: tab.text,
                        systemImageName: tab.systemImageName
                    )
                }
            }
        }
    }
}
    
    #Preview {
        ContentView(contact: ModelContactInfo.getContactInfo(chat: ChatManager().chats[4]), chat: ChatManager().chats[5])
    }
    
    struct CustomTextView : View {
        private let text: String
        let tag: String
        private let labelText: String
        private let systemImageName: String
        
        internal init(text: String, tag: String, labelText: String, systemImageName: String) {
            self.text = text
            self.tag = tag
            self.labelText = labelText
            self.systemImageName = systemImageName
        }
        
        var body: some View {
            Text (labelText)
                .tag (tag)
                .tabItem {
                    Label(
                        labelText, systemImage: systemImageName
                    )
                }
        }
    }

