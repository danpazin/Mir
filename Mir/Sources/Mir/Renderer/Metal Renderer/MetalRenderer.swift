// MetalRenderer.swift
// Mir
//
// SPDX-License-Identifier: Apache-2.0
// Copyright © 2026 Daniil Pazin. All rights reserved.
//

import MetalKit

final class MetalRenderer: Renderer {
    
    // MARK: - Properties
    
    /// The Metal device used to create and manage GPU resources.
    private let device: MTLDevice
    /// The command queue responsible for scheduling and submitting command buffers to the GPU.
    private let commandQueue: MTLCommandQueue?
    
    // MARK: - Initializers
    
    init(device: MTLDevice) {
        self.device = device
        commandQueue = device.makeCommandQueue()
    }
    
    // MARK: - Renderer
    
    func renderFrame(to view: MTKView) {
        guard let commandBuffer = commandQueue?.makeCommandBuffer() else { return }
        
    }
}

