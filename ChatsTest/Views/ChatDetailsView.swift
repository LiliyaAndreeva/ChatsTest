//
//  ChatDetailsView.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 17.02.2024.
//

import SwiftUI

struct ChatDetailsView: View {
    @State private var massegetext = ""
    let chat: ChatModel
    let contact: ModelContactInfo
    
    
    var body: some View {
        ScrollView{
            VStack{
                ForEach(0...15, id: \.self) { message in
                    ChatMessage(isFromCurrentUser: Bool.random())
                    
                }
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarItems(
                        trailing: NavigationBarItems(chat: chat, contact: contact )
                    )
                    .toolbar(.hidden, for: .tabBar)
                    .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            ToolBarItems(massegetext: $massegetext, withSize: 20, heightSize: 20)
                            //                            .frame(maxWidth: .infinity)
                            //                            .background(Color(.systemGroupedBackground))
                        }
                        
                    }
            }
        }
        .background(Image("wallpaperLight")
            .resizable())
    }
}

#Preview {
    ChatDetailsView(chat: ChatManager().chats[5], contact: ModelContactInfo.getContactInfo(chat: ChatManager().chats[0]))
}


struct NavigationBarItems: View {
    let chat: ChatModel
    let contact: ModelContactInfo
    
    var body: some View {
        HStack{
            NavigationBarView(chat: chat, contact: contact)
            Button {
                print("Use backend")
            } label: {
                Image(systemName: "phone")
                
            }
            Button {
                print("Use backend")
            } label: {
                Image(systemName: "video")
            }
        }
    }
}

