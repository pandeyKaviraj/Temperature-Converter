//
//  ContentView.swift
//  tempConverter
//
//  Created by KAVIRAJ PANDEY on 17/10/19.
//  Copyright © 2019 KAVIRAJ PANDEY. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var tempInput = ""
    @State private var firstUnits = ["℃", "℉", "K"]
    @State private var firstDefaultUnits = "℃"
    var body: some View {
        NavigationView {
            Form {
                
                //First Unit of work done!
                Section(header: Text("Choose One Of Units")) {
                    Picker("Choose One Unit", selection: $firstDefaultUnits) {
                        ForEach (0 ..< firstUnits.count) {
                            Text("\(self.firstUnits[$0])")
                        }
                    }
                .pickerStyle(SegmentedPickerStyle())//Picker modifier
                }
                
                
                //Textfield for Entering value
                Section {
                    TextField("Enter Value For Temp Conversion", text: $tempInput)
                        .keyboardType(.decimalPad)
                }
                
                
            }//Form Closes
        .navigationBarTitle("Temperature Converter!")
        }
        
    }
}











//MARK- Preview Section

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
