// MetalKitView.swift
// Mir
//
// SPDX-License-Identifier: Apache-2.0
// Copyright © 2025 Daniil Pazin. All rights reserved.
//

import SwiftUI
import MetalKit

#if canImport(UIKit)
struct MetalView: UIViewRepresentable {
    
    // MARK: - UIViewRepresentable
    
    func makeUIView(context: Context) -> some UIView {
        MTKView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) { }
}
#elseif canImport(AppKit)
struct MetalKitView: NSViewRepresentable {
    
    // MARK: - NSViewRepresentable
    
    func makeNSView(context: Context) -> some NSView {
        MTKView()
    }
    
    func updateNSView(_ nsView: NSViewType, context: Context) { }
}
#endif
