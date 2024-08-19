//
//  UserCell.swift
//  ThreadsClone
//
//  Created by Shahma Ansari on 17/08/24.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
            
            VStack(alignment: .leading){
                Text("Monkey_D_luffy")
                    .fontWeight(.semibold)
                
                Text("King of Pirates")
            }
            .font(.footnote)
            
            Spacer()
            
            Text("follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 32)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1.0)
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
