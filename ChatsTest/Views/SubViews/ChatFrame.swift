//
//  ChatFrame.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 18.02.2024.
//

import SwiftUI

struct ChatFrame: Shape {
    let isFromCurrentUser: Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: [
                .topLeft,
                .topRight,
                isFromCurrentUser ? .bottomLeft : .bottomRight
            ],
            cornerRadii: CGSize(width: 10, height: 10)
        )
        return Path(path.cgPath)
    }
}

#Preview {
    ChatFrame(isFromCurrentUser: true)
}
