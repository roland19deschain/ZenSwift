import Foundation

public final class StateMachine<Delegate: StateMachineDelegate> {
	
	// MARK: - Computed Properties - Private
	
	public var state: Delegate.State {
		get {
			return currentState
		}
		set {
			switch state.shouldTransition(from: currentState, to: newValue) {
			case .execute:
				currentState = newValue
			case .forward(let forwardState):
				self.state = forwardState
			case .redirect(let redirectState):
				currentState = newValue
				self.state = redirectState
			case .abort(let notify):
				if notify {
					delegate?.didAbort(from: currentState, to: newValue)
				}
			}
		}
	}
	
	// MARK: - Stored Properties - Private
	
	private var currentState: Delegate.State {
		willSet {
			delegate?.willTransition(from: currentState, to: newValue)
		}
		didSet {
			delegate?.didTransition(from: oldValue, to: currentState)
		}
	}
	
	// MARK: - Stored Properties - Public
	
	public weak var delegate: Delegate?
	
	// MARK: - Life Cycle
	
	public init(state: Delegate.State) {
		currentState = state
	}
	
	public convenience init(delegate: Delegate, state: Delegate.State) {
		self.init(state: state)
		self.delegate = delegate
	}
	
}
