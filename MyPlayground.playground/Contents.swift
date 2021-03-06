import Foundation

struct MyStructure{
    let instanceProperty = "ABC"
    static let typeProperty = "123"
    
    func instanceMethod(){
        
    }
    static func typeMethod(){
        
    }
}


let myStructure = MyStructure()
print(myStructure.instanceProperty)


print(MyStructure.typeProperty    )
