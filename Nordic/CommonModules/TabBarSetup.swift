
import UIKit

class TabBarSetup: UITabBarController {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor.orange
        setTabbarItmes()
        
       
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.hidesBackButton = true
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    func setTabbarItmes(){
        
      let chartView  = ChartViewController.instantiate(fromAppStoryboard: .Main)
      let chartViewTab = UINavigationController(rootViewController: chartView)
        chartViewTab.tabBarItem.title = "Home"
        chartViewTab.tabBarItem.image = UIImage(named: "tab-home-inactive")
        chartViewTab.tabBarItem.selectedImage = UIImage(named: "tab-home-active")
        
        let profileView  = ProfileViewController.instantiate(fromAppStoryboard: .Main)
        let profileViewTab = UINavigationController(rootViewController: profileView)
         profileViewTab.tabBarItem.title = "Profile"
         profileViewTab.tabBarItem.image = UIImage(named: "tab-me-inactive")
        profileViewTab.tabBarItem.selectedImage = UIImage(named: "tab-me-active")
       self.viewControllers = [chartViewTab,profileViewTab]
    }
    
    
    
    // UITabBarDelegate
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        
        
        
    }
    
    // UITabBarControllerDelegate
    func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController)
    {
        
    }
    
    
    

    
    
}

