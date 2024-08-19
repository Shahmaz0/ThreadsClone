//
//  LoginView.swift
//  ThreadsClone
//
//  Created by Shahma Ansari on 14/08/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("threads-app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                VStack {
                    TextField("Enter you email", text: $email)
                        .autocapitalization(.none)
                        .modifier(ThreadsTextFieldModifier())
                    
                    SecureField("Enter you password", text: $password)
                        .modifier(ThreadsTextFieldModifier())
                }
                
                NavigationLink {
                    Text("Forgot password?")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                    
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    
                } label: {
                    Text("login")
                        .modifier(ThreadsButtonModifier())
                        
                }
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}
