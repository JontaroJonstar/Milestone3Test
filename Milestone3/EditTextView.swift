//
//  EditTextView.swift
//  Milestone1
//
//  Created by Johnson Taylor on 6/4/21.
//

import Foundation
import SwiftUI

class EditViewModel: ObservableObject {
    @State var title = ""
    @State var description  = ""
    @State var story = ""
    @State var recipe = ""
    @State var ingredients = ""
    @State var imageURL = ""
    
}



struct EditTextView: View {
    @ObservedObject var entry: Entry
    
    
    @StateObject var viewModel = EditViewModel()
    
    var body: some View{
            VStack{
                Form {
                    Section{
                        TextField("\(entry.title)", text: $viewModel.title)
                        TextField("\(entry.description)", text: $viewModel.description)
                        TextField("\(entry.story)", text: $viewModel.story)
                        TextField("\(entry.recipe)", text: $viewModel.recipe)
                        TextField("\(entry.ingredients)", text: $viewModel.ingredients)
                        TextField("Image URL", text: $viewModel.imageURL)
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
    }

