import UIKit

public extension UIViewController {
    public func present<T: StoryboardInstantiatable>(viewControllerTypeToPresent: T.Type, animated: Bool = true, completion: (() -> Void)? = nil, configuration: ((T) -> Void)?) where T: UIViewController {
        let vc = T.instantiateFromStoryboard()
        _ = vc.view
        configuration?(vc)
        present(vc, animated: animated, completion: completion)
    }
    
    public func show<T: StoryboardInstantiatable>(_ vcType: T.Type, sender: Any?, configuration: ((T) -> Void)?) where T: UIViewController {
        let vc = T.instantiateFromStoryboard()
        _ = vc.view
        configuration?(vc)
        show(vc, sender: sender)
    }
}
