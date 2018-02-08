
import Cocoa
var workSpace : NSWorkspace = NSWorkspace()

var url2  = URL(string: "x-apple.systempreferences:com.apple.preference")
class SystemButtons:  NSViewController {
    

    @IBAction func diskUtil(_ sender: AnyObject) {
        let url1  = URL(fileURLWithPath: workSpace.fullPath(forApplication: "Disk Utility")!)
        workSpace.open(url1)
    }
    @IBAction func sysPref(_ sender: AnyObject) {
        workSpace.open(url2!)
    }
    @IBAction func keychain(_ sender: AnyObject) {
        let url3  = URL(fileURLWithPath: workSpace.fullPath(forApplication: "Keychain Access")!)
        workSpace.open(url3)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
