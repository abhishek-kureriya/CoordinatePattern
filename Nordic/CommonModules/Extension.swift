

import UIKit

extension UIColor {
   
    convenience init(hexFromString:String, alpha:CGFloat = 1.0) {
        var cString:String = hexFromString.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        var rgbValue:UInt32 = 10066329 
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) == 6) {
            Scanner(string: cString).scanHexInt32(&rgbValue)
        }
        
        self.init(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }
    
    
    static let mainColor = UIColor(hexFromString: "#009ADA", alpha: 1)
    static let darkColor = UIColor(hexFromString: "#0080B7", alpha: 1)
    static let grayColor   = UIColor(hexFromString: "#888888", alpha: 1)
    static let redColor   = UIColor(hexFromString: "#DC582A", alpha: 1)
    static let greenColor = UIColor(hexFromString: "#BED62F", alpha: 1)
    static let whiteColor = UIColor(hexFromString: "#009ADA", alpha: 1)
}


extension  UIViewController {

    
    func setNavBar(title:String)  {
        
        self.navigationController!.isNavigationBarHidden = false
        self.navigationController!.navigationBar.barTintColor = .darkColor
        self.navigationController!.navigationBar.prefersLargeTitles = true
        self.title = title
        
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        self.navigationController!.navigationBar.titleTextAttributes = textAttributes
        self.navigationController!.navigationItem.hidesBackButton = true
        self.navigationController!.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    
}
