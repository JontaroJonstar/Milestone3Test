//
//  ContentView.swift
//  Milestone1
//
//  Created by Johnson Taylor on 20/3/21.
//
import Foundation
import SwiftUI



struct DetailView: View {
    
    //Property wrapper to allow for per screen size alterations
    @Environment(\.horizontalSizeClass) var sizeClass
    
    //@State var Title: String = "Steak"  //Title string
    //@State var Description: String = "Medium rare and served with Hot Chips" //Desicription String
    //@State var Story: String = "Juicy, tender, loaded with flavor, and has a minimum amount of fat. However, there is a special kind of fat that helps meat be juicy and full of flavor. The best food in the world!" //Story String
    let entry : Entry
    
    var body: some View {
        NavigationView {
            ZStack {    //Background elements
                        Color.black
                Image("\(entry.image)")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    //.frame(width: 400, height: 300, alignment: .topLeading)
                    //.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    //.scaledToFit()
                    .padding()
                    .opacity(0.3)
                            
                            .ignoresSafeArea()
                        // if statement covering regular size screen formating
                    if sizeClass == .regular {
                                                 
                        
                        VStack{ //Vertical Ordering and elements
                            //Food Image
                            Image("\(entry.image)")
                                .resizable()
                                //.aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 400, height: 300, alignment: .topLeading)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                //.scaledToFit()
                                .padding()
                            
                            ScrollView {
                                // Food Title
                                Text("\(entry.title)")
                                    .font(.custom("Geneva", size: 35))
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 50)
                                    .frame(width: 700)
                                    .background(Color.red)
                                    .foregroundColor(.white)

                                    .lineSpacing(0.5)
                                
                                //Food Description
                                Text("\(entry.description)").italic()
                                    .padding(.horizontal, 5)
                                    .frame(width: 700)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .lineSpacing(0.5)
                                
                                //Food Story
                                Text("\(entry.story)")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .frame(width: 700)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.body)
                                    .lineSpacing(0.5)
                                
                                //Food Recipe
                                Text("RECIPE")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .frame(width: 700)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .lineSpacing(0.5)
                                Text("\(entry.recipe)")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .frame(width: 700)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.callout)
                                    .lineSpacing(0.5)
                                
                                //Food Recipe
                                Text("INGREDIENTS")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .frame(width: 700)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .lineSpacing(0.5)
                                Text("\(entry.ingredients)")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .frame(width: 700)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.callout)
                                    .lineSpacing(0.5)
                            }
                        }
                        
                        
                        // else encompasses all screen sizes other than regular ie: compact
                    }else{
                        
                        VStack{ //Vertical Ordering and elements
                            //Food Image
                            Image("\(entry.image)")
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 250.0)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                            
                            ScrollView {
                                // Food Title
                                Text("\(entry.title)")
                                    .font(.custom("Geneva", size: 30))
                                    
                                    .padding(.horizontal, 20)
                                    .frame(width: 310, alignment: .topLeading)
                                    .background(Color.red)
                                    .foregroundColor(.white)

                                    .lineSpacing(0.5)
                                
                                //Food Description
                                Text("\(entry.description)").italic()
                                    .padding(.horizontal, 5)
                                    .frame(width: 310)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .lineSpacing(0.5)
                                
                                //Food Story
                                Text("\(entry.story)")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .frame(width: 310)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.body)
                                    .lineSpacing(0.5)
                                
                                //Food Recipe
                                Text("RECIPE")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .frame(width: 310)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .lineSpacing(0.5)
                                Text("\(entry.recipe)")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .frame(width: 310)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.footnote)
                                    .lineSpacing(0.5)
                                
                                //Food Recipe
                                Text("INGREDIENTS")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .frame(width: 310)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .lineSpacing(0.5)
                                Text("\(entry.ingredients)")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .frame(width: 310)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.footnote)
                                    .lineSpacing(0.5)
                                
                            }
                        
                        }
                        
                    }
                //.onDelete(perform: delete)
                        
                }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    /*NavigationLink(destination: EditTextView(entry:entry)) {
                        Text("Edit Entry")}*/
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                                EditButton()
                }
            
            
        }
           
        
    }
        
        
    }
    /**func delete(at offsets: IndexSet) {
        Text.remove(atOffsets: offsets)
    }**/
    
    
}

        
    



