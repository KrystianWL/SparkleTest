import Foundation

@MainActor
final class ContentViewModel: ObservableObject {

  var exampleOutput: String = ""

  func example() {
    Task {
      exampleOutput = "exampleOutput"
    }
  }
}
