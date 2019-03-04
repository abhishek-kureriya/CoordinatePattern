

import Foundation

class GetTemperatureClient: APIClient {
    
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
  
    func getFeed(from dweetServiceType: DweetService, completion: @escaping (Result<Temperatures?, APIError>) -> Void) {
        
        let endpoint = dweetServiceType
        let request = endpoint.request
        
        fetch(with: request, decode: { json -> Temperatures? in
            guard let temperatureResult = json as? Temperatures else { return  nil }
            return temperatureResult
        }, completion: completion)
    }
}





