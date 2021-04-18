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
                        VStack{Text("Title")
                            .font(.footnote)
                        TextEditor(text: $entry.title)
                            .border(Color.black, width: 1)}
                            
                        VStack{Text("Description")
                            .font(.footnote)
                        TextEditor(text: $entry.description)
                            .border(Color.black, width: 1)}
                        VStack{Text("Story")
                            .font(.footnote)
                            TextEditor(text: $entry.story)
                                .border(Color.black, width: 1)}
                        VStack{Text("Recipe")
                            .font(.footnote)
                        TextEditor(text: $entry.recipe)
                            .border(Color.black, width: 1)}
                        VStack{Text("Ingredients")
                            .font(.footnote)
                        TextEditor(text: $entry.ingredients)
                            .border(Color.black, width: 1)}
                        VStack{Text("ImageURL")
                            .font(.footnote)
                        TextEditor(text: $entry.image)
                            .border(Color.black, width: 1)}
                    }
                }
            
    
            
                
//                Divider()
//
//                Button(action: {
//
//
//
//                }, label: {
//                    Text("Save Changes")
//                        .frame(width: 250, height: 50, alignment: .center)
//                        .background(Color.blue)
//                        .foregroundColor(.white)
//                        .cornerRadius(8)
//                })
//                .padding()
      }
          .navigationTitle("Edit Entry")
      }
//    private func save(){
//
//        entry.title = entry.title
////        entry.description = description
////        entry.story = story
////        entry.recipe = recipe
////        entry.ingredients = ingredients
////        entry.image = image
//    }
}


