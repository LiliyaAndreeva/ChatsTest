//
//  RowWithButton.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 17.02.2024.
//

import SwiftUI

struct RowWithButton: View {
    let chat: ChatModel
    let contact: ModelContactInfo
    
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 5){
                Text(chat.fullName)
                    .font(.system(
                        size: 16,
                        weight: .bold))
                Text(contact.numberPhone)
                    .font(
                        .system(
                            size: 13,
                            weight: .light
                        )
                    )
                    .foregroundStyle(.gray)
            }
            Spacer()
            contact.buttonChat
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundStyle(.blue)
            contact.buttonVideo
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundStyle(.blue)
            contact.buttonPhone
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundStyle(.blue)
        }
    }
}

#Preview {
    RowWithButton(chat: ChatManager().chats[0], contact: ModelContactInfo.getContactInfo(chat: ChatManager().chats[0]))
}
