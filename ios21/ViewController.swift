//
//  ViewController.swift
//  ios21
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer:NSTimer = NSTimer()
    var count:Int = 0
    var time : Int = 0
    var labelcount:Int = 1
    var xcount: CGFloat = 0.0

    var labels = UILabel()
    var Label1:UILabel = UILabel()
    var Label2:UILabel = UILabel()
    var Label3:UILabel = UILabel()
    var Label4:UILabel = UILabel()
    var Label5:UILabel = UILabel()
    var Label6:UILabel = UILabel()
    var Label7:UILabel = UILabel()
    var Label8:UILabel = UILabel()
    var Label9:UILabel = UILabel()
    var xx : CGFloat = 30
    var y:CGFloat = 240.0
    
    @IBOutlet weak var subLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func AnyButtonAction(sender: UIButton){
        
        switch  sender.titleLabel!.text! {
        case "Start":
            timer = NSTimer.scheduledTimerWithTimeInterval(
                0.5,
                target: self,
                selector: Selector("timerCount"),
                userInfo: nil,
                repeats: true)
            break
        case "Clear":
            initFunc()
//            clearLabel()
            removeAllSubviews(view)
            break
        case "STOP":
            timer.invalidate()
            initFunc()
//            clearLabel()
            removeAllSubviews(view)
            break
        default:
            break
        }
    }
    
    func initFunc(){
        timeLabel.text = "00:00"
        count = 0
        time = 0
        xcount = 0
    }
    
    func timerCount(){

        xcount++
        if count < 59 {
            count += 1
        }else{
            count = 0
            time += 1
        }
            timeLabel.text = String(format: "%02d:%02d", time,count)
        labels = makeLabel(xcount * xx, y:y, r:1.0, g: 0.0, b:1.0)
        view.addSubview(labels)
        if xcount == 10{
            removeAllSubviews(view)
            xcount = 0
        }
        print (count % 10 )
    }
    func makeLabel(x:CGFloat, y:CGFloat,r:CGFloat, g:CGFloat, b:CGFloat)->UILabel{
        let Label = UILabel()
        Label.frame = CGRect(x: x, y: y, width: 20, height: 20)
        Label.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        return Label
    }

    func removeAllSubviews(parentView: UIView){
        let subviews = parentView.subviews
        for subview in subviews {
            if subview.tag == 0 {
                subview.hidden = true
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

