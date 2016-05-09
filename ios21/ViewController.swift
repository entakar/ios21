//
//  ViewController.swift
//  ios21
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var subView: UIView!
    var timer:NSTimer = NSTimer()
    var count:Int = 0
    var time : Int = 0
    var labelcount:Int = 1
    var xcount: CGFloat = 0.0

    var Label1:UILabel = UILabel()
    var Label2:UILabel = UILabel()
    var Label3:UILabel = UILabel()
    var Label4:UILabel = UILabel()
    var Label5:UILabel = UILabel()
    var Label6:UILabel = UILabel()
    var Label7:UILabel = UILabel()
    var Label8:UILabel = UILabel()
    var Label9:UILabel = UILabel()
    var xx : CGFloat = 25.5
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
            subView.backgroundColor = UIColor(colorLiteralRed: 0.0, green: 0.0, blue: 0.8, alpha: 1)
            break
        case "Clear":
            initFunc()
            clearLabel()
            subView.backgroundColor = UIColor(colorLiteralRed: 0.0, green: 0.0, blue: 0.8, alpha: 1)
            break
        case "STOP":
            timer.invalidate()
            initFunc()
            clearLabel()
            subView.backgroundColor = UIColor(colorLiteralRed: 1.0, green: 1.0, blue: 1.0, alpha: 1)
            break
        default:
            break
        }
    }
    
    func initFunc(){
        subLabel.text = "00:00"
        count = 0
        time = 0
        xcount = 0
    }
    
    func clearLabel(){
        Label1.hidden = true
        Label2.hidden = true
        Label3.hidden = true
        Label4.hidden = true
        Label5.hidden = true
        Label6.hidden = true
        Label7.hidden = true
        Label8.hidden = true
        Label9.hidden = true
    }
    func timerCount(){

        xcount++
        if count < 59 {
            count++
        }else{
            count = 0
            time++
        }
            subLabel.text = String(format: "%02d:%02d", time,count)
        switch count % 10 {
        case 0:
            xcount = 0
            clearLabel()
        case 1:
            Label1 = makeLabel(xcount * xx, y: y)
            self.view.addSubview(Label1)
        case 2:
            Label2 = makeLabel(xcount * xx, y: y)
            self.view.addSubview(Label2)
        case 3:
            Label3 = makeLabel(xcount * xx, y: y)
            self.view.addSubview(Label3)
        case 4:
            Label4 = makeLabel(xcount * xx, y: y)
            self.view.addSubview(Label4)
        case 5:
            Label5 = makeLabel(xcount * xx, y: y)
            self.view.addSubview(Label5)
        case 6:
            Label6 = makeLabel(xcount * xx, y: y)
            self.view.addSubview(Label6)
        case 7:
            Label7 = makeLabel(xcount * xx, y: y)
            self.view.addSubview(Label7)
        case 8:
            Label8 = makeLabel(xcount * xx, y: y)
            self.view.addSubview(Label8)
        case 9:
            Label9 = makeLabel(xcount * xx, y: y)
            self.view.addSubview(Label9)
        default:
            break
        }
        print (count % 10 )
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

