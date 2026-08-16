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
        
        //Temporary mock login
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.isLoading = false
            print("logged In")
        }
    }
}
