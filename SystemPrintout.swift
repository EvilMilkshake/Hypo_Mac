
import Cocoa

class SystemPrintout: NSViewController {

    
    @IBOutlet weak var info: NSTextField!
    
    func infoPrint() -> String {
        let task = Process()
        task.launchPath = "/sbin/ifconfig"
        let mac:[String] = ["-c", "ifconfig en0  | awk '/ether/{print $2}'"]
        task.arguments = mac
        // ifconfig en0 | awk '/ether/{print $2}'
        let pipe = Pipe()
        task.standardOutput = pipe
        task.launch()
        task.waitUntilExit()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output: String = NSString(data: data, encoding: String.Encoding.utf8.rawValue) as! String
        return output
    }
    @IBAction func print_install(_ sender: Any) {
        task2.launchPath = "/bin/bash"
        task2.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"EaglePrint.pkg\"", ]
        task5.launchPath = "/bin/bash"
        task5.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"HewlettPackardPrinterDrivers.pkg\""]
        task2.launch()
        task2.waitUntilExit()
        task5.launch()
        task5.waitUntilExit()
    }
    
    @IBAction func hp_install(_ sender: Any) {
        task5.launchPath = "/bin/bash"
        task5.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/hpprinterdriver3.1.dmg"]
        task5.launch()
        task5.waitUntilExit()
    }

    
    @IBAction func malwarebytes(_ sender: Any) {
            task6.launchPath = "/bin/bash"
            task6.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Install MalwareBytes 3.pkg\""]
            task6.launch()
            task6.waitUntilExit()
    }
    @IBAction func diskInventoryX(_ sender: Any) {
        task3.launchPath = "/bin/bash"
        task3.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Disk Inventory X.app\""]
        task3.launch()
        task3.waitUntilExit()
    }
    @IBAction func mactracker(_ sender: Any) {
        let urlM  = URL(fileURLWithPath: workSpace.fullPath(forApplication: "Mactracker")!)
        workSpace.open(urlM)
    }
    
    @IBAction func remove_pharos(_ sender: Any) {
        task1.launchPath = "/bin/bash"
        task1.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Pharos Removal.dmg\""]
        task1.launch()
        task1.waitUntilExit()
    }

    
    @IBAction func solistice(_ sender: Any) {
        let urlM  = URL(fileURLWithPath: workSpace.fullPath(forApplication: "SolsticeClientMacWeb")!)
        workSpace.open(urlM)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    override func viewWillAppear() {
        super.viewWillAppear()
        //info.stringValue = infoPrint()
    }
}
