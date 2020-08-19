import Foundation

public struct UpdateDevice: Codable {
  public let id: UUID?
  public let pushToken: String?
  public let osVersion: String

  public init(id: UUID? = nil,
              pushToken: String? = nil,
              osVersion: String) {
    self.id = id
    self.pushToken = pushToken
    self.osVersion = osVersion
  }
}

public struct Device: Codable {

  public let id: UUID
  public var osVersion: String
  public var pushToken: String?

  public init(id: UUID,
              osVersion: String,
              pushToken: String?) {
    self.id = id
    self.osVersion = osVersion
    self.pushToken = pushToken
  }
}
