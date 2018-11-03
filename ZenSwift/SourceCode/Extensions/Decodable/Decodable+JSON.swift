import Foundation

public extension Decodable {
    
    /// Creates a new instance by decoding from the given JSON string.
    init?(json: String) {
        guard let value = try? JSONDecoder()
            .decode(Self.self, from: Data(json.utf8)) else {
                return nil
        }
        self = value
    }
    
}
