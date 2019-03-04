

import Foundation

protocol Endpoint {
    
    var base: String { get }
    var path: String { get }
}

extension Endpoint {
    
    
    
    var urlComponents: URLComponents {
        var components = URLComponents(string: base)!
        components.path = path
        return components
    }
    
    var request: URLRequest {
        let url = urlComponents.url!
        return URLRequest(url: url)
    }
}

enum DweetService {
    
    case nesmi
    case nRF
}

extension DweetService: Endpoint {
    
    var base: String {
        return "https://dweet.io"
    }
    
    var path: String {
        switch self {
        case .nesmi: return "/get/dweets/for/nsemi"
        case .nRF: return "/nrf"
        }
    }
}








