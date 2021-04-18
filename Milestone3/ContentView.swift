//
//  File.swift
//  Milestone1
//
//  Created by Johnson Taylor on 31/3/21.
//

import Foundation
import SwiftUI

extension String {
    func load() -> UIImage {
        do {
            guard let url = URL(string: self)
                else{
                
                return UIImage()
                
            }
            let data: Data = try
                Data(contentsOf: url)
            
            return UIImage(data: data)
                ?? UIImage()
            
        } catch {
            
        }
        
        return UIImage()
    }
}

struct ContentView: View {
    // instating all Entries from ListView
    @ObservedObject  var entries: ViewModel
    var body: some View {
        NavigationView {
            MasterView(entries: entries)
                .navigationBarTitle(Text("Favorite Foods"))
                .navigationBarItems(leading:
                    EditButton(), trailing:
                    Button(action: {
                    withAnimation {
                        entries.addElement()
                    }
                }) {
                        Image(systemName: "plus")
                })
        }
    }
}


struct MasterView: View {
    @Environment(\.editMode) var editMode
    @ObservedObject var entries: ViewModel
    var body: some View {
            List {
                ForEach(entries.model, id: \.description) { entry in
                    NavigationLink(
                        destination: DetailView(entry: entry), label: {
                        HStack{
                            Image(uiImage: entry.image.load())
                                .resizable()
                                .frame (width:75, height:50)
                                //.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                            VStack(alignment: .leading){
                                
                                
                                Text(entry.title)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
//                                    .frame(width: 215, alignment: .topLeading)
                                    //.background(Color.blue)
                                    //.foregroundColor(.white)
                                    //.font(.title2)
                                    //.lineSpacing(0.5)
                                    .font(.system(size: 20))
                                    //.multilineTextAlignment(.leading)
                                
                                Text(entry.description)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
//                                    .frame(width: 215, alignment: .topLeading)
                                    //.background(Color.blue)
                                    //.foregroundColor(.white)
                                    .font(.footnote)
                                    .lineSpacing(0.5)
                                
                            }
                        }
                    })
                }.onMove(perform: move)
                .onDelete {
                    entries.remove(at: $0)
                }
                
        
        }
        
        
    }
    func move(from source: IndexSet,to destination: Int) {
        entries.model.move(fromOffsets: source, toOffset: destination)
    }
    
}
        
            
            
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(entries:ViewModel())
        }
    }


