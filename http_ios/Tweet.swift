import UIKit
import ObjectMapper
import Alamofire
import SwiftyJSON

class Tweet: Mappable, CustomStringConvertible {
    
    var id: Int?
    var title: String?
    var body: String?
    
    var description: String {
        return "title: \(self.title), body: \(self.body)"
    }
    
    init(title: String, body: String) {
        self.title = title
        self.body = body
    }
    
    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        id    <- map["id"]
        title <- map["title"]
        body  <- map["body"]
    }
    
    class func getTweets(success success: [Tweet] -> Void, failure: NSError? -> Void) {
        Alamofire.request(.GET, "http://localhost:3000/tweets.json").responseJSON { response in
            if let error = response.result.error {
                failure(error)
                return
            }
            let json = JSON(response.result.value!)
            let tweets: [Tweet] = json.arrayValue.map{tweetJson -> Tweet in
                return Mapper<Tweet>().map(tweetJson.dictionaryObject!)!
            }
            success(tweets)
            return
        }
    }
}