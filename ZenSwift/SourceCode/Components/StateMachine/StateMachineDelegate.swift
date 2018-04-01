import Foundation

public protocol StateMachineDelegate: class {
    associatedtype State: StateMachineDataSource
    
    func willTransition(from: State,
                        to: State)
    func didTransition(from: State,
                       to: State)
    func didAbort(from: State,
                  to: State)
}

public extension StateMachineDelegate {
    
    func willTransition(from: State,
                        to: State) {}
    
    func didTransition(from: State,
                       to: State) {}
    
    func didAbort(from: State,
                  to: State) {}
    
}
