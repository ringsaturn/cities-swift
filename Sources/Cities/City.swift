import Foundation

public struct City: Codable {
    public let name: String
    public let lat: String
    public let lng: String
    public let country: String
    public let admin1: String
    public let admin2: String
    
    public init(name: String, lat: String, lng: String, country: String, admin1: String, admin2: String) {
        self.name = name
        self.lat = lat
        self.lng = lng
        self.country = country
        self.admin1 = admin1
        self.admin2 = admin2
    }
}
