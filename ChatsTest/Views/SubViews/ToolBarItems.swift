//
//  ToolBarItems.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 18.02.2024.
//

import SwiftUI

struct ToolBarItems: View {
    
    @Binding var massegetext: String
    let withSize: CGFloat
    let heightSize: CGFloat
    
    var body: some View {
        HStack(spacing: 15){
            Button {
                print("Use back")
            } label: {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: withSize, height: heightSize)
            }
            
            ZStack(alignment: .trailing){
                TextField("", text: $massegetext, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(Capsule())
                    .overlay(Capsule().stroke( (Color.gray)))
                    
                    .font(.subheadline)
                Button {
                    print("Use back")
                } label: {
                    Image(systemName: "doc")
                        .resizable()
                        .frame(width: withSize,height: heightSize)
                        .rotationEffect(.degrees(90))
                }
                .padding(.trailing, 5)
                
            }
            
            
            Button {
                print("Use back")
            } label: {
                Image(systemName: "camera")
                    .resizable()
                    .frame(width: withSize, height: heightSize)
            }
            Button {
                print("Use back")
            } label: {
                Image(systemName: "mic")
                    .resizable()
                    .frame(width: withSize, height: heightSize)
            }
            
        }
    }
}

#Preview {
    ToolBarItems(massegetext: .constant("HI"), withSize: 20, heightSize: 20)
}
