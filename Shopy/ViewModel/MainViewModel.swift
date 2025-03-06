//
//  MainViewModel.swift
//  Shopy
//
//  Created by Chanuka Dilhara on 2025-03-05.
//

import SwiftUI

class MainViewModel: ObservableObject {
    static var shared: MainViewModel = MainViewModel()
    
    @Published var txtEmail: String = ""
    @Published var txtPassword: String = ""
    @Published var isShowPssword: Bool = false
}

