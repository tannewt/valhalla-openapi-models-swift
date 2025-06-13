//
// MapMatchWaypoint.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct MapMatchWaypoint: Codable, Hashable {
    public enum ModelType: String, Codable, CaseIterable {
        case _break = "break"
        case through
        case via
        case breakThrough = "break_through"
    }

    /** The latitude of a point in the shape. */
    public var lat: Double
    /** The longitude of a point in the shape. */
    public var lon: Double
    /** A `break` represents the start or end of a leg, and allows reversals. A `through` location is an intermediate waypoint that must be visited between `break`s, but at which reversals are not allowed. A `via` is similar to a `through` except that reversals are allowed. A `break_through` is similar to a `break` in that it can be the start/end of a leg, but does not allow reversals. */
    public var type: ModelType? = ._break
    /** The timestamp of the waypoint, in seconds. This can inform the map matching algorithm about when the point was measured. A UNIX timestamp, or any increasing integer sequence measuring seconds from some reference point can be used. */
    public var time: Int?

    public init(lat: Double, lon: Double, type: ModelType? = ._break, time: Int? = nil) {
        self.lat = lat
        self.lon = lon
        self.type = type
        self.time = time
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case lat
        case lon
        case type
        case time
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(lat, forKey: .lat)
        try container.encode(lon, forKey: .lon)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(time, forKey: .time)
    }
}
