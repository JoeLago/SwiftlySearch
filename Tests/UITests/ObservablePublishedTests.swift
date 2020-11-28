import Combine
import XCTest
@testable import TestApp

class ObservablePublishedTests: UITest {

    func testObservablePublishedMetric() throws {
        selectTest("Observable Published")

        app.children(matching: .any).firstMatch.slowSwipeDown(offset: 0.5, distance: 0.1)
        let searchBar = app.navigationBars.firstMatch.children(matching: .searchField).firstMatch
        searchBar.tap()
        searchBar.typeText("h")

        XCTAssertEqual(app.staticTexts["countLabel"].label, "Update count: 1")
    }
}
