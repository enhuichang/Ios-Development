struct MyOPtional{
    var property=123
    func method(){
        print("I am the struct's method")
    }
}
let myOptional :MyOPtional?

myOptional=MyOPtional()
myOptional?.method()
print("YES")
