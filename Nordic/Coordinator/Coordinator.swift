

import UIKit

public protocol Coordinator : class {
    
    var childCoordinators: [Coordinator] { get set }
    
    // All coordinators will be initilised with a navigation controller
    init(navigationController:UINavigationController)
    
    func start()
}
