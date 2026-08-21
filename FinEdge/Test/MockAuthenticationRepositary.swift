//
//  MockAuthenticationRepositary.swift
//  FinEdge
//
//  Created by Aravindh Rajaram on 21/08/26.
//

import Foundation

struct MockAuthenticationRepositary:AuthenticationRepository{
    
    func login(email: String, password: String) async throws {
        print("Authentication Test..")
    }
}
