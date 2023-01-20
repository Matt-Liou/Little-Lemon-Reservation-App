import SwiftUI

@main
struct StartingProjectApp: App {
    
    @StateObject var sheetManager = SheetManager()
    @StateObject var popupdisplay = PopupDisplay()
    
    var body: some Scene {
        WindowGroup {
            HomePage()
                .environmentObject(sheetManager)
                .environmentObject(popupdisplay)
        }
    }
}
