import UIKit
import ObjectMapper
import Alamofire
import SwiftyJSON

class Tweet: CustomStringConvertible {
    
    let title: String
    let body: String
    
    var description: String {
        return "title: \(self.title), body: \(self.body)"
    }
    
    init(title: String, body: String) {
        self.title = title
        self.body = body
    }
}