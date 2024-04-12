//
//  NewNoteView.swift
//  Note Taking Application
//
//  Created by StudentAM on 4/8/24.
//

import SwiftUI

struct NewNoteView: View {
    @State private var count : Int = 1
    @State private var content: String = ""
    @State private var title: String = ""
    @State var Title: String = ""
var body: some View {
        NavigationView{
            VStack{
               Spacer()
                
                
                TextField("Title",text:$Title)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .background(Color(UIColor.systemGray6))
                
                
                TextEditor(text: $content)
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(6)
                    .frame(minHeight: 200)
                    
                
                
                    
                    Button( action:{
                        count = 1
                    },label:{
                        Text("Add Note")
                            .frame(width:140,height:45)
                            .background(Color.blue)
                            .padding()
                            .foregroundColor(.white)
                            .font(.title)
                    })
                    
                }
                .navigationTitle("New Note")
            }
            
            
            
            
            
            
             }
        }


#Preview {
    NewNoteView()
}
