//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Sushant Dhakal on 2025-04-02.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            VStack {
                List{
                    
                }
            }
            .toolbar {
                trailingItem()
            }
            .navigationTitle("Task")
        }
    }
}

@ToolbarContentBuilder
fileprivate func trailingItem() -> some ToolbarContent {
    
    ToolbarItem(placement: .topBarTrailing) {
        Button{
            
        }label: {
            Image(systemName: "plus")
                .font(.title2)
                .foregroundStyle(.black)
                .fontWeight(.medium)
        }
        
    }
}

#Preview {
    HomeView()
}
