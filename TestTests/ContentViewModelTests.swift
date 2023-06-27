import XCTest
@testable import Test

@MainActor
final class ContentViewModelTests: XCTestCase {

  private var sut: ContentViewModel!

  override func setUpWithError() throws {
    sut = ContentViewModel()
  }

  override func tearDownWithError() throws {
    sut = nil
  }
}
