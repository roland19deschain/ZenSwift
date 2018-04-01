import Foundation

protocol StateMachineDataSource {
    func shouldTransition(from: Self,
                          to: Self) -> Should<Self>
}
