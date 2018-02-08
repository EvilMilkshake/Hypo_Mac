
import Cocoa

class Network: NSViewController {
    let task = Process()
    var workSpace : NSWorkspace = NSWorkspace()
    
    @IBAction func networkPref(_ sender: Any) {
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", "open /System/Library/PreferencePanes/Network.prefPane/"]
        task.launch()
        task.waitUntilExit()
    }
//    @IBAction func networkPref(_ sender: AnyObject) {
//        task.launchPath = "/bin/bash"
//        task.arguments = ["-c", "open /System/Library/PreferencePanes/Network.prefPane/"]
//        task.launch()
//        task.waitUntilExit()
//    }
    @IBOutlet weak var guestON: NSButton!
    @IBOutlet weak var podsON: NSButton!
    @IBOutlet weak var unpluggedON: NSButton!
    @IBOutlet weak var LASTRESORT: NSButton!
    
    @IBAction func rmNetworks(_ sender: Any) {
        task.launchPath = "/bin/bash"
        if guestON.state == NSOnState {
            task.arguments = ["-c", "networksetup -removepreferredwirelessnetwork en0 EmoryGuest"]
            task.launch()
            task.waitUntilExit()
        }
        if podsON.state == NSOnState {
            task.arguments = ["-c", "networksetup -removepreferredwirelessnetwork en0 STS-Pod2"]
            task.launch()
            task.waitUntilExit()
            task.arguments = ["-c", "networksetup -removepreferredwirelessnetwork en0 STS-Pod3"]
            task.launch()
            task.waitUntilExit()
        }
        if unpluggedON.state == NSOnState {
            task.arguments = ["-c", "networksetup -removepreferredwirelessnetwork en0 EmoryUnplugged"]
            task.launch()
            task.waitUntilExit()
        }

    }
//    @IBAction func rmNetworks(_ sender: AnyObject) {
//        
//        task.launchPath = "/bin/bash"
//        if guestON.state == NSOnState {
//            task.arguments = ["-c", "networksetup -removepreferredwirelessnetwork en0 EmoryGuest"]
//            task.launch()
//            task.waitUntilExit()
//        }
//        if podsON.state == NSOnState {
//            task.arguments = ["-c", "networksetup -removepreferredwirelessnetwork en0 STS-Pod2"]
//            task.launch()
//            task.waitUntilExit()
//            task.arguments = ["-c", "networksetup -removepreferredwirelessnetwork en0 STS-Pod3"]
//            task.launch()
//            task.waitUntilExit()
//        }
//        if unpluggedON.state == NSOnState {
//            task.arguments = ["-c", "networksetup -removepreferredwirelessnetwork en0 EmoryUnplugged"]
//            task.launch()
//            task.waitUntilExit()
//        }
//        
//    }
//    @IBAction func mc_install(_ sender: AnyObject) {
//        let task = Process()
//        task.launchPath = "/bin/bash"
//        task.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Emory McAfee ENS 10.9-10.12.pkg\""]
//        task.launch()
//        task.waitUntilExit()
//    }
    @IBAction func mc_install(_ sender: Any) {
        let task = Process()
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Emory McAfee ENS 10.9-10.12.pkg\""]
        task.launch()
        task.waitUntilExit()
    }
//    @IBAction func brad_install(_ sender: AnyObject) {
//        let task = Process()
//        task.launchPath = "/bin/bash"
//        task.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Bradford Persistent Agent.pkg\""]
//        task.launch()
//        task.waitUntilExit()
//    }
    @IBAction func brad_install(_ sender: Any) {
        let task = Process()
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Bradford Persistent Agent.pkg\""]
        task.launch()
        task.waitUntilExit()
    }
//    @IBAction func brad_unin(_ sender: AnyObject) {
//        let task = Process()
//        task.launchPath = "/bin/bash"
//        task.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Bradford Persistent Agent Uninstaller.app\""]
//        task.launch()
//        task.waitUntilExit()
//    }
    @IBAction func brad_unin(_ sender: Any) {
        let task = Process()
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Bradford Persistent Agent Uninstaller.app\""]
        task.launch()
        task.waitUntilExit()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
