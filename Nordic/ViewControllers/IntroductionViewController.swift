import UIKit
class IntroductionViewController: UIViewController{
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var skipButton: UIButton!
    private var presenter = IntroductionPresenter()
    @IBOutlet weak var pageController: UIPageControl!
    public weak var delegate: IntroductionViewDelegate?
    private var currentPage = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        presenter.attachView(view:self)
        setGestureControl()
        updateViewLayout()
        
    }
    

    @IBAction func loadNextView(_ sender: Any) {
        delegate?.navigateToNextPage()
    }
    
    func  updateViewLayout(){
        
        skipButton.backgroundColor = .mainColor
        descriptionLabel.text = Constant.introDescription[currentPage]
        currentPage = 0
        pageController.numberOfPages = Constant.introDescription.count
        pageController.currentPage = currentPage
        
    }
    
    func setGestureControl()
    {
        let leftTorightSwipe:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(IntroductionViewController.nextButtonTapped(_:)))
        leftTorightSwipe.direction = .left
        view.addGestureRecognizer(leftTorightSwipe)
        
        let rightToleftSwipe:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(IntroductionViewController.previousButtonTapped(_:)))
        rightToleftSwipe.direction = .right
        
        view.addGestureRecognizer(rightToleftSwipe)
       
    }
    
    func setData()
    {
        backgroundImage.image = UIImage(named: Constant.introBackGroudImage[currentPage])
        pageController.currentPage = currentPage
        descriptionLabel.text = Constant.introDescription[currentPage]
        pageController.numberOfPages = Constant.introDescription.count
        
    }
    
    @IBAction func nextButtonTapped(_ sender: AnyObject) {
          currentPage += 1
        if currentPage == Constant.introBackGroudImage.count
        {  currentPage =  Constant.introBackGroudImage.count-1
            return
        }
        if currentPage < Constant.introBackGroudImage.count
        {
         setData()
        }

    }
    
    @IBAction func previousButtonTapped(_ sender: AnyObject) {
         currentPage -= 1
        
        if currentPage < 0
        {  currentPage = 0
           return
        }
        if currentPage >= 0
        {
            setData()
            
        }
      
    }
    
    
    @IBAction func pageControlValueChanged(sender: UIPageControl) {
        if(sender.currentPage > currentPage)
        {
            nextButtonTapped(UIButton())
        }
        else
        {
            previousButtonTapped(UIButton())
        }
    }
}

extension IntroductionViewController:IntroductionView{
   
    func startLoading() {
        
    }
    
    func finishLoading() {
        
    }
    
}
