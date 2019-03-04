

import Foundation
import UIKit

class  TabBarSetupCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    unowned let navigationController:UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let viewObj = TabBarSetup.instantiate(fromAppStoryboard: .Main)
          
            self.navigationController.pushViewController(viewObj, animated: true)
    }
}
