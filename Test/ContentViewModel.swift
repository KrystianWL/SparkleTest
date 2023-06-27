import Foundation
import Sparkle

@MainActor
final class ContentViewModel: ObservableObject {

  @Published var canCheckForUpdates = false
  private let updater: SPUUpdater

  init(updater: SPUUpdater) {
    self.updater = updater
    self.setupBindings()
  }

  private func setupBindings() {
    updater
      .publisher(for: \.canCheckForUpdates)
      .assign(to: &$canCheckForUpdates)
  }

  func checkForUpdates() {
    updater.checkForUpdates()
  }
}
