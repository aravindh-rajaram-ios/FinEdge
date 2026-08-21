//
//  AuthenticationImpl.swift
//  FinEdge
//
//  Created by Aravindh Rajaram on 21/08/26.
//

import Foundation

struct AuthenticationImpl:AuthenticationRepository{
    
    func login(email: String, password: String) async throws {
        try await Task.sleep(for: .seconds(1))
        print("Autentication Successful")
    }
    
}
