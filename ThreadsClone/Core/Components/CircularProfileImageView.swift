//
//  CircularProfileImageView.swift
//  ThreadsClone
//
//  Created by Shahma Ansari on 17/08/24.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("luffy-image")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
