

import Foundation
import UIKit

class  IntroductionCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    unowned let navigationController:UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    let viewObj = IntroductionViewController.instantiate(fromAppStoryboard: .Introduction)
       viewObj.delegate = self
        self.navigationController.isNavigationBarHidden = true
       self.navigationController.pushViewController(viewObj, animated: true)
    }
}

extension IntroductionCoordinator:IntroductionViewDelegate{
   
    func navigateToNextPage() {
        let tabBarView = TabBarSetupCoordinator(navigationController: navigationController)
          tabBarView.start()
    }
    
    
    
}
