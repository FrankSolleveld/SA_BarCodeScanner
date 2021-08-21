//
//  ContentView.swift
//  BarCodeScanner
//
//  Created by Frank Solleveld on 16/07/2021.
//

import SwiftUI

struct BarCodeScannerView: View {

    @StateObject var viewModel = BarcodeScannerViewModel()

    var body: some View {
		NavigationView {
			VStack {
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
					.padding(.top, 20)
				Spacer()
					.frame(height: 70)
				Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                    .padding(.bottom, 20)
                Text(viewModel.statusText)
					.bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.statusTextColor)
			}
			.navigationTitle(Text("Barcode Scanner"))
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
            }
		}

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarCodeScannerView()
    }
}
