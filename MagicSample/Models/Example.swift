//
//  Example.swift
//  MagicSample
//
//  Created by raniys on 2019/9/23.
//  Copyright © 2019 raniys. All rights reserved.
//

import SwiftUI

struct Example: Identifiable {
    var id = UUID().uuidString
    var title: String
    var subtitle: String
    var content: String
    var imageName: String = "image01"
}


let exampleList = [
    Example(title: "总书记牵挂的大湾村，现在怎么样了", subtitle: "2019-09-21 12:38:13", content: "总书记从北京坐了1个半小时飞机到合肥，又坐了1个半小时汽车到金寨，再用1个多小时进山来到这里，一路奔波，就是要了解扶贫实际情况，让老区人民过上幸福美好生活。"),
    Example(title: "现在怎么样了", subtitle: "2019-09-25 12:38:13", content: "在贫困户陈泽平、汪能保、汪达伟、汪达开、陈泽申家，习近平详细察看住房和陈设，了解贫困原因、贫困程度，通过扶贫手册看脱贫措施定了哪些、落实怎么样。当地干部沿途向总书记介绍茶园、鱼塘、小型光伏电站等扶贫项目，习近平一一询问生产经营、成本效益，同大家一起算脱贫时间账。"),
    Example(title: "脱贫攻坚已进入啃硬骨头", subtitle: "2019-09-26 15:38:13", content: "三年多过去了，总书记牵挂的大湾村，现在怎么样了？")
]
