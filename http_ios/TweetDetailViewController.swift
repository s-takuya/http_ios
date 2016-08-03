import UIKit

class TweetDetailViewController: UIViewController {
    
    var tweet: Tweet?

    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var bodyTextLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let tweet = self.tweet {
            titleTextLabel.text = tweet.title
            bodyTextLabel.text = tweet.body
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
