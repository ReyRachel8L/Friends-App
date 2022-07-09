import Foundation
struct Friend: Identifiable,Codable{
    let id = UUID()
    
    var name: String
    var description: String
    var notes: String
    var IQ: Double = 100
}
