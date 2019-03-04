

import Foundation




public struct Temperatures: Codable {
    public let this: String
    public let by: String
    public let the: String
    public let with: [With]

    
    enum CodingKeys: String, CodingKey {
        case this = "this"
        case by = "by"
        case the = "the"
        case with = "with"
    }
    
    public init(this: String, by: String, the: String, with: [With]) {
        self.this = this
        self.by = by
        self.the = the
        self.with = with
    }
}

public struct With: Codable {
    public let thing: String
    public let created: String
    public let content: Content
    
    enum CodingKeys: String, CodingKey {
        case thing = "thing"
        case created = "created"
        case content = "content"
    }
    
    public init(thing: String, created: String, content: Content) {
        self.thing = thing
        self.created = created
        self.content = content
    }
}

public struct Content: Codable {
    public let deviceName: String
    public let deviceLocation: String
    public let temperatureData: Int
    public let temperatureUnit: String
    public let accelerometerData: AccelerometerData
    
    enum CodingKeys: String, CodingKey {
        case deviceName = "device_name"
        case deviceLocation = "device_location"
        case temperatureData = "temperature_data"
        case temperatureUnit = "temperature_unit"
        case accelerometerData = "accelerometer_data"
    }
    
    public init(deviceName: String, deviceLocation: String, temperatureData: Int, temperatureUnit: String, accelerometerData: AccelerometerData) {
        self.deviceName = deviceName
        self.deviceLocation = deviceLocation
        self.temperatureData = temperatureData
        self.temperatureUnit = temperatureUnit
        self.accelerometerData = accelerometerData
    }
}

public struct AccelerometerData: Codable {
    public let x: Double
    public let y: Double
    public let z: Double
    
    enum CodingKeys: String, CodingKey {
        case x = "x"
        case y = "y"
        case z = "z"
    }
    
    public init(x: Double, y: Double, z: Double) {
        self.x = x
        self.y = y
        self.z = z
    }
}
