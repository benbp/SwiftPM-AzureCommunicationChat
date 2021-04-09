// --------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// --------------------------------------------------------------------------

import AzureCore
import Foundation
// swiftlint:disable superfluous_disable_command
// swiftlint:disable identifier_name
// swiftlint:disable line_length
// swiftlint:disable cyclomatic_complexity

/// Chat thread.
public struct ChatThreadPropertiesInternal: Codable {
    // MARK: Properties

    /// Chat thread id.
    public let id: String
    /// Chat thread topic.
    public let topic: String
    /// The timestamp when the chat thread was created. The timestamp is in RFC3339 format: `yyyy-MM-ddTHH:mm:ssZ`.
    public let createdOn: Iso8601Date
    /// Identifies a participant in Azure Communication services. A participant is, for example, a phone number or an Azure communication user. This model must be interpreted as a union: Apart from rawId, at most one further property may be set.
    public let createdByCommunicationIdentifier: CommunicationIdentifierModel
    /// The timestamp when the chat thread was deleted. The timestamp is in RFC3339 format: `yyyy-MM-ddTHH:mm:ssZ`.
    public let deletedOn: Iso8601Date?

    // MARK: Initializers

    /// Initialize a `ChatThreadPropertiesInternal` structure.
    /// - Parameters:
    ///   - id: Chat thread id.
    ///   - topic: Chat thread topic.
    ///   - createdOn: The timestamp when the chat thread was created. The timestamp is in RFC3339 format: `yyyy-MM-ddTHH:mm:ssZ`.
    ///   - createdByCommunicationIdentifier: Identifies a participant in Azure Communication services. A participant is, for example, a phone number or an Azure communication user. This model must be interpreted as a union: Apart from rawId, at most one further property may be set.
    ///   - deletedOn: The timestamp when the chat thread was deleted. The timestamp is in RFC3339 format: `yyyy-MM-ddTHH:mm:ssZ`.
    public init(
        id: String, topic: String, createdOn: Iso8601Date,
        createdByCommunicationIdentifier: CommunicationIdentifierModel,
        deletedOn: Iso8601Date? = nil
    ) {
        self.id = id
        self.topic = topic
        self.createdOn = createdOn
        self.createdByCommunicationIdentifier = createdByCommunicationIdentifier
        self.deletedOn = deletedOn
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case topic = "topic"
        case createdOn = "createdOn"
        case createdByCommunicationIdentifier = "createdByCommunicationIdentifier"
        case deletedOn = "deletedOn"
    }

    /// Initialize a `ChatThreadPropertiesInternal` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.topic = try container.decode(String.self, forKey: .topic)
        self.createdOn = try container.decode(Iso8601Date.self, forKey: .createdOn)
        self.createdByCommunicationIdentifier = try container.decode(
            CommunicationIdentifierModel.self,
            forKey: .createdByCommunicationIdentifier
        )
        self.deletedOn = try? container.decode(Iso8601Date.self, forKey: .deletedOn)
    }

    /// Encode a `ChatThreadPropertiesInternal` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(topic, forKey: .topic)
        try container.encode(createdOn, forKey: .createdOn)
        try container.encode(createdByCommunicationIdentifier, forKey: .createdByCommunicationIdentifier)
        if deletedOn != nil { try? container.encode(deletedOn, forKey: .deletedOn) }
    }
}
