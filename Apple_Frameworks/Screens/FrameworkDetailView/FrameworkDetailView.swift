//
//  FrameworkDetailView.swift
//  Apple_Frameworks
//
//  Created by عامر خان on 08/11/23.
//

import SwiftUI
import Foundation

struct FrameworkDetailView: View {
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        
        VStack{
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            }label: {
                AFButton(title: "Learn More")
            }
            .sheet(isPresented: $isShowingSafariView, content: {
                SafariView(url: (URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
                )}
        )}
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
