import Foundation

public extension String {
    
    /// Returns a url if it's possible.
    var url: URL? { return URL(string: self) }
    
    /// Returns a web url if it's possible.
    var webUrl: URL? {
        guard let url = url, !url.isFileURL else {
            return nil
        }
        return url
    }
    
    /// Returns a file url if it's possible.
    var fileUrl: URL? {
        guard let url = url, url.isFileURL else {
            return nil
        }
        return url
    }
    
}
