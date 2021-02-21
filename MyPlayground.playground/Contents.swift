struct Town{
    let name:String
    var citizens:[String]
    var resouce:[String:Int]
    
    func fortify(){
        print("Defences increased!")
    }
    
    init (name:String,citizens:[String],resouce :[String:Int]){
        self.name=name
        self.citizens=citizens
        self.resouce=resouce
    }
}

var anotherTown=Town(name: "Nameless Island", citizens: ["Tom hanks"], resouce: ["Cocunuts" : 100])


var ghostTown=Town(name: "Ghosty Mcghostface", citizens: [], resouce: ["Tumbleweed" : 1])


anotherTown.citizens.append("Wilson")
ghostTown.fortify()
