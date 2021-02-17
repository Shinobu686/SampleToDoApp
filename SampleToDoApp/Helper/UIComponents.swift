//
//  Helper.swift
//  SampleToDoApp
//
//  Created by 久富稜也 on 2021/02/17.
//

import Foundation
import UIKit
import SwiftUI

struct UIComponents {
    
    // デバイス幅
    static let screenWidth = UIScreen.main.bounds.width
    
    // デバイスの高さ
    static let screenHeight = UIScreen.main.bounds.height
    
    //ナビゲーションバー色指定
    static func setupNavigationBar() {
        UINavigationBar.appearance().tintColor = .systemGray6
        UINavigationBar.appearance().barTintColor = .systemGreen
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
}
