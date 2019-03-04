

import Foundation

class ChartPresenter  {
 weak private var view : ChartView?
    private let client = GetTemperatureClient()
    private  var graphPonits: [(x: Double, y: Double)] = [(x:0,y:0)]
    
    init(){}
    
    func attachView(view:ChartView){
        self.view = view
    }
    func detachView() {
        view = nil
    }
    
    func dweetApiCall(){
        
        client.getFeed(from: .nesmi) {  result in
            
            switch result {
            case .success(let dweetResponse):
                guard let dweetResponseResult = dweetResponse
                    
                    else { return }
            
                for point  in  dweetResponseResult.with{
                    self.graphPonits.append((x:point.content.accelerometerData.x,y:point.content.accelerometerData.y ))
                    
                }
            let chartData = ChartSeries(data: self.graphPonits)
                self.drawChart(data: chartData)
            case .failure(let error):
                print("the error \(error)")
            }
        }
        
    }
    
    func drawChart(data:ChartSeries){
        //let chartData = ChartSeries(data: data)
         let series = data
         self.view?.finishLoading(data: series)
    
}

}
