// MapMetalKitView.Coordinator.swift
// Mir
//
// SPDX-License-Identifier: Apache-2.0
// Copyright © 2025 Daniil Pazin. All rights reserved.
//

import MetalKit

extension MapMetalKitView {
    
    final class Coordinator: NSObject, MTKViewDelegate {
        
        // MARK: - Properties
        
        let device: MTLDevice
        let renderer: Renderer
        
        // MARK: - Initializers
        
        override init() {
            
        }
        
        // MARK: - MTKViewDelegate
        
        // MARK: Changing the View’s Layout
        
        func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) { }
        
        // MARK: Drawing the View’s Contents
        
        func draw(in view: MTKView) { }
    }
}
