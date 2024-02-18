//
//  PersonDetails.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 17.02.2024.
//

import SwiftUI

struct ContactInfo: View {
    let chat: ChatModel
    let contact: ModelContactInfo
    
    
    var body: some View {
        GeometryReader{ geo in
            VStack(alignment: .center){
                List{
                    Section {
                        Image("\(chat.fullName)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geo.size.width,
                                   height: geo.size.height / 2 ,
                                   alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        RowWithButton(chat: chat,
                                      contact: contact)
                        RowWithText()
                    }
                    .listStyle(.plain)
                    
                    
                    Section{
                        // NavigationLink{ !!!! TO DO
                        HStack(alignment: .center, spacing: 20){
                            contact.mediaImage
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.blue)
                            Text(contact.mediaLinksDocs)
                        }
                        // NavigationLink{ !!!! TO DO
                        HStack(alignment: .center, spacing: 20){
                            contact.starredMessageImage
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.yellow)
                            
                            Text(contact.starredMessages)
                            
                        }
                        HStack(alignment: .center, spacing: 20){
                            contact.chatSearchImage
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.orange)
                            
                            Text(contact.chatSearch)
                            
                        }
                    }
                    Section{
                        HStack(alignment: .center, spacing: 20){
                            contact.volumeImage
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.green)
                            
                            Text(contact.mute)
                        }
                    }
                }
                .listSectionSpacing(.custom(25))
                .listStyle(.grouped)
                .navigationBarItems(trailing:
                                        NavigationLink(destination: EditContactView(chat: chat, contact: contact), 
                                                       label:
                                                        {
                    Text("Edit")
                }
                                                       
                                                      )
                )
            }
        }
    }
}

#Preview {
    ContactInfo(chat: ChatManager().chats[4], contact: ModelContactInfo.getContactInfo(chat: ChatManager().chats[4]))
}
