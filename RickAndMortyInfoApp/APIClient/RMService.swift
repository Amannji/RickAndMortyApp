//
//  RMService.swift
//  RickAndMortyInfoApp
//
//  Created by Aman Gupta on 22/08/24.
//

import Foundation


/// Primary API Service object to get Rick and Morty Data
final class RMService{
    
    /// Shared singleton service
    static let shared = RMService()
    
    private init(){}
    
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
}
