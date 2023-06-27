import SwiftUI
import Sparkle

@main
struct TestApp: App {

  private let updaterController: SPUStandardUpdaterController

  init() {
      updaterController = SPUStandardUpdaterController(
        startingUpdater: true,
        updaterDelegate: nil,
        userDriverDelegate: nil
      )
  }

  var body: some Scene {
    WindowGroup {
      ContentView(viewModel: ContentViewModel(updater: updaterController.updater))
    }
  }
}
