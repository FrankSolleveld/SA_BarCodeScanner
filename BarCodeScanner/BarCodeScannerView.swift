//
//  ContentView.swift
//  BarCodeScanner
//
//  Created by Frank Solleveld on 16/07/2021.
//

import SwiftUI

struct BarCodeScannerView: View {

    @State private var scannedCode = ""

    var body: some View {
		NavigationView {
			VStack {
				ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
					.padding(.top, 20)
				Spacer()
					.frame(height: 70)
				Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                    .padding(.bottom, 20)
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
					.bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedCode.isEmpty ? .red : .green)
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
