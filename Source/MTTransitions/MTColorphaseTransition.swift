//
//  MTColorphaseTransition.swift
//  MTTransitions
//
//  Created by alexiscn on 2019/1/28.
//

import MetalPetal

public class MTColorphaseTransition: MTTransition {
    
    public var fromStep: MTIColor = MTIColor(red: 0.0, green: 0.2, blue: 0.4, alpha: 0.0)

    public var toStep: MTIColor = MTIColor(red: 0.6, green: 0.8, blue: 1.0, alpha: 1.0)

    override var fragmentName: String {
        return "ColorphaseFragment"
    }

    override var parameters: [String: Any] {
        return [
            "fromStep": MTIVector(value: fromStep.toFloat4()),
            "toStep": MTIVector(value: toStep.toFloat4())
        ]
    }
}
