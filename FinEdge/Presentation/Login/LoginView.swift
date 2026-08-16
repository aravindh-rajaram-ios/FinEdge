//
//  LoginView.swift
//  
//
//  Created by Aravindh Rajaram on 15/08/26.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject private var loginVM = LoginViewModel()
    
    var body: some View {
        ZStack{
            Color(
                red: 0.95,
                    green: 0.97,
                    blue: 1.0
            )
                .ignoresSafeArea()
            VStack (spacing : 16){
                Spacer()
                Text("FinEdge")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.green)
                Text("Welcome Back")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundStyle(.secondary)
                VStack(spacing: 12) {
                    TextField("Email", text: $loginVM.email)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    SecureField("Password", text: $loginVM.password)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                Button("Login") {
                    loginVM.login()
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                Button("Forget Password?"){
                    
                }
                
                Spacer()
                
            }
            .padding()
        }
    }
}

#Preview {
    LoginView()
}
