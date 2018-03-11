import Foundation

public extension String {
    
    var url: URL? { return URL(string: self) }
    
}

public extension String {
    
    var webUrl: URL? {
        guard let url = url, !url.isFileURL else {
            return nil
        }
        return url
    }
    
}

public extension String {
    
    var fileUrl: URL? {
        guard let url = url, url.isFileURL else {
            return nil
        }
        return url
    }
    
}
