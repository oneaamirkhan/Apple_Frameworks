//
//  FrameworkGridViewModel.swift
//  Apple_Frameworks
//
//  Created by عامر خان on 09/11/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
