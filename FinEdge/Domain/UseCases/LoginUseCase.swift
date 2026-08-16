//
//  LoginUseCase.swift
//  FinEdge
//
//  Created by Aravindh Rajaram on 16/08/26.
//

import Foundation

struct LoginUseCase {
    
    func execute(email:String, password:String) async throws {
        try await Task.sleep(for: .seconds(1))
        print("Executing Login..")
    }
}
