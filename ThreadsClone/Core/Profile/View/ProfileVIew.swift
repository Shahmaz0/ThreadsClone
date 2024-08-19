//
//  ProfileVIew.swift
//  ThreadsClone
//
//  Created by Shahma Ansari on 17/08/24.
//

import SwiftUI

struct ProfileVIew: View {
    @State private var selectedFilter: ProfileThreadFilter = .Threads
    @Namespace var animation
    
    private var filterBarWidth: CGFloat{
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        
        return UIScreen.main.bounds.width / count - 16
    }
    
    var body: some View {
        ScrollView (showsIndicators: false) {
            // Bio and stats
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 12) {
                        
                        //FullName and username
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Monkey D Luffy")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("Monkey_D_Luffy")
                                .font(.subheadline)
                            
                        }
                        
                        Text("King of Pirates")
                            .font(.footnote)
                        
                        Text("5640 followers")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    CircularProfileImageView()
                }
                
                Button {
                    
                }label: {
                    Text("follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(8.0)
                }
                
                // User content list view
                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases) { filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: filterBarWidth, height: 1)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                    
                                } else {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: filterBarWidth, height: 1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                    LazyVStack {
                        ForEach(0 ... 10, id: \.self) { thread in
                            ThreadCell()
                        }
                    }
                }
                .padding(.vertical, 8)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileVIew()
}
