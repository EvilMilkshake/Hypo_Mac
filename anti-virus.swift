
import Cocoa
var workSpac : NSWorkspace = NSWorkspace()
var task1 : Process = Process()
var task2 : Process = Process()
var task3 : Process = Process()
var task4 : Process = Process()
var task5 : Process = Process()
var task6 : Process = Process()
var task7 : Process = Process()
var task8 : Process = Process()
var task9 : Process = Process()
class anti_virus: NSViewController {
    let task = Process()
    @IBAction func sophos_unin(_ sender: AnyObject) {
        let urlA  = URL(fileURLWithPath: workSpace.fullPath(forApplication: "Remove Sophos AV - VERSION 9")!)
        workSpace.open(urlA)
    }
    
    
    @IBAction func networkPref(_ sender: Any) {
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", "open /System/Library/PreferencePanes/Network.prefPane/"]
        task.launch()
        task.waitUntilExit()
    }
    
    @IBAction func mc_install(_ sender: Any) {
        let task = Process()
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Emory McAfee ENSM 10.2.2 Student.pkg\""]
        task.launch()
        task.waitUntilExit()
    }
    
    @IBAction func brad_install(_ sender: Any) {
        let task = Process()
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"ClearPassOnGuard.pkg\""]
        task.launch()
        task.waitUntilExit()
    }
    
    @IBAction func brad_unin(_ sender: Any) {
        let task = Process()
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"ClearPassUninstaller.app\""]
        task.launch()
        task.waitUntilExit()
    }
    
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
            task.arguments = ["-c", "networksetup -removepreferredwirelessnetwork en0 EmoryUnplugged.STS"]
            task.launch()
            task.waitUntilExit()
        }

        if unpluggedON.state == NSOnState {
            task.arguments = ["-c", "networksetup -removepreferredwirelessnetwork en0 EmoryUnplugged"]
            task.launch()
            task.waitUntilExit()
        }

    }

    
    @IBAction func kapersky_unin(_ sender: AnyObject) {
        task3.launchPath = "/bin/bash"
        task3.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Kaspersky Anti-Virus Uninstaller.app\""]
        task3.launch()
        task3.waitUntilExit()
    }
    @IBAction func syman_unin(_ sender: AnyObject) {
        task8.launchPath = "/bin/bash"
        task8.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/SymantecUninstaller.English/\"SymantecUninstaller - USE THIS.pkg\""]
        task8.launch()
        task8.waitUntilExit()
    }
    @IBAction func syman_fileRM(_ sender: AnyObject) {
        task4.launchPath = "/bin/bash"
        task4.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/RemoveSymantecMacFiles.command"]
        task4.launch()
        task4.waitUntilExit()
    }
    @IBAction func mac_prem_unin(_ sender: AnyObject) {
        task5.launchPath = "/bin/bash"
        task5.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Mac Premium Bundle X8.app\""]
        task5.launch()
        task5.waitUntilExit()
    }
    @IBAction func mcafee_unin(_ sender: AnyObject) {
        task5.launchPath = "/bin/bash"
        task5.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Remove McAfee EPM 1.2.pkg\""]
        task5.launch()
        task5.waitUntilExit()
    }
    
    @IBAction func trendTitan_unin(_ sender: AnyObject) {
        let urlT  = URL(fileURLWithPath: workSpace.fullPath(forApplication: "Uninstall Trend Micro Internet Security.app")!)
        workSpace.open(urlT)
    }
    @IBAction func adware(_ sender: AnyObject) {
        task9.launchPath = "/bin/bash"
        task9.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/EaglePrint.dmg"]
        task9.launch()
        task9.waitUntilExit()
    }
    @IBAction func eset_unin(_ sender: AnyObject) {
        task6.launchPath = "/bin/bash"
        task6.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"ESET Uninstaller.app\""]
        task6.launch()
        task6.waitUntilExit()    }
    @IBAction func bitdefender_unin(_ sender: AnyObject) {
       let urlZ  = URL(fileURLWithPath: workSpace.fullPath(forApplication: "BitdefenderforMacUninstaller.app")!)
        workSpace.open(urlZ)
    }
    @IBAction func malwareBytes(_ sender: AnyObject) {
        let urlB  = URL(fileURLWithPath: workSpace.fullPath(forApplication: "Malwarebytes Anti-Malware")!)
        workSpace.open(urlB)
    }
    @IBAction func clam_unin(_ sender: AnyObject) {
        task7.launchPath = "/bin/bash"
        task7.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"ClamXav_2.8.4.dmg\""]
        task7.launch()
        task7.waitUntilExit()
    }
    @IBAction func remove_pharos(_ sender: Any) {
        task1.launchPath = "/bin/bash"
        task1.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Pharos Removal.dmg\""]
        task1.launch()
        task1.waitUntilExit()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}



