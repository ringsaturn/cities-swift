// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public enum CitiesError: Error {
  case fileNotFound
  case decodingError
}

public class Cities {
  private var cities: [City] = []

  public init() throws {
    try loadCities()
  }

  private func loadCities() throws {
    guard let url = Bundle.module.url(forResource: "cities", withExtension: "json") else {
      throw CitiesError.fileNotFound
    }

    let data = try Data(contentsOf: url)
    cities = try JSONDecoder().decode([City].self, from: data)
  }

  public func getAllCities() -> [City] {
    return cities
  }

  public func getRandomCity() -> City? {
    return cities.randomElement()
  }
}
