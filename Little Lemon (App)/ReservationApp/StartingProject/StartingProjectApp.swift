import SwiftUI

@main
struct StartingProjectApp: App {
    
    @StateObject var sheetManager = SheetManager()
    @StateObject var popupdisplay = PopupDisplay()
    @StateObject var launchScreenManager = LaunchScreenManager()
    
    var body: some Scene {
        WindowGroup {
            ZStack{
                HomePage()
                    .environmentObject(sheetManager)
                    .environmentObject(popupdisplay)
                if launchScreenManager.state != .completed{
                    LaunchScreenView()
                }
            }
            .environmentObject(launchScreenManager)
        }
    }
}
