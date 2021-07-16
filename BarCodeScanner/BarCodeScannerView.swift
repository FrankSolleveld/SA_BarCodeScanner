//
//  ContentView.swift
//  BarCodeScanner
//
//  Created by Frank Solleveld on 16/07/2021.
//

import SwiftUI

struct BarCodeScannerView: View {
    var body: some View {
		NavigationView {
			VStack {
				Color.black
					.frame(height: 300)
					.padding(.top, 20)
				Spacer()
					.frame(height: 100)
				HStack {
					Image(systemName: "barcode.viewfinder")
					Text("Scanned Barcode")
				}
				.padding(.bottom)
				Text("Not Yet Scanned")
					.foregroundColor(.red)
					.fontWeight(.bold)
			}
			.navigationTitle(Text("Barcode Scanner"))
		}

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarCodeScannerView()
    }
}
