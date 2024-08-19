//
//  ThreadsTextFieldModifier.swift
//  ThreadsClone
//
//  Created by Shahma Ansari on 14/08/24.
//

import SwiftUI

struct ThreadsButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: 44)
            .background(.black)
            .cornerRadius(8.0)
            .padding(.horizontal, 24)
    }
}
