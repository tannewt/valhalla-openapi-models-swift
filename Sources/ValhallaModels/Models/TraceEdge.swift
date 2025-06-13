//
// TraceEdge.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct TraceEdge: Codable, Hashable {
    public enum Surface: String, Codable, CaseIterable {
        case pavedSmooth = "paved_smooth"
        case paved
        case pavedRough = "paved_rough"
        case compacted
        case dirt
        case gravel
        case path
        case impassable
    }

    public enum VehicleType: String, Codable, CaseIterable {
        case car
        case motorcycle
        case bus
        case tractorTrailer = "tractor_trailer"
    }

    public enum PedestrianType: String, Codable, CaseIterable {
        case foot
        case wheelchair
        case segway
    }

    public enum BicycleType: String, Codable, CaseIterable {
        case road
        case cross
        case hybrid
        case mountain
    }

    public enum TransitType: String, Codable, CaseIterable {
        case tram
        case metro
        case rail
        case bus
        case ferry
        case cableCar = "cable_car"
        case gondola
        case funicular
    }

    public enum CycleLane: String, Codable, CaseIterable {
        case _none = "none"
        case shared
        case dedicated
        case separated
    }

    public enum Sidewalk: String, Codable, CaseIterable {
        case _left = "left"
        case _right = "right"
        case both
        case _none = "none"
    }

    /** The name(s) of the road at this edge, if any. */
    public var names: [String]?
    /** The length of this edge in `units`. */
    public var length: Double?
    /** The speed of this edge in `units`/hr, in terms of average/free-flow speed for routing purposes. This is affected by any number of factors such as the road service, vehicle type, etc. and not just the posted speed limits. */
    public var speed: Int?
    public var roadClass: RoadClass?
    /** The direction at the beginning of an edge. The units are degrees clockwise from north. */
    public var beginHeading: Int?
    /** The direction at the end of an edge. The units are degrees clockwise from north. */
    public var endHeading: Int?
    /** Index into the list of shape points for the start of the edge. */
    public var beginShapeIndex: Int?
    /** Index into the list of shape points for the end of the edge. */
    public var endShapeIndex: Int?
    public var traversability: Traversability?
    public var use: EdgeUse?
    /** True if the edge has a toll. */
    public var toll: Bool?
    /** True if the edge has rough payment. */
    public var unpaved: Bool?
    /** True if the edge has a tunnel. */
    public var tunnel: Bool?
    /** True if the edge has a bridge. */
    public var bridge: Bool?
    /** True if the edge has a roundabout. */
    public var roundabout: Bool?
    /** True if the edge has an internal intersection. */
    public var internalIntersection: Bool?
    /** True if the edge is in an area where you must drive on the right side of the road. */
    public var driveOnRight: Bool?
    /** The type of surface for the edge. */
    public var surface: Surface?
    public var sign: EdgeSign?
    public var travelMode: TravelMode?
    public var vehicleType: VehicleType?
    public var pedestrianType: PedestrianType?
    public var bicycleType: BicycleType?
    public var transitType: TransitType?
    public var id: Int64?
    /** The way identifier of the edge in OSM. */
    public var wayId: Int64?
    /** The weighted grade factor. Valhalla manufactures a weighted grade from elevation data. It is a measure used for hill avoidance in routing - sort of a relative energy use along an edge. But since an edge in Valhalla can possibly go up and down over several hills it might not equate to what you would normally think of as grade. */
    public var weightedGrade: Double?
    /** The maximum upward slope. A value of 32768 indicates no elevation data is available for this edge. */
    public var maxUpwardGrade: Int?
    /** The maximum downward slope. A value of 32768 indicates no elevation data is available for this edge. */
    public var maxDownwardGrade: Int?
    /** The mean elevation along the edge. Units are meters by default. If the `units` are specified as miles, then the mean elevation is returned in feet. A value of 32768 indicates no elevation data is available for this edge. */
    public var meanElevation: Int?
    /** The number of lanes for this edge. */
    public var laneCount: Int?
    /** The type of cycle lane (if any) along this edge. */
    public var cycleLane: CycleLane?
    /** The type of bicycle network, if any. This is an integer comprised of constants bitwise or'd together. For example, a route that's part of both a local and mountain network would have a value of 12. 1 - National 2 - Regional 4 - Local 8 - Mountain */
    public var bicycleNetwork: Int?
    /** The difficulty of the hiking trail according to the SAC scale. 0 - No Sac Scale 1 - Hiking 2 - Mountain hiking 3 - Demanding mountain hiking 4 - Alpine hiking 5 - Demanding alpine hiking 6 - Difficult alpine hiking */
    public var sacScale: Int?
    public var sidewalk: Sidewalk?
    public var density: Int?
    /** The speed limit along the edge measured in `units`/hr. This may be either an integer or the string \"unlimited\" if speed limit data is available. If absent, there is no speed limit data available. */
    public var speedLimit: AnyCodable?
    /** The truck speed of this edge in `units`/hr, in terms of average/free-flow speed for routing purposes. This is affected by any number of factors such as the road service, vehicle type, etc. and not just the posted speed limits. */
    public var truckSpeed: Int?
    /** True if the edge is part of a truck route/network. */
    public var truckRoute: Bool?
    public var endNode: EndNode?

    public init(names: [String]? = nil, length: Double? = nil, speed: Int? = nil, roadClass: RoadClass? = nil, beginHeading: Int? = nil, endHeading: Int? = nil, beginShapeIndex: Int? = nil, endShapeIndex: Int? = nil, traversability: Traversability? = nil, use: EdgeUse? = nil, toll: Bool? = nil, unpaved: Bool? = nil, tunnel: Bool? = nil, bridge: Bool? = nil, roundabout: Bool? = nil, internalIntersection: Bool? = nil, driveOnRight: Bool? = nil, surface: Surface? = nil, sign: EdgeSign? = nil, travelMode: TravelMode? = nil, vehicleType: VehicleType? = nil, pedestrianType: PedestrianType? = nil, bicycleType: BicycleType? = nil, transitType: TransitType? = nil, id: Int64? = nil, wayId: Int64? = nil, weightedGrade: Double? = nil, maxUpwardGrade: Int? = nil, maxDownwardGrade: Int? = nil, meanElevation: Int? = nil, laneCount: Int? = nil, cycleLane: CycleLane? = nil, bicycleNetwork: Int? = nil, sacScale: Int? = nil, sidewalk: Sidewalk? = nil, density: Int? = nil, speedLimit: AnyCodable? = nil, truckSpeed: Int? = nil, truckRoute: Bool? = nil, endNode: EndNode? = nil) {
        self.names = names
        self.length = length
        self.speed = speed
        self.roadClass = roadClass
        self.beginHeading = beginHeading
        self.endHeading = endHeading
        self.beginShapeIndex = beginShapeIndex
        self.endShapeIndex = endShapeIndex
        self.traversability = traversability
        self.use = use
        self.toll = toll
        self.unpaved = unpaved
        self.tunnel = tunnel
        self.bridge = bridge
        self.roundabout = roundabout
        self.internalIntersection = internalIntersection
        self.driveOnRight = driveOnRight
        self.surface = surface
        self.sign = sign
        self.travelMode = travelMode
        self.vehicleType = vehicleType
        self.pedestrianType = pedestrianType
        self.bicycleType = bicycleType
        self.transitType = transitType
        self.id = id
        self.wayId = wayId
        self.weightedGrade = weightedGrade
        self.maxUpwardGrade = maxUpwardGrade
        self.maxDownwardGrade = maxDownwardGrade
        self.meanElevation = meanElevation
        self.laneCount = laneCount
        self.cycleLane = cycleLane
        self.bicycleNetwork = bicycleNetwork
        self.sacScale = sacScale
        self.sidewalk = sidewalk
        self.density = density
        self.speedLimit = speedLimit
        self.truckSpeed = truckSpeed
        self.truckRoute = truckRoute
        self.endNode = endNode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case names
        case length
        case speed
        case roadClass = "road_class"
        case beginHeading = "begin_heading"
        case endHeading = "end_heading"
        case beginShapeIndex = "begin_shape_index"
        case endShapeIndex = "end_shape_index"
        case traversability
        case use
        case toll
        case unpaved
        case tunnel
        case bridge
        case roundabout
        case internalIntersection = "internal_intersection"
        case driveOnRight = "drive_on_right"
        case surface
        case sign
        case travelMode = "travel_mode"
        case vehicleType = "vehicle_type"
        case pedestrianType = "pedestrian_type"
        case bicycleType = "bicycle_type"
        case transitType = "transit_type"
        case id
        case wayId = "way_id"
        case weightedGrade = "weighted_grade"
        case maxUpwardGrade = "max_upward_grade"
        case maxDownwardGrade = "max_downward_grade"
        case meanElevation = "mean_elevation"
        case laneCount = "lane_count"
        case cycleLane = "cycle_lane"
        case bicycleNetwork = "bicycle_network"
        case sacScale = "sac_scale"
        case sidewalk
        case density
        case speedLimit = "speed_limit"
        case truckSpeed = "truck_speed"
        case truckRoute = "truck_route"
        case endNode = "end_node"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(names, forKey: .names)
        try container.encodeIfPresent(length, forKey: .length)
        try container.encodeIfPresent(speed, forKey: .speed)
        try container.encodeIfPresent(roadClass, forKey: .roadClass)
        try container.encodeIfPresent(beginHeading, forKey: .beginHeading)
        try container.encodeIfPresent(endHeading, forKey: .endHeading)
        try container.encodeIfPresent(beginShapeIndex, forKey: .beginShapeIndex)
        try container.encodeIfPresent(endShapeIndex, forKey: .endShapeIndex)
        try container.encodeIfPresent(traversability, forKey: .traversability)
        try container.encodeIfPresent(use, forKey: .use)
        try container.encodeIfPresent(toll, forKey: .toll)
        try container.encodeIfPresent(unpaved, forKey: .unpaved)
        try container.encodeIfPresent(tunnel, forKey: .tunnel)
        try container.encodeIfPresent(bridge, forKey: .bridge)
        try container.encodeIfPresent(roundabout, forKey: .roundabout)
        try container.encodeIfPresent(internalIntersection, forKey: .internalIntersection)
        try container.encodeIfPresent(driveOnRight, forKey: .driveOnRight)
        try container.encodeIfPresent(surface, forKey: .surface)
        try container.encodeIfPresent(sign, forKey: .sign)
        try container.encodeIfPresent(travelMode, forKey: .travelMode)
        try container.encodeIfPresent(vehicleType, forKey: .vehicleType)
        try container.encodeIfPresent(pedestrianType, forKey: .pedestrianType)
        try container.encodeIfPresent(bicycleType, forKey: .bicycleType)
        try container.encodeIfPresent(transitType, forKey: .transitType)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(wayId, forKey: .wayId)
        try container.encodeIfPresent(weightedGrade, forKey: .weightedGrade)
        try container.encodeIfPresent(maxUpwardGrade, forKey: .maxUpwardGrade)
        try container.encodeIfPresent(maxDownwardGrade, forKey: .maxDownwardGrade)
        try container.encodeIfPresent(meanElevation, forKey: .meanElevation)
        try container.encodeIfPresent(laneCount, forKey: .laneCount)
        try container.encodeIfPresent(cycleLane, forKey: .cycleLane)
        try container.encodeIfPresent(bicycleNetwork, forKey: .bicycleNetwork)
        try container.encodeIfPresent(sacScale, forKey: .sacScale)
        try container.encodeIfPresent(sidewalk, forKey: .sidewalk)
        try container.encodeIfPresent(density, forKey: .density)
        try container.encodeIfPresent(speedLimit, forKey: .speedLimit)
        try container.encodeIfPresent(truckSpeed, forKey: .truckSpeed)
        try container.encodeIfPresent(truckRoute, forKey: .truckRoute)
        try container.encodeIfPresent(endNode, forKey: .endNode)
    }
}

@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension TraceEdge: Identifiable {}
