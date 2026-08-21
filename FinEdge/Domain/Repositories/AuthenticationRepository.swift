//
//  AuthenticationRepository.swift
//  FinEdge
//
//  Created by Aravindh Rajaram on 16/08/26.
//

import Foundation

protocol AuthenticationRepository{
    func login(email:String, password:String)async throws
}
