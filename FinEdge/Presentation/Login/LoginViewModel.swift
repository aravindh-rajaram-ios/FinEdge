//
//  LoginViewModel.swift
//  FinEdge
//
//  Created by Aravindh Rajaram on 15/08/26.
//
import Foundation
import Combine

@MainActor
final class LoginViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    private let loginUseCase: LoginUseCase
    
    init(loginUseCase: LoginUseCase = LoginUseCase()) {
        self.loginUseCase = loginUseCase
    }
    
    func login(){
        errorMessage = nil
        
        guard !email.isEmpty else {
            errorMessage = "Please enter your email."
            return
        }
        
        guard !password.isEmpty else {
            errorMessage = "Please enter your password."
            return
        }
        
        guard email.contains("@") else {
            errorMessage = "Please enter a valid email."
            return
        }
        
        isLoading = true
        
        Task {
            do {
                try await loginUseCase.execute(email: email, password: password)
                
                isLoading = false
                print("Login Successfully")
            }
            catch{
                isLoading = false
                errorMessage = error.localizedDescription
            }
        }
    }
}
