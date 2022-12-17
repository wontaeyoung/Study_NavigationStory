//
//  PageStore.swift
//  Study_NavigationStory
//
//  Created by 원태영 on 2022/12/06.
//

import SwiftUI

class PageStore : ObservableObject {
    @Published var path = NavigationPath()
}
