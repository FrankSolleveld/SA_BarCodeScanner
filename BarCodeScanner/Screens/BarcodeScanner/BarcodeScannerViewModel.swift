//
//  BarcodeScannerViewModel.swift
//  BarcodeScannerViewModel
//
//  Created by Frank Solleveld on 21/08/2021.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?

    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }

    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
