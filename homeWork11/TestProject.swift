//
//  TestProject.swift
//  homeWork11
//
//  Created by Dmitriy Lee on 13.12.2021.
//

import Foundation

class CoolFormatter {
    public static func toRubles(_ value: Int) -> String {
        let st = "\(value)"
        if st.count < 4 {
            return "\(value) P"
        }
        
        if st.count < 7 {
            let c = st.count
            return "\(st.prefix(c-3)) \(st.suffix(3)) P"
        }
        
        return ""
    }
}
