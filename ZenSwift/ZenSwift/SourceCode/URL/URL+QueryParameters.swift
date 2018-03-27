import Foundation

extension URL {
    
    /// Returns url with given query parameters.
    func with(_ queryParameters: [String: String]) -> URL? {
        guard var components = URLComponents(url: self,
                                             resolvingAgainstBaseURL: false) else {
            return nil
        }
        var queryItems = queryParameters.map {
            URLQueryItem(name: $0, value: $1)
        }
        if let existingQueryItems = components.queryItems {
            queryItems.append(contentsOf: existingQueryItems)
        }
        components.queryItems = queryItems
        return components.url
    }
    
    /// Add query parameters to url.
    mutating func add(_ queryParameters: [String: String]) {
        guard var components = URLComponents(url: self,
                                             resolvingAgainstBaseURL: false) else {
            return
        }
        var queryItems = queryParameters.map {
            URLQueryItem(name: $0, value: $1)
        }
        if let existingQueryItems = components.queryItems {
            queryItems.append(contentsOf: existingQueryItems)
        }
        components.queryItems = queryItems
        if let url = components.url {
            self = url
        }
    }
    
}
