//
//  ChatMessage.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 18.02.2024.
//

import SwiftUI

struct ChatMessage: View {
    let isFromCurrentUser: Bool
    
    var body: some View {
        HStack{
            if isFromCurrentUser{
                Spacer()
                Text("Good Morning!")
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.green))
                    .foregroundStyle(.white)
                    .clipShape(ChatFrame(isFromCurrentUser: isFromCurrentUser))
                    .frame(maxWidth: UIScreen.main.bounds.width / 1.5, alignment: .trailing)
                
            } else {
                HStack{
                    Text("What is the most popular meal in Japan?")
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.white))
                        .foregroundStyle(.black)
                        .clipShape(ChatFrame(isFromCurrentUser: isFromCurrentUser))
                        .frame(maxWidth: UIScreen.main.bounds.width / 1.5, alignment: .leading)
                    Spacer()
                }
            }
        }
        .padding(.horizontal, 3)
    }
}

#Preview {
    ChatMessage(isFromCurrentUser: false)
}
