// Copyright 2018 LinkedIn Corp.
// Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.

import Foundation

@objc open class LOKOverlayLayout: LOKBaseLayout {
    @objc public init(primary: LOKLayout,
                      background: [LOKLayout]? = nil,
                      overlay: [LOKLayout]? = nil,
                      alignment: LOKAlignment? = nil,
                      viewReuseId: String? = nil,
                      viewClass: View.Type? = nil,
                      configure: ((View) -> Void)? = nil) {
        super.init(layout: OverlayLayout(
            primaryLayouts: [primary.unwrapped],
            backgroundLayouts: background?.map { $0.unwrapped } ?? [],
            overlayLayouts: overlay?.map { $0.unwrapped } ?? [],
            alignment: alignment?.alignment ?? .fill,
            viewReuseId: viewReuseId,
            viewClass: viewClass,
            config: configure))
    }

    @objc public init(primaryLayouts: [LOKLayout],
                      backgroundLayouts: [LOKLayout]? = nil,
                      overlayLayouts: [LOKLayout]? = nil,
                      alignment: LOKAlignment? = nil,
                      viewReuseId: String? = nil,
                      viewClass: View.Type? = nil,
                      configure: ((View) -> Void)? = nil) {
        super.init(layout: OverlayLayout(
            primaryLayouts: primaryLayouts.map { $0.unwrapped },
            backgroundLayouts: backgroundLayouts?.map { $0.unwrapped } ?? [],
            overlayLayouts: overlayLayouts?.map { $0.unwrapped } ?? [],
            alignment: alignment?.alignment ?? .fill,
            viewReuseId: viewReuseId,
            viewClass: viewClass,
            config: configure))
    }
}
