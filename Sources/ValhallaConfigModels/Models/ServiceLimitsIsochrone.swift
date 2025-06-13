//
// ServiceLimitsIsochrone.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct ServiceLimitsIsochrone: Codable, Hashable {
    public var maxContours: Int? = 4
    public var maxDistance: Int? = 25000
    public var maxDistanceContour: Int? = 200
    public var maxLocations: Int? = 1
    public var maxTimeContour: Int? = 120

    public init(maxContours: Int? = 4, maxDistance: Int? = 25000, maxDistanceContour: Int? = 200, maxLocations: Int? = 1, maxTimeContour: Int? = 120) {
        self.maxContours = maxContours
        self.maxDistance = maxDistance
        self.maxDistanceContour = maxDistanceContour
        self.maxLocations = maxLocations
        self.maxTimeContour = maxTimeContour
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case maxContours = "max_contours"
        case maxDistance = "max_distance"
        case maxDistanceContour = "max_distance_contour"
        case maxLocations = "max_locations"
        case maxTimeContour = "max_time_contour"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(maxContours, forKey: .maxContours)
        try container.encodeIfPresent(maxDistance, forKey: .maxDistance)
        try container.encodeIfPresent(maxDistanceContour, forKey: .maxDistanceContour)
        try container.encodeIfPresent(maxLocations, forKey: .maxLocations)
        try container.encodeIfPresent(maxTimeContour, forKey: .maxTimeContour)
    }
}
