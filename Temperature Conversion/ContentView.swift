//
//  ContentView.swift
//  Temperature Conversion
//
//  Created by Jaden Lee on 2023-05-31.
//

import SwiftUI


struct ContentView: View {
    @State private var enteredValue: Double = 0
    @State private var selectedTemp = "C"
    @State private var toSelct = "C"
    private var units = ["C", "F", "K"]
    
    private var toUnit = ["C", "F", "K"]
    private var converted : Double {
    
        return enteredValue
    }
    
    var body: some View {
        NavigationView{
            Form{
                Section {
                    HStack{
                        Text("Enter the value: ")
                        TextField("Enter the temperature",value: $enteredValue, format: .number)
                    }
                    Picker ("Select Unit", selection: $selectedTemp){
                        ForEach(units, id: \.self) { value in
                            Text(value)
                        }
                        
                    }.pickerStyle(.segmented)
                } header: {
                    Text("Enter the value")
                }
                
                Section {
                    Picker ("Select Unit", selection: $toSelct){
                        ForEach(units, id: \.self) { value in
                            Text(value)
                        }
                        
                    }.pickerStyle(.segmented)
                } header: {
                    Text("Select which unit to convert to")
                }
                
                Section {
                    Text("The temperature is: \(converted) \(toSelct)")
                    
                }
                
            }
            .navigationTitle("Convert temperature")
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
