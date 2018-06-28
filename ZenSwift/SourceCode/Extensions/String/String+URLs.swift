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
    
    /// Returns an array of detected urls
//    var detectedURLs: [URL] {
//        let checkingType = NSTextCheckingResult.CheckingType.link
//        guard let detector = try? NSDataDetector(types: checkingType.rawValue) else {
//            return []
//        }
//        let range = NSRange(location: 0, length: count)
//        return detector
//            .matches(in: self,
//                     options: [],
//                     range: range)
//            .compactMap {
//                $0.resultType == checkingType ? $0.url : nil
//        }
//    }
    
    /**
     Enumerates an array of detected urls. Process may be interrupted by
     setting pointer to boolean value (stop flag) to true.
     
     For Example:
     ```
     text.detectURLs { url, stop in
         if url == needle {
             // stop this loop
             stop.pointee = true
         }
     }
     ```
     */
//    func detectURLs(handler: @escaping (URL, UnsafeMutablePointer<ObjCBool>) -> Void) {
//        let checkingType = NSTextCheckingResult.CheckingType.link
//        let range = NSRange(location: 0, length: count)
//        (try? NSDataDetector(types: checkingType.rawValue))?
//            .enumerateMatches(in: self,
//                              options: [],
//                              range: range) { result, flags, stop in
//                                guard let result = result,
//                                    let url = result.url,
//                                    result.resultType == checkingType else {
//                                        return
//                                }
//                                handler(url, stop)
//        }
//    }
    
}
