import Foundation

protocol StateMachineDelegate: class {
    associatedtype State: StateMachineDataSource
    
    func willTransition(from: State,
                        to: State)
    func didTransition(from: State,
                       to: State)
    func didAbort(from: State,
                  to: State)
}

extension StateMachineDelegate {
    
    func willTransition(from: State,
                        to: State) {}
    
    func didTransition(from: State,
                       to: State) {}
    
    func didAbort(from: State,
                  to: State) {}
    
}
