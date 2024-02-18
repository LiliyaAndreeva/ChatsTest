//
//  ChatsScreen.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 17.02.2024.
//

import SwiftUI

struct ChatsScreen: View {
    let chatManager = ChatManager()
    let contact: ModelContactInfo
    let chat: ChatModel
    
    var body: some View {
        VStack {
            NavigationStack{
                HStack{
                    Button("Broadcast List",
                           action: {
                        print("use backend")
                    })
                    .padding(.leading, 15)
                    Spacer()
                    Button("New Group",
                           action: {
                        print("use backend")
                    })
                    .padding(.trailing, 15)
                }
                List(chatManager.chats) { chat in
                    NavigationLink{
                        ChatDetailsView(chat: chat, contact: contact)
                    } label: {
                        ChatViews(chat: chat)
                    } .swipeActions(edge: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/, allowsFullSwipe: false) {
                        Button(action: {
                            print("use backend")
                        }) {
                            Label("Archive", systemImage: "archivebox.fill")
                        }
                        .tint(.blue)
                        Button(action: {print("use backend")}) {
                            Label("More", systemImage: "ellipsis")
                        }
                    }
                }
                .listStyle(.plain)
                .navigationTitle("Chats")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                    leading:
                        Button {
                            print("Use backend")
                        } label: {
                            Text("Edit")
                        }
                    , trailing:
                        Button {
                            print("Use backend")
                        } label: {
                            Image(systemName: "square.and.pencil")
                        }
                )
            }
        }
    }
}

#Preview {
    ChatsScreen(contact: ModelContactInfo.getContactInfo(chat: ChatManager().chats[0]), chat: ChatManager().chats[5])
}
