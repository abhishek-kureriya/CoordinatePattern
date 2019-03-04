

import UIKit



class MainViewController: UIViewController {

    private var presenter = MainPresenter()
    public weak var delegate: MainViewControllerDelegate?
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
       presenter.attachView(view: self)
       presenter.appState()
    }
    

    

}

extension MainViewController : MainView{
    func startLoading() {
        
    }
    
    func finishLoading() {
        delegate?.navigateToNextPage()
    }
    
    
}
