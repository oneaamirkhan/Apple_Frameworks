//
//  XDismissedButton.swift
//  Apple_Frameworks
//
//  Created by عامر خان on 13/11/23.
//

import SwiftUI

struct XDismissedButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

#Preview {
    XDismissedButton(isShowingDetailView: .constant(false))
}
