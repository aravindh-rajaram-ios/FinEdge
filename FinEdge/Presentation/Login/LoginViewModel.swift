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
    @Published var error: String?
    
    func login(){
        print("Email : \(email)")
        print("Password : \(password)")
    }
}
