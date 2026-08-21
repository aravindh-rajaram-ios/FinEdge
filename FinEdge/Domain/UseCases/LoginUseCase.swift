//
//  LoginUseCase.swift
//  FinEdge
//
//  Created by Aravindh Rajaram on 16/08/26.
//

import Foundation

struct LoginUseCase {
    
    private let repository: AuthenticationRepository
    
    init(repository: AuthenticationRepository) {
        self.repository = repository
    }
    

    
    func execute(email:String, password:String) async throws {
        try await repository.login(email: email, password: password)
    }
}
