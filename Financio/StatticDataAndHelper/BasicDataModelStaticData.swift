//
//  BasicDataModelStaticData.swift
//  Financio
//
//  Created by Jumman Hossen on 25/01/23.
//

import Foundation

///Those are all the category for app
var categories = ["Auto", "Entertainment", "Home", "Food", "Medical", "Personal Items", "Travel", "Utilities", "Others"]


///Those are some static data to create the app more easily
var transctions: [Transaction] = [
    Transaction(id:0, accountID:47, amount:43.41, category:"Medical", date:"21/03/2022", note:"There still missing some data", createdAt:"22/10/2022"),
    Transaction(id:1, accountID:47, amount:64.44, category:"Others", date:"22/03/2022", note:"There still missing some data", createdAt:"10/03/2022"),
    Transaction(id:2, accountID:47, amount:95.79, category:"Personal Items", date:"04/01/2022", note:"There still missing some data", createdAt:"23/10/2022"),
    Transaction(id:3, accountID:47, amount:47.21, category:"Travel", date:"19/01/2022", note:"There still missing some data", createdAt:"16/09/2022" ),
    Transaction(id:4, accountID:47, amount:17.42, category:"Home", date:"02/06/2022", note:"There still missing some data", createdAt:"18/10/2022"),
    Transaction(id:5, accountID:47, amount:38.79, category:"Food", date:"04/04/2022", note:"There still missing some data", createdAt:"12/04/2022"),
    Transaction(id:6, accountID:47, amount:28.1, category:"Entertainment", date:"27/12/2022", note:"There still missing some data", createdAt:"05/02/2022"),
    Transaction(id:7, accountID:47, amount:12.84, category:"Home", date:"04/11/2022", note:"There still missing some data", createdAt:"12/09/2022"),
    Transaction(id:8, accountID:47, amount:86.64, category:"Travel", date:"24/01/2022", note:"There still missing some data", createdAt:"06/11/2022"),
    Transaction(id:9, accountID:47, amount:91.32, category:"Travel", date:"28/07/2022", note:"There still missing some data", createdAt:"11/11/2022"),
    Transaction(id:10, accountID:47, amount:10.72, category:"Home", date:"21/03/2022", note:"There still missing some data", createdAt:"27/01/2022"),
    Transaction(id:11, accountID:47, amount:10.95, category:"Home", date:"28/08/2022", note:"There still missing some data", createdAt:"06/02/2022"),
    Transaction(id:12, accountID:47, amount:74.69, category:"Home", date:"06/02/2022", note:"There still missing some data", createdAt:"17/03/2022"),
    Transaction(id:13, accountID:47, amount:99.2, category:"Travel", date:"26/08/2022", note:"There still missing some data", createdAt:"12/02/2022"),
    Transaction(id:14, accountID:47, amount:58.31, category:"Home", date:"18/08/2022", note:"There still missing some data", createdAt:"11/07/2022"),
//    Transaction(id:15, accountID:47, amount:24.05, category:"Utilities", date:"11/01/2022", note:"There still missing some data", createdAt:"18/03/2022"),
    Transaction(id:16, accountID:47, amount:86.49, category:"Medical", date:"19/10/2022", note:"There still missing some data", createdAt:"21/05/2022"),
    Transaction(id:17, accountID:47, amount:72.41, category:"Auto", date:"09/03/2022", note:"There still missing some data", createdAt:"03/11/2022"),
    Transaction(id:18, accountID:47, amount:43.22, category:"Food", date:"19/07/2022", note:"There still missing some data", createdAt:"12/12/2022"),
    Transaction(id:19, accountID:47, amount:88.02, category:"Entertainment", date:"23/07/2022", note:"There still missing some data", createdAt:"03/02/2022"),
    Transaction(id: 20, accountID: 47, amount: 5.98, category: "Food", date: "", note: "", createdAt: "")
]

var bugets:[Category]=[
    Category(id:0, name:"Auto", buget:65.88, createdAt:"20/06/2022"),
    Category(id:1, name:"Entertainment", buget:60.24, createdAt:"13/09/2022"),
    Category(id:2, name:"Home", buget:73.93, createdAt:"14/10/2022"),
    Category(id:3, name:"Food", buget:22.58, createdAt:"11/02/2022"),
    Category(id:4, name:"Medical", buget:43.89, createdAt:"12/06/2022"),
    Category(id:5, name:"Personal_Items", buget:33.44, createdAt:"05/12/2022"),
    Category(id:6, name:"Travel", buget:44.08, createdAt:"02/05/2022"),
    Category(id:7, name:"Utilities", buget:100.29, createdAt:"18/07/2022"),
    Category(id:8, name:"Others", buget:31.26, createdAt:"22/02/2022")

]

