

import Foundation

protocol MainView: NSObjectProtocol {
   
    func startLoading()
    func finishLoading()
    
}

public protocol MainViewControllerDelegate: class {
    
    func navigateToNextPage()
}
