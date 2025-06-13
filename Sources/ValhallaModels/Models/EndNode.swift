//
// EndNode.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

/** The node at the end of this edge */
public struct EndNode: Codable, Hashable {
    /** A set of edges intersecting this node. */
    public var intersectingEdges: [IntersectingEdge]?
    /** The elapsed time along the path to arrive at this node. */
    public var elapsedTime: Double?
    /** The index into the `admins` list in which this node lies. */
    public var adminIndex: Int?
    public var type: NodeType?
    /** True if this node is a fork. */
    public var fork: Bool?
    /** The canonical TZDB identifier for the node's time zone. */
    public var timeZone: String?

    public init(intersectingEdges: [IntersectingEdge]? = nil, elapsedTime: Double? = nil, adminIndex: Int? = nil, type: NodeType? = nil, fork: Bool? = nil, timeZone: String? = nil) {
        self.intersectingEdges = intersectingEdges
        self.elapsedTime = elapsedTime
        self.adminIndex = adminIndex
        self.type = type
        self.fork = fork
        self.timeZone = timeZone
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case intersectingEdges = "intersecting_edges"
        case elapsedTime = "elapsed_time"
        case adminIndex = "admin_index"
        case type
        case fork
        case timeZone = "time_zone"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(intersectingEdges, forKey: .intersectingEdges)
        try container.encodeIfPresent(elapsedTime, forKey: .elapsedTime)
        try container.encodeIfPresent(adminIndex, forKey: .adminIndex)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(fork, forKey: .fork)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
    }
}
