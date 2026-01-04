// Renderer.swift
// Mir
//
// SPDX-License-Identifier: Apache-2.0
// Copyright © 2026 Daniil Pazin. All rights reserved.
//

import MetalKit

@MainActor
protocol Renderer: AnyObject {
    
    /// Instructs the renderer to draw a frame for a view.
    /// - Parameter view: A view the renderer draws to, which provides:
    ///     - A render pass descriptor that reflects the view's current configuration
    ///     - A drawable instance that the render draws to
    func renderFrame(to view: MTKView)
}
