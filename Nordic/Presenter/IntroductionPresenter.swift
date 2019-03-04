

import Foundation
import UIKit

class IntroductionPresenter{
    weak private var view : IntroductionView?
    
    init(){}
    
    func attachView(view:IntroductionView){
        self.view = view
    }
    func detachView() {
        view = nil
    }
}
