import Foundation
let fruits:Set = ["Apple","Pear","Orange"]
let contacts=["Adam":123456789,"James":987654321,"Amy":912837365]
let word="ssfsfasdfasfsdafdsfsfsfs"
let halfOfOpenRange = 1..<5
let closedRange = 1...5

var now = Date().timeIntervalSince1970
let oneSecondFromNow = now+1


while now<oneSecondFromNow {
    now = Date().timeIntervalSince1970
    print("waiting")
}
