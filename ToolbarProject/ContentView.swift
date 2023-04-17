//
//  ContentView.swift
//  ToolbarProject
//
//  Created by Wing Hei Tsui on 17/04/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPresenting: Bool = false
    
    var body: some View {
        NavigationView {
            Text("Initial View")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "gear")
                        })
                    }
                }
        }
        .sheet(isPresented: $isPresenting) {
            NavigationView {
                Text("Setting Page")
                    .toolbar {
                        ToolbarItem {
                            Button("Save") {}
                        }
                    }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
