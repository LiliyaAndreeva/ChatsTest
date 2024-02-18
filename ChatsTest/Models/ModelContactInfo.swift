//
//  ModelContactInfo.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 17.02.2024.
//


import SwiftUI

struct ModelContactInfo: Identifiable {
    let id = UUID()
    let firstName: String
    let sureName: String
    let numberPhone: String
    let imageAvatar: String
    let buttonChat: Image
    let buttonVideo: Image
    let buttonPhone: Image
    
    var fullName: String {
        firstName + " " + sureName
    }
    
    let mediaImage: Image
    let mediaLinksDocs: String
    let starredMessageImage: Image
    let starredMessages: String
    let chatSearchImage: Image
   
    let chatSearch: String
    
    let volumeImage: Image
    let mute: String
    
    static func getContactInfo(chat: ChatModel) -> ModelContactInfo {
    
        let contactInfo = ModelContactInfo(
            firstName: chat.firstName,
            sureName: chat.sureName,
            numberPhone: "+1 202 555 0181",
            imageAvatar: chat.image,
            buttonChat: Image(systemName: "message.circle"),
            buttonVideo: Image(systemName: "video.circle"),
            buttonPhone: Image(systemName: "phone.circle"),
            mediaImage: Image(systemName: "photo"),
            mediaLinksDocs: "Media, Links, and Docs",
            starredMessageImage: Image(systemName: "star.fill"),
            starredMessages: "Starred Messages",
            chatSearchImage: Image(systemName: "magnifyingglass"),
            chatSearch: "Chat Search",
            volumeImage: Image(systemName: "speaker.wave.2.fill"),
            mute: "Mute")
        
        return contactInfo
    }
}
