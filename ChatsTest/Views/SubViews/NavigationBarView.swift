//
//  NavigationBarView.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 17.02.2024.
//

import SwiftUI

struct NavigationBarView: View {
    let chat: ChatModel
    let contact: ModelContactInfo
    
    var body: some View {
        NavigationLink {
            ContactInfo(chat: chat, contact: contact)
        } label: {
            HStack{
                Image(chat.image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 50)
                VStack(alignment: .leading){
                    Text(chat.fullName)
                        .font(.system(size: 17,
                                      weight: .bold)
                        )
                    Text("tap here for contact info")
                        .foregroundStyle(.gray)
                        .font(.system(size: 12,
                                      weight: .light))
                }
            }
        }
        .foregroundStyle(.black)
        }

}

#Preview {
    NavigationBarView(chat: ChatManager().chats[5], contact: ModelContactInfo.getContactInfo(chat: ChatManager().chats[0]))
}
