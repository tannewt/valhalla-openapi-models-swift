import XCTest
@testable import ValhallaConfig
@testable import ValhallaModels

public class ValhallaModelsTests: XCTestCase {
    
    func testInitFromConfig() {
        let additionalData = AdditionalData()
        XCTAssertEqual(additionalData.elevation, "/custom_files/elevation_data")
    }
    
    func testFromModels() {
        let administrative = Administrative()
        XCTAssertNil(administrative.country)
    }
}
