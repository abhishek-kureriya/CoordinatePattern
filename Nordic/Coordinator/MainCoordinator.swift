

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    unowned let navigationController:UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewObj = MainViewController.instantiate(fromAppStoryboard: .Main)
        viewObj.delegate = self
        self.navigationController.viewControllers = [viewObj]
    }
}

extension MainCoordinator: MainViewControllerDelegate{
   
    func navigateToNextPage() {
       
        let introductionCoordinator = IntroductionCoordinator(navigationController: navigationController)
        childCoordinators.append(introductionCoordinator)
        introductionCoordinator.start()

    }

    func navigateToTabBar() {
        
        let tabBarView = TabBarSetupCoordinator(navigationController: navigationController)
          tabBarView.start()
        
    }
    
    
    
}
