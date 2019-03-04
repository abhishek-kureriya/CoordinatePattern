

import Foundation
import UIKit

class MainPresenter{

    weak private var mainView : MainView?
    
    init(){}
    func attachView(view:MainView){
        mainView = view
    }
    func detachView() {
        mainView = nil
    }
    func appState(){
    self.mainView?.finishLoading()
    
    }
    
}




