import Foundation

public struct UpdateDevice: Codable {
  public let id: UUID?
  public let pushToken: String?
  public let system: Device.System // TODO: remove
  public let osVersion: String
  public let channels: [String]? // TODO: remove channels

  public init(id: UUID? = nil,
              pushToken: String? = nil,
              system: Device.System, // TODO: remove
              osVersion: String,
              channels: [String]? = nil) { // TODO: remove
    self.id = id
    self.pushToken = pushToken
    self.system = system
    self.osVersion = osVersion
    self.channels = channels // TODO: remove
  }
}

public struct Device: Codable {
  public enum System: String, Codable { // TODO: remove
    case iOS
    case android
  }

  public let id: UUID
  public let system: System
  public var osVersion: String
  public var pushToken: String?
  public var channels: [String] // TODO: remove channels

  public init(id: UUID,
              system: System,
              osVersion: String,
              pushToken: String?,
              channels: [String]) { // TODO: remove
    self.id = id
    self.system = system
    self.osVersion = osVersion
    self.pushToken = pushToken
    self.channels = channels // TODO: remove
  }
}
