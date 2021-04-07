//
//  ViewModel.swift
//  Milestone1
//
//  Created by Johnson Taylor on 8/4/21.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @Published var model = [Entry]()
    
    func addElement() {
        let entryNumber = model.count + 1
        let entry = Entry(title: "Title", description: "\(entryNumber)", story: "", image: "", recipe: "", ingredients: "", idNumber: "" )
        model.append(entry)
    }
    
    func remove(at indices: IndexSet) {
        model.remove(atOffsets: indices)
    }
}
