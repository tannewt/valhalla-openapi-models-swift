//
// BicycleCostingOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct BicycleCostingOptions: Codable, Hashable {
    public enum BicycleType: String, Codable, CaseIterable {
        case road = "Road"
        case hybrid = "Hybrid"
        case cross = "Cross"
        case mountain = "Mountain"
    }

    public static let useLivingStreetsRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    public static let useFerryRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    public static let useRoadsRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    public static let useHillsRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    public static let avoidBadSurfacesRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 1, exclusiveMaximum: false, multipleOf: nil)
    /** A penalty (in seconds) applied when transitioning between roads (determined by name). */
    public var maneuverPenalty: Int? = 5
    /** The estimated cost (in seconds) when a gate is encountered. */
    public var gateCost: Int? = 15
    /** A penalty (in seconds) applied to the route cost when a gate is encountered. This penalty can be used to reduce the likelihood of suggesting a route with gates unless absolutely necessary. */
    public var gatePenalty: Int? = 300
    /** The estimated cost (in seconds) when encountering an international border. */
    public var countryCrossingCost: Int? = 600
    /** A penalty applied to transitions to international border crossings. This penalty can be used to reduce the likelihood of suggesting a route with border crossings unless absolutely necessary. */
    public var countryCrossingPenalty: Int? = 0
    /** A penalty applied to transitions to service roads. This penalty can be used to reduce the likelihood of suggesting a route with service roads unless absolutely necessary. The default penalty is 15 for cars, busses, motor scooters, and motorcycles; and zero for others. */
    public var servicePenalty: Int?
    /** A factor that multiplies the cost when service roads are encountered. The default is 1.2 for cars and busses, and 1 for trucks, motor scooters, and motorcycles. */
    public var serviceFactor: Double? = 1
    /** A measure of willingness to take living streets. Values near 0 attempt to avoid them, and values near 1 will favour them. Note that as some routes may be impossible without living streets, 0 does not guarantee avoidance of them. The default value is 0 for trucks; 0.1 for other motor vehicles; 0.5 for bicycles; and 0.6 for pedestrians. */
    public var useLivingStreets: Double?
    /** A measure of willingness to take ferries. Values near 0 attempt to avoid ferries, and values near 1 will favour them. Note that as some routes may be impossible without ferries, 0 does not guarantee avoidance of them. */
    public var useFerry: Double? = 0.5
    public var bicycleType: BicycleType? = .hybrid
    /** The average comfortable travel speed (in kph) along smooth, flat roads. The costing will vary the speed based on the surface, bicycle type, elevation change, etc. This value should be the average sustainable cruising speed the cyclist can maintain over the entire route. The default speeds are as follows based on bicycle type:   * Road - 25kph   * Cross - 20kph   * Hybrid - 18kph   * Mountain - 16kph */
    public var cyclingSpeed: Int?
    /** A measure of willingness to use roads alongside other vehicles. Values near 0 attempt to avoid roads and stay on cycleways, and values near 1 indicate the cyclist is more comfortable on roads. */
    public var useRoads: Double? = 0.5
    /** A measure of willingness to take tackle hills. Values near 0 attempt to avoid hills and steeper grades even if it means a longer route, and values near 1 indicates that the user does not fear them. Note that as some routes may be impossible without hills, 0 does not guarantee avoidance of them. */
    public var useHills: Double? = 0.5
    /** A measure of how much the cyclist wants to avoid roads with poor surfaces relative to the type of bicycle being ridden. When 0, there is no penalization of roads with poorer surfaces, and only bicycle speed is taken into account. As the value approaches 1, roads with poor surfaces relative to the bicycle type receive a heaver penalty, so they will only be taken if they significantly reduce travel time. When the value is 1, all bad surfaces are completely avoided from the route, including the start and end points. */
    public var avoidBadSurfaces: Double? = 0.25
    /** The estimated cost (in seconds) to return a bicycle in `bikeshare` mode. */
    public var bssReturnCost: Int? = 120
    /** A penalty (in seconds) to return a bicycle in `bikeshare` mode. */
    public var bssReturnPenalty: Int? = 0

    public init(maneuverPenalty: Int? = 5, gateCost: Int? = 15, gatePenalty: Int? = 300, countryCrossingCost: Int? = 600, countryCrossingPenalty: Int? = 0, servicePenalty: Int? = nil, serviceFactor: Double? = 1, useLivingStreets: Double? = nil, useFerry: Double? = 0.5, bicycleType: BicycleType? = .hybrid, cyclingSpeed: Int? = nil, useRoads: Double? = 0.5, useHills: Double? = 0.5, avoidBadSurfaces: Double? = 0.25, bssReturnCost: Int? = 120, bssReturnPenalty: Int? = 0) {
        self.maneuverPenalty = maneuverPenalty
        self.gateCost = gateCost
        self.gatePenalty = gatePenalty
        self.countryCrossingCost = countryCrossingCost
        self.countryCrossingPenalty = countryCrossingPenalty
        self.servicePenalty = servicePenalty
        self.serviceFactor = serviceFactor
        self.useLivingStreets = useLivingStreets
        self.useFerry = useFerry
        self.bicycleType = bicycleType
        self.cyclingSpeed = cyclingSpeed
        self.useRoads = useRoads
        self.useHills = useHills
        self.avoidBadSurfaces = avoidBadSurfaces
        self.bssReturnCost = bssReturnCost
        self.bssReturnPenalty = bssReturnPenalty
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case maneuverPenalty = "maneuver_penalty"
        case gateCost = "gate_cost"
        case gatePenalty = "gate_penalty"
        case countryCrossingCost = "country_crossing_cost"
        case countryCrossingPenalty = "country_crossing_penalty"
        case servicePenalty = "service_penalty"
        case serviceFactor = "service_factor"
        case useLivingStreets = "use_living_streets"
        case useFerry = "use_ferry"
        case bicycleType = "bicycle_type"
        case cyclingSpeed = "cycling_speed"
        case useRoads = "use_roads"
        case useHills = "use_hills"
        case avoidBadSurfaces = "avoid_bad_surfaces"
        case bssReturnCost = "bss_return_cost"
        case bssReturnPenalty = "bss_return_penalty"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(maneuverPenalty, forKey: .maneuverPenalty)
        try container.encodeIfPresent(gateCost, forKey: .gateCost)
        try container.encodeIfPresent(gatePenalty, forKey: .gatePenalty)
        try container.encodeIfPresent(countryCrossingCost, forKey: .countryCrossingCost)
        try container.encodeIfPresent(countryCrossingPenalty, forKey: .countryCrossingPenalty)
        try container.encodeIfPresent(servicePenalty, forKey: .servicePenalty)
        try container.encodeIfPresent(serviceFactor, forKey: .serviceFactor)
        try container.encodeIfPresent(useLivingStreets, forKey: .useLivingStreets)
        try container.encodeIfPresent(useFerry, forKey: .useFerry)
        try container.encodeIfPresent(bicycleType, forKey: .bicycleType)
        try container.encodeIfPresent(cyclingSpeed, forKey: .cyclingSpeed)
        try container.encodeIfPresent(useRoads, forKey: .useRoads)
        try container.encodeIfPresent(useHills, forKey: .useHills)
        try container.encodeIfPresent(avoidBadSurfaces, forKey: .avoidBadSurfaces)
        try container.encodeIfPresent(bssReturnCost, forKey: .bssReturnCost)
        try container.encodeIfPresent(bssReturnPenalty, forKey: .bssReturnPenalty)
    }
}
