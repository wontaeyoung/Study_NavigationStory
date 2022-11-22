//
//  Page.swift
//  Study_NavigationStory
//
//  Created by 원태영 on 2022/11/20.
//

import Foundation

struct Page {
    let title : String // 페이지, 선택지 이름
    var script : String { scripts[title]! }  // 페이지 내용
}
