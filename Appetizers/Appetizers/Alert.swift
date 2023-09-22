import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
    
    let id = UUID()
}

struct AlertContext {
    
    static let invalidData = AlertItem(
        title: Text("Server Error"),
        message:  Text("The data received from the server was invalid. Please contaxt support"),
        dismissButton: .default(Text("Ok"))
    )
    
    static let invalidResponse = AlertItem(
        title: Text("Server Error"),
        message:  Text("Invalid response from the server. Please try again."),
        dismissButton: .default(Text("Ok"))
    )
    
    static let invalidURL = AlertItem(
        title: Text("Server Error"),
        message:  Text("There was an issue connecting. Try again."),
        dismissButton: .default(Text("Ok"))
    )
    
    static let unableToComplete = AlertItem(
        title: Text("Server Error"),
        message:  Text("Unable to complete operation. Please check your internet connection."),
        dismissButton: .default(Text("Ok"))
    )
}
