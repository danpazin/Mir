// Metal4Renderer.swift
// Mir
//
// SPDX-License-Identifier: Apache-2.0
// Copyright © 2026 Daniil Pazin. All rights reserved.
//

import MetalKit

final class Metal4Renderer: Renderer {
    
    // MARK: - Properties
    
    /// The Metal device used to create and manage GPU resources.
    private let device: MTLDevice
    /// The command queue responsible for scheduling and submitting command buffers to the GPU.
    private let commandQueue: MTL4CommandQueue?
    
    // MARK: - Initializers
    
    init(device: MTLDevice) {
        self.device = device
        commandQueue = device.makeMTL4CommandQueue()
    }
    
    // MARK: - Renderer
    
    func renderFrame(to view: MTKView) {
        
    }
}
