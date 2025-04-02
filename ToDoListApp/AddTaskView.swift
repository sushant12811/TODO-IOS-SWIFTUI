//
//  AddTaskView.swift
//  ToDoListApp
//
//  Created by Sushant Dhakal on 2025-04-02.
//

import SwiftUI

struct AddTaskView: View {
    
    @State private var textFieldValue: String = ""
    
    var body: some View {
        VStack(alignment:.leading){
            textModifier(title: "Task Title")
            textField(placeHolder: "Task Title", textValue: $textFieldValue)
            textModifier(title: "Priority")
            
        }
        .padding()
    }
}



extension AddTaskView {
    
    //TextModifier
    @ViewBuilder
    func textModifier(title: String)-> some View {
        Text(title)
            .font(.headline)
            .fontWeight(.semibold)
    }
    
    //TextField Placeholder
    @ViewBuilder
    func textField(placeHolder: String, textValue: Binding <String>)-> some View {
        TextField(placeHolder, text: textValue)
            .font(.subheadline)
            .padding(7)
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(Color.gray.opacity(0.4))
            }
    }
}

#Preview {
    AddTaskView()
}
