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
				Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 300)
					.padding(.top, 20)
				Spacer()
					.frame(height: 100)
				Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                    .padding(.bottom, 20)
				Text("Not Yet Scanned")
					.bold()
                    .font(.largeTitle)
                    .foregroundColor(.green)
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
