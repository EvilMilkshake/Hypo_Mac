
import Cocoa

class ViewController: NSViewController, NSWindowDelegate {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    override var representedObject: Any? {
//        didSet {
//        // Update the view, if already loaded.
//        }
//    }
//
//
//}

    override func viewDidAppear() {
        self.view.window?.delegate = self
    
    // Do any additional setup after loading the view.
    }
    func windowShouldClose(_ sender: Any) {
        NSApplication.shared().terminate(self)
        }

}
