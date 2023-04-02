//
//  CheckboxView.swift
//  ToBeDone
//
//  Created by Zhang Yuhao on 2023/4/2.
//

import SwiftUI

struct CheckBoxView: View {
    @Binding var checked: Bool
    var body: some View {
        Image(systemName: checked ? "checkmark.circle.fill" : "circle")
            .foregroundColor(checked ? Color(UIColor.systemBlue) : Color.secondary)
            .onTapGesture {
                self.checked.toggle()
            }
    }
}
