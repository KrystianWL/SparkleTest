import SwiftUI

struct ContentView: View {
  
  @ObservedObject var viewModel: ContentViewModel
  
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundColor(.accentColor)
      Text("Hello, world!")
      Button("Check for Updates…", action: { viewModel.checkForUpdates() })
        .disabled(!viewModel.canCheckForUpdates)
    }
    .padding()
  }
}
