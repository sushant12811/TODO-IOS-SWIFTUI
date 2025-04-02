//
//  AddTaskView.swift
//  ToDoListApp
//
//  Created by Sushant Dhakal on 2025-04-02.
//

import SwiftUI

struct AddTaskView: View {
    
    @State private var textFieldValue: String = ""
    var item = ["Normal", "Optional", "Urgent"]
    @State private var initialSelection: String = "Normal"
    
    var body: some View {
        VStack(alignment:.leading, spacing: 15){
            textModifier(title: "Task Title")
            textField(placeHolder: "Task Title", textValue: $textFieldValue)
            textModifier(title: "Priority")
            pickerView(items: item, selection: $initialSelection)
            addButton(title: "Add Task"){
                
            }
            
            Spacer()
            
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
    
    //PickerView
    @ViewBuilder
    func pickerView(items: [String], selection: Binding<String>) -> some View {
        Picker("Select Priority", selection: selection) {
            ForEach(items, id: \.self) {
                Text($0)
            }
        }
    }
    
    //Add Button
    @ViewBuilder
    func addButton(title: String, onTap : @escaping () -> Void) -> some View {
        Button{
            onTap()
        }label: {
            Text(title)
                .foregroundStyle(.white)
                .font(.headline)
                .fontWeight(.semibold)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(.green)
        .clipShape(.rect(cornerRadius: 7))
        .padding()
    }
}

#Preview {
    AddTaskView()
}
