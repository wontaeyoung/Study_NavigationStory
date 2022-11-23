//
//  Page.swift
//  Study_NavigationStory
//
//  Created by 원태영 on 2022/11/20.
//

import Foundation

struct Page : Hashable {
    let id : Int
    var title : String { pages[id]!.title} // 페이지, 선택지 이름
    var script : String { pages[id]!.script }  // 페이지 내용
    var nextPages: [Page] { pages[id]!.next } // 다음 페이지 리스트
}


