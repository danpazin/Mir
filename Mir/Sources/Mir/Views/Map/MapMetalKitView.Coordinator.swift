// MapMetalKitView.Coordinator.swift
// Mir
//
// SPDX-License-Identifier: Apache-2.0
// Copyright © 2025 Daniil Pazin. All rights reserved.
//

import MetalKit

extension MapMetalKitView {
    
    /// A coordinator that bridges SwiftUI's `MapMetalKitView` with MetalKit view's delegate `MTKViewDelegate`.
    ///
    /// - Note: If no Metal-capable GPU is available,  both `device` and `renderer` will be `nil`, and rendering operations become no-ops.
    final class Coordinator: NSObject, MTKViewDelegate {
        
        // MARK: - Properties
        
        /// The Metal device used for rendering, or `nil` if no Metal-capable GPU is available.
        let device: MTLDevice?
        
        /// The renderer responsible for drawing the map, or `nil` if no Metal-capable GPU is available.
        let renderer: Renderer?
        
        // MARK: - Initializers
        
        /// Creates a new coordinator with Metal device and renderer initialization.
        ///
        /// - Note: GPU family selection prioritizes Metal 4 features when available.
        override init() {
            guard let device = MTLCreateSystemDefaultDevice() else {
                self.device = nil
                renderer = nil
                super.init()
                return
            }
            self.device = device
            if device.supportsFamily(.metal4) {
                renderer = Metal4Renderer(device: device)
            } else {
                renderer = MetalRenderer(device: device)
            }
            super.init()
        }
        
        // MARK: - MTKViewDelegate
        
        // MARK: Changing the View's Layout
        
        func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) { }
        
        // MARK: Drawing the View's Contents
   
        func draw(in view: MTKView) { }
    }
}
