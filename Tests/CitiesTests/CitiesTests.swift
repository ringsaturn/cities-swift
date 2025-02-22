import Testing
@testable import Cities

// Cities Tests
@Test func citiesBasicOperations() async throws {
    // Initialize Cities
    let cities = try Cities()
    #expect(cities.getAllCities().count != 0)
    
    // Test random city retrieval
    let randomCity = cities.getRandomCity()
    #expect(randomCity != nil)
    #expect(!randomCity!.name.isEmpty)
}

@Test func randomDistribution() async throws {
    let cities = try Cities()
    var counts: [String: Int] = [:]
    
    // Run distribution test
    for _ in 0..<1000 {
        if let city = cities.getRandomCity() {
            counts[city.name, default: 0] += 1
        }
    }
    
    // Verify distribution
    #expect(counts.keys.count > 0, "Expected exactly > 0 different cities")
}