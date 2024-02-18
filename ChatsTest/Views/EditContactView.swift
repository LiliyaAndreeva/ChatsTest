//
//  EditContactView.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 17.02.2024.
//

import SwiftUI

struct EditContactView: View {
    let chat: ChatModel
    let contact: ModelContactInfo
    
    var body: some View {
        
        
        VStack{
            List{
              
                
            }
        }
    }
}


#Preview {
    EditContactView(chat: ChatManager().chats[4], contact: ModelContactInfo.getContactInfo(chat: ChatManager().chats[4]))
}
