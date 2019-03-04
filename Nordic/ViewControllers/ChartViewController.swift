
import UIKit

class ChartViewController: UIViewController {
    
    @IBOutlet weak var chartView: Chart!
    private var presenter = ChartPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(view: self)
        presenter.dweetApiCall()
        self.setNavBar(title: "Thingy 52")
        
    }
    
}

extension ChartViewController:ChartView{
    
    func finishLoading(data: ChartSeries) {
        
        chartView.add(data)
        data.area = true
        chartView.add(data)
        
        // Set minimum and maximum values for y-axis
         chartView.minY = 1
         chartView.maxY = 2
        
        data.colors = (
            above: UIColor(red: 165/255, green: 225/255, blue: 210/255, alpha: 1.0),
            below: UIColor.orange,
            zeroLevel: -1
        )
        chartView.yLabelsFormatter = { String(Int($1)) +  "'C" }
        chartView.gridColor = UIColor.clear
        
    }
    
   
    
   
    func startLoading() {
        
    }
    
   
    
    
    
}
