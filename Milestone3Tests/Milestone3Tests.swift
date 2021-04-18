//
//  Milestone1Tests.swift
//  Milestone1Tests
//
//  Created by Johnson Taylor on 20/3/21.
//

import XCTest
@testable import Milestone3

class Milestone1Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testEntry() throws {
        let title = "food"
        let description = "yum"
        let story = "delicious"
        let idNumber = "3"
        let recipe = "step1"
        let ingredients = "stuff"
        let image = "dish"
        let entryTest = Entry(title: title, description: description, story: story, image: image, recipe: recipe, ingredients: ingredients, idNumber: idNumber)
        XCTAssertEqual(entryTest.title, "food")
        XCTAssertEqual(entryTest.description, "yum")
        XCTAssertEqual(entryTest.story, "delicious")
        XCTAssertEqual(entryTest.recipe, "step1")
        XCTAssertEqual(entryTest.ingredients, "stuff")
        XCTAssertEqual(entryTest.image, "dish")
        XCTAssertEqual(entryTest.idNumber, "3")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testDescription() throws {
        let description = "food"
        let entryTest = Entry(title: "title", description: description, story: "story", image: "image", recipe: "recipe", ingredients: "ingredients", idNumber: "3")
        XCTAssertEqual(entryTest.description, "food")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testStory() throws {
        let story = "food"
        let entryTest = Entry(title: "title", description: "description", story: story, image: "image", recipe: "recipe", ingredients: "ingredients", idNumber: "3")
        XCTAssertEqual(entryTest.story, "food")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testImage() throws {
        let image = "food"
        let entryTest = Entry(title: "title", description: "description", story: "story", image: image, recipe: "recipe", ingredients: "ingredients", idNumber: "3")
        XCTAssertEqual(entryTest.image, "food")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testRecipe() throws {
        let recipe = "food"
        let entryTest = Entry(title: "title", description: "description", story: "story", image: "image", recipe: recipe, ingredients: "ingredients", idNumber: "3")
        XCTAssertEqual(entryTest.recipe, "food")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testIngredients() throws {
        let ingredients = "food"
        let entryTest = Entry(title: "title", description: "description", story: "story", image: "image", recipe: "recipe", ingredients: ingredients, idNumber: "3")
        XCTAssertEqual(entryTest.ingredients, "food")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testId() throws {
        let idNumber = "3"
        let entryTest = Entry(title: "title", description: "description", story: "story", image: "image", recipe: "recipe", ingredients: "ingredients", idNumber: idNumber)
        XCTAssertEqual(entryTest.idNumber, "3")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    


    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
