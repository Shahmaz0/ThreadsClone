//
//  ThreadsTextFieldModifier.swift
//  ThreadsClone
//
//  Created by Shahma Ansari on 14/08/24.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(16)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
