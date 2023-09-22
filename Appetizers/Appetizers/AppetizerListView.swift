//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Samantha Cannillo on 9/22/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    // Initializing VM, use StateObject.
    // Passing in, use ObservedObject
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) { appetizer in
                AppetizerCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(
                title: alertItem.title,
                message: alertItem.message,
                dismissButton: alertItem.dismissButton
            )
        }
    }
}

#Preview {
    AppetizerListView()
}
