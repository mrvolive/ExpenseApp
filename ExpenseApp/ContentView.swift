//
//  ContentView.swift
//  ExpenseApp
//
//  Created by maraval olivier on 11/03/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedIndex: Int = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            NavigationStack() {
                VStack {
                    HStack{
                        Button{
                            
                        } label: {
                            Text("Edit")
                        }
                        Spacer()
                        Button{
                            
                        } label: {
                            Text("Add")
                        }
                    }
                    .padding(EdgeInsets(top: 10, leading:20, bottom: 0, trailing:20))
                    Spacer()
                }
                .navigationTitle("Expenses")
            }
            .tabItem {
                Text("Expenses")
                Image(systemName: "dollarsign.square")
                    .renderingMode(.template)
            }
            .tag(0)
            
            NavigationStack() {
                Text("Overview")
                    .navigationTitle("Overview")
                
            }
            .tabItem {
                Text("Overview")
                Image(systemName: "chart.bar")
                
            }
            .badge("12")
            .tag(1)
        }
    }
}

#Preview {
    ContentView()
}
