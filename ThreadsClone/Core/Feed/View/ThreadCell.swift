//
//  ThreadCell.swift
//  ThreadsClone
//
//  Created by Shahma Ansari on 17/08/24.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                CircularProfileImageView()
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Monkey_D_Luffy")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        Button {
                            
                        }label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                    }
                    
                    
                    Text("King of Pirates")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    HStack(spacing: 16) {
                        Button {
                            
                        }label: {
                            Image(systemName: "heart")
                        }
                        
                        Button {
                            
                        }label: {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button {
                            
                        }label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button {
                            
                        }label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                    
                }
                
            }
            Divider()
            
        }
        .padding()
    }
}

#Preview {
    ThreadCell()
}
