//
// ThorLogging.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct ThorLogging: Codable, Hashable {
    public var color: Bool? = true
    public var fileName: String? = "path_to_some_file.log"
    public var longRequest: Int? = 110
    public var type: String? = "std_out"

    public init(color: Bool? = true, fileName: String? = "path_to_some_file.log", longRequest: Int? = 110, type: String? = "std_out") {
        self.color = color
        self.fileName = fileName
        self.longRequest = longRequest
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case color
        case fileName = "file_name"
        case longRequest = "long_request"
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(color, forKey: .color)
        try container.encodeIfPresent(fileName, forKey: .fileName)
        try container.encodeIfPresent(longRequest, forKey: .longRequest)
        try container.encodeIfPresent(type, forKey: .type)
    }
}
