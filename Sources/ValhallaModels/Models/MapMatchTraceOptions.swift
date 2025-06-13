//
// MapMatchTraceOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct MapMatchTraceOptions: Codable, Hashable {
    /** The search radius, in meters, when trying to match each trace point. */
    public var searchRadius: Int?
    /** The accuracy of the GPS, in meters. */
    public var gpsAccuracy: Double?
    /** The breaking distance, in meters, between trace points. */
    public var breakageDistance: Double?
    /** The interpolation distance, in meters, beyond which trace points are merged together. */
    public var interpolationDistance: Double?
    /** Penalizes turns from one road segment to next. For a pedestrian trace, you may see a back-and-forth motion along the streets of your path with the default settings. Try increasing the turn penalty factor to 500 to reduce jitter in the output. Note that if GPS accuracy is already good, increasing this above the default will usually negatively affect the quality of map matching. */
    public var turnPenaltyFactor: Int?

    public init(searchRadius: Int? = nil, gpsAccuracy: Double? = nil, breakageDistance: Double? = nil, interpolationDistance: Double? = nil, turnPenaltyFactor: Int? = nil) {
        self.searchRadius = searchRadius
        self.gpsAccuracy = gpsAccuracy
        self.breakageDistance = breakageDistance
        self.interpolationDistance = interpolationDistance
        self.turnPenaltyFactor = turnPenaltyFactor
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case searchRadius = "search_radius"
        case gpsAccuracy = "gps_accuracy"
        case breakageDistance = "breakage_distance"
        case interpolationDistance = "interpolation_distance"
        case turnPenaltyFactor = "turn_penalty_factor"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(searchRadius, forKey: .searchRadius)
        try container.encodeIfPresent(gpsAccuracy, forKey: .gpsAccuracy)
        try container.encodeIfPresent(breakageDistance, forKey: .breakageDistance)
        try container.encodeIfPresent(interpolationDistance, forKey: .interpolationDistance)
        try container.encodeIfPresent(turnPenaltyFactor, forKey: .turnPenaltyFactor)
    }
}
