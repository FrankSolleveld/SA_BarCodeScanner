//
//  ContentView.swift
//  BarCodeScanner
//
//  Created by Frank Solleveld on 16/07/2021.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(
        title: "Invalid Device Input",
        message: "Something is wrong with the camera. We are unable to capture the input.",
        dismissButton: .default(Text("OK")))

    static let invalidScannedType = AlertItem(
        title: "Invalid Scan Type",
        message: "The value scanned is not valid. This app scans EAN-8 and EAN-13.",
        dismissButton: .default(Text("OK")))
}

struct BarCodeScannerView: View {

    @State private var scannedCode = ""
    @State private var alertItem: AlertItem?

    var body: some View {
		NavigationView {
			VStack {
				ScannerView(scannedCode: $scannedCode, alertItem: $alertItem)
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
            .alert(item: $alertItem) { alertItem in
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
