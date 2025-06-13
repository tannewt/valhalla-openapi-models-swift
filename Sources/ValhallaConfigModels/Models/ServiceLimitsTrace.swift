//
// ServiceLimitsTrace.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct ServiceLimitsTrace: Codable, Hashable {
    public var maxAlternates: Int? = 3
    public var maxAlternatesShape: Int? = 100
    public var maxDistance: Int? = 200_000
    public var maxGpsAccuracy: Int? = 100
    public var maxSearchRadius: Int? = 100
    public var maxShape: Int? = 16000

    public init(maxAlternates: Int? = 3, maxAlternatesShape: Int? = 100, maxDistance: Int? = 200_000, maxGpsAccuracy: Int? = 100, maxSearchRadius: Int? = 100, maxShape: Int? = 16000) {
        self.maxAlternates = maxAlternates
        self.maxAlternatesShape = maxAlternatesShape
        self.maxDistance = maxDistance
        self.maxGpsAccuracy = maxGpsAccuracy
        self.maxSearchRadius = maxSearchRadius
        self.maxShape = maxShape
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case maxAlternates = "max_alternates"
        case maxAlternatesShape = "max_alternates_shape"
        case maxDistance = "max_distance"
        case maxGpsAccuracy = "max_gps_accuracy"
        case maxSearchRadius = "max_search_radius"
        case maxShape = "max_shape"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(maxAlternates, forKey: .maxAlternates)
        try container.encodeIfPresent(maxAlternatesShape, forKey: .maxAlternatesShape)
        try container.encodeIfPresent(maxDistance, forKey: .maxDistance)
        try container.encodeIfPresent(maxGpsAccuracy, forKey: .maxGpsAccuracy)
        try container.encodeIfPresent(maxSearchRadius, forKey: .maxSearchRadius)
        try container.encodeIfPresent(maxShape, forKey: .maxShape)
    }
}
