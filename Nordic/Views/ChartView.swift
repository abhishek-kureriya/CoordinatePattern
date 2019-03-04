

import Foundation

protocol ChartView: NSObjectProtocol {
    
    func startLoading()
    func finishLoading(data:ChartSeries)
    
}
