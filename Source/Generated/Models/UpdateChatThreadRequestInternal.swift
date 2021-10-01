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

/// Request payload for updating a chat thread.
internal struct UpdateChatThreadRequestInternal: Codable {
    // MARK: Properties

    /// Chat thread topic.
    internal let topic: String?

    // MARK: Initializers

    /// Initialize a `UpdateChatThreadRequestInternal` structure.
    /// - Parameters:
    ///   - topic: Chat thread topic.
    internal init(
        topic: String? = nil
    ) {
        self.topic = topic
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case topic = "topic"
    }

    /// Initialize a `UpdateChatThreadRequestInternal` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.topic = try? container.decode(String.self, forKey: .topic)
    }

    /// Encode a `UpdateChatThreadRequestInternal` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if topic != nil { try? container.encode(topic, forKey: .topic) }
    }
}
