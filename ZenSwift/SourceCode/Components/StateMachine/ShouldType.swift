import Foundation

enum Should<T> {
    case execute
    case forward(T)
    case redirect(T)
    case abort(notify: Bool)
}
