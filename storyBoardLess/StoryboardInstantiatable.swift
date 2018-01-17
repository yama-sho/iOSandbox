import UIKit

public protocol StoryboardInstantiatable {}

public extension StoryboardInstantiatable where Self: UIViewController {
    static var storyboardName: String {
        return String.init(describing: Self.self)
    }
    
    static var storyboard: UIStoryboard {
        return UIStoryboard.init(name: storyboardName, bundle: nil)
    }
    
    static func instantiateFromStoryboard() -> Self {
        return storyboard.instantiateInitialViewController() as! Self
    }
}
