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
    @State private var units = ["C", "F", "K"]
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
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                        
                    }.pickerStyle(.segmented)
                } header: {
                    Text("Enter the value")
                }
                
                Section {
                    Text("The temperature is: \(converted) \(selectedTemp)")
                    
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
