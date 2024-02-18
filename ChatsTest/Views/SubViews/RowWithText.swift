//
//  RowWithText.swift
//  ChatsTest
//
//  Created by Лилия Андреева on 17.02.2024.
//

import SwiftUI

struct RowWithText: View {
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text("Design adds value faster, than it adds cost")
            Text("Dec 10, 2018")
                .foregroundStyle(.gray)
                .font(
                    .system(
                        size: 14,
                        weight: .light
                    )
                )
        }
    }
    
    
}
