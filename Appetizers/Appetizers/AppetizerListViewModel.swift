//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Samantha Cannillo on 9/22/23.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    // Published so that any time it changes, we broadcast the changes to whoever is listening
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    
    init() {
        getAppetizers()
    }
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async { [self] in
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
