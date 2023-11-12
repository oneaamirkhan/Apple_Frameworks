//
//  FrameworkGridViewModel.swift
//  Apple_Frameworks
//
//  Created by عامر خان on 09/11/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
