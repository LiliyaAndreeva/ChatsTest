//
//  ChatViews.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 16.02.2024.
//

import SwiftUI

struct ChatViews: View {
    let chat: ChatModel
    //let contact: ModelContactInfo
    
    var body: some View {
        HStack {
            Image(chat.image)
                .resizable()
                .scaledToFit().frame(width: 80)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                HStack{
                    Text(chat.fullName)
                        .font(.system(size: 16,
                                      weight: .bold,
                                      design: .default))
                    Spacer()
                    Text(chat.date)
                        .foregroundStyle(.gray)
                    .font(.system(size: 18))
                }
                
                HStack(alignment: .center, spacing: 5){
                    
                    chat.icon?
                        .resizable()
                        .frame(width: 13, height: 17)
                        .foregroundStyle(chat.iconColor ?? .gray)
                    Text(chat.message)
                        .foregroundStyle(.gray)
                        .font(.system(size: 16,
                                      weight: .regular,
                                      design: .rounded) )
                        .lineLimit(2)
                }
            }
        }
       
    }
}

#Preview {
    ChatViews(chat: ChatManager().chats[0])
}
