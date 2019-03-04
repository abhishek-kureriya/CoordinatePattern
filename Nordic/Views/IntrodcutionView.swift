

import Foundation
protocol IntroductionView: NSObjectProtocol {
    
    func startLoading()
    func finishLoading()
    
}


public protocol IntroductionViewDelegate: class {
    
    func navigateToNextPage()
}
