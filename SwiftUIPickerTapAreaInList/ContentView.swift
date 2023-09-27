//
//  ContentView.swift
//  SwiftUIPickerTapAreaInList
//
//  Created by Simon Nickel on 27.09.23.
//

import SwiftUI

struct ContentView: View {
	
	@State private var selectedStyle: String = "A"
    var body: some View {
		
        List {
			
			Picker(selection: $selectedStyle) {
				ForEach(["A", "B", "C"], id: \.self) { option in
					Text(option)
						.tag(option)
				}
			} label: {
				VStack(alignment: .leading) {
					Text("Picker default")
					Text("-> Tapable, no tint")
				}
			}
			
			Picker(selection: $selectedStyle) {
				ForEach(["A", "B", "C"], id: \.self) { option in
					Text(option)
						.tag(option)
				}
			} label: {
				VStack(alignment: .leading) {
					Text("Picker .automatic")
					Text("-> Tapable, no tint")
				}
			}
			.pickerStyle(.automatic)
			
			Picker(selection: $selectedStyle) {
				ForEach(["A", "B", "C"], id: \.self) { option in
					Text(option)
						.tag(option)
				}
			} label: {
				VStack(alignment: .leading) {
					Text("Picker .menu")
					Text("-> Not Tapable, tint")
				}
			}
			.pickerStyle(.menu)
			
        }

    }
}

#Preview {
    ContentView()
}
