//
// ServiceLimitsBus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct ServiceLimitsBus: Codable, Hashable {
    public var maxDistance: Int? = 5_000_000
    public var maxLocations: Int? = 50
    public var maxMatrixDistance: Int? = 400_000
    public var maxMatrixLocationPairs: Int? = 2500

    public init(maxDistance: Int? = 5_000_000, maxLocations: Int? = 50, maxMatrixDistance: Int? = 400_000, maxMatrixLocationPairs: Int? = 2500) {
        self.maxDistance = maxDistance
        self.maxLocations = maxLocations
        self.maxMatrixDistance = maxMatrixDistance
        self.maxMatrixLocationPairs = maxMatrixLocationPairs
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case maxDistance = "max_distance"
        case maxLocations = "max_locations"
        case maxMatrixDistance = "max_matrix_distance"
        case maxMatrixLocationPairs = "max_matrix_location_pairs"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(maxDistance, forKey: .maxDistance)
        try container.encodeIfPresent(maxLocations, forKey: .maxLocations)
        try container.encodeIfPresent(maxMatrixDistance, forKey: .maxMatrixDistance)
        try container.encodeIfPresent(maxMatrixLocationPairs, forKey: .maxMatrixLocationPairs)
    }
}
