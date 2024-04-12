//
//  ContentView.swift
//  Note Taking Application
//
//  Created by StudentAM on 4/8/24.
//

import SwiftUI
struct note{
    var title:String
    var content:String
}
struct ContentView: View {
    @State var userInput: String = ""
    @State var data : [String] = []
    @State private var note:[note] = []
    @State private var count : Int = 0
    var body: some View{
        NavigationView{
            VStack{
                
                List{
                    ForEach(data, id:\.self){ task in
                        Text("\(task)")
                    }
                    //   .onDelete(perform:removeTask)
                    
                    
                    
                }
                
                NavigationLink(destination:NewNoteView(),label: {
                    Text("Add Task")
                        .frame(width:540,height:140)
                        .background(Color.blue)
                        .padding()
                        .foregroundColor(.white)
                        .font(.title)
                })
            }
            .navigationTitle("Notes")
            
          
        }
    }
}

#Preview {
    ContentView()
}
