import UIKit
class ViewController: UIViewController {

    var CurrentSldrVal = 50
    var targetValue = 0
    var score = 0
    var round = 0
    let rick = 1
    // var currentValue = 0                  // I used CurrentSldrVal, not currentValue
    // @IBOutlet ... targetLabel: UILabel!   // I used targetValueLable, not targetLabel
    @IBOutlet weak var roundLable: UILabel!  // There be times when, I still cannot spell label :)
    @IBOutlet weak var scoreLable: UILabel!  // There be times when, I still cannot spell label :)
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetValueLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
        // the etire "block of code, up through the next comment, I had to type in by hand ... because Xcode is broken, SERIOUSLY!
        // ... in that, Xcode will not accept any pastes from anywhere, of any kind, EVER! 
        // ... moreover; when attempting to past this entire section Xcode would often "corrupt" some of the following text????
        // ... fortunately, the cmd-z feature still worked to un-corrupt, so, I was able to ... proceed without too much Trouble.
        
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, forState: .Normal)
        
        let thumbImageHilighted = UIImage(named: "SliderThumb-Hilighted")
        slider.setThumbImage(thumbImageHilighted, forState: .Highlighted)
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        
        if let trackLeftImage = UIImage(named: "SliderTrackLeft")
        {
        let trackLeftResizable = trackLeftImage.resizableImageWithCapInsets(insets)
        slider.setMinimumTrackImage(trackLeftResizable, forState: .Normal)  // 12
        }
        
        if let trackRightImage = UIImage(named: "SliderTrackRight")
        {
        let trackRightResizable = trackRightImage.resizableImageWithCapInsets(insets)
        slider.setMaximumTrackImage(trackRightResizable, forState: .Normal)
        }
        
        // ... Obvioulsy, I saved the fixed code, closed the project, killed Xcode, and the sim too, just out of spite -- and yet 
        // ... this bizzare behavior has continued, surely I must have fat-fingered into existence this new "behavior setting" in 
        // ... which Xcode has remapped cmd-v and also Edit_Paste to some other action ??????????????????????????????????????????
        
        startNewRound()
        updateLables()
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func newPlayerOrNewGame(sender: AnyObject) {
        CurrentSldrVal = 50
        targetValue = 0
        score = 0
        round = 0
        startNewRound()
        updateLables()
    }
    
    func updateLables () {
        let rick = 3
        // either will work // targetValueLable.text = String(targetValue)  // both work
        targetValueLable.text = "\(targetValue)"
        
        scoreLable.text = String(score)  // And so, it was easier to mis-spell again, than to remake the outlet :)
        roundLable.text = String(round)  // And so, it was easier to mis-spell again, than to remake the outlet :)

        //targetLabel.text = ...  // I used targetValueLable, not targetLabel
    }


    @IBAction func showAlert2(sender: AnyObject) {
        let difference = abs(targetValue - CurrentSldrVal)
        var points = 100 - difference
        var title: String
        var title01 = " "  // adding more info
        
        //var messageReSldrVal = " "
          // I added this label, and, yep I spelled label, rightly this time.  

        switch difference {
        case 0:
            title = "Perfect!"
        case 0...6:
            title = "You almost had it!"
        case 0...11:
            title = "Pretty good!"
        default:
            title = "Not even close..."
        }
/* // We don't use no stinking if construct, when a switch statement would be much simpler!!!!
        if difference == 0 {
            title = "Perfect!"
            points += 100    // cannot use += with two Ints (is the error one get if point is a constant)
            
        } else if difference < 5 {
            title = "You almost had it!"
            if difference == 1 {
                points += 50  // cannot use += with two Ints (is the error one get if point is a constant)
                points = points + 50
            }
        } else if difference < 10 {
            title = "Pretty good!"
        } else {
            title = "Not even close..."
        }
*/ // We don't use no stinking if construct, when a switch statement would be much simpler!!!!
        
        score += points
        
        let message = "You scored \(points) points"
        
        //let messageReSldrVal = "The position of the slider is, actually: \(CurrentSldrVal)" + "\n And; the target value is \(targetValue)"
        //  I will add more info to the alert ...
        
        let messageReSldrVal = "You put the position of the slider at: \(CurrentSldrVal)" + "\n And; the target value was \(targetValue)"

        //let alert = UIAlertController(title: title01, message: messageReSldrVal, preferredStyle: .Alert)
        
        let alert = UIAlertController(title: title, message: ("\(message)" + "\n\(messageReSldrVal)"), preferredStyle: .Alert)
        
        let action = UIAlertAction(title: "OK", style: .Default, handler: { action in self.startNewRound(); self.updateLables() })
        
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
        
        
    }
    
    func startNewRound() {
        round += 1
        targetValue = 1 + Int(arc4random_uniform(100))
        CurrentSldrVal = 50  // used CurrentSldrVal, not currentValue
        slider.value = Float(CurrentSldrVal)
        updateLables()
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
        CurrentSldrVal = lroundf(slider.value)
    }
    
}

