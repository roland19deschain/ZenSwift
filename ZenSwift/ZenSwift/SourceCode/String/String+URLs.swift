import Foundation

extension String {
    
    var url: URL? { return URL(string: self) }
    
}

extension String {
    
    var webUrl: URL? {
        guard let url = url, !url.isFileURL else {
            return nil
        }
        return url
    }
    
}

extension String {
    
    var fileUrl: URL? {
        guard let url = url, url.isFileURL else {
            return nil
        }
        return url
    }
    
}
