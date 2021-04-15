//
//  EditTextView.swift
//  Milestone1
//
//  Created by Johnson Taylor on 6/4/21.
//

import Foundation
import SwiftUI

    
    
    


struct EditTextView: View {
    
//    @ObservedObject var description: String  = ""
//    @ObservedObject private var story: String = ""
//    @ObservedObject private var recipe: String = ""
//    @ObservedObject private var ingredients: String = ""
//    @ObservedObject private var image: String = ""
    @ObservedObject var entry: Entry
    //@State var entry: Entry
    
    
    
    
    var body: some View{
        
            VStack{
                Form {
                    Section{
                        TextEditor(text: $entry.title)
                            .frame(width: 300, height: 200)
                                            .border(Color.black, width: 1)
                        
                        TextEditor(text: $entry.description)
                        TextEditor(text: $entry.story)
                        TextEditor(text: $entry.recipe)
                        TextEditor(text: $entry.ingredients)
                        TextEditor(text: $entry.image)
                    }
                }
                
                Divider()
                
                Button(action: {
                    
                    
                    
                }, label: {
                    Text("Save Changes")
                        .frame(width: 250, height: 50, alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                })
                .padding()
            }
            .navigationTitle("Edit Entry")
        }
    private func save(){
        
        entry.title = entry.title
//        entry.description = description
//        entry.story = story
//        entry.recipe = recipe
//        entry.ingredients = ingredients
//        entry.image = image
    }
}

