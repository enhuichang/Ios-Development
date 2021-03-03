protocol CanFly {
    func fly()
}
extension CanFly{
    func fly(){
        print("The obejct takes off into the air.")
    }
}
class Bird{
    func fly() {
        print("The bird takes off into the air.")
    }
    var isFemale=true
    
    func layEgg() {
        if isFemale{
            print("The bird makes a new bird in a shell.")
        }
    }
}

class Eagle:Bird,CanFly{
//   func fly() {
//      print("The eagle flaps its wings and lifts off //into the sky.")
// }
    
    func soar(){
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin:Bird{
    func swim(){
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum{
    func flyingDemo(flyingObject:CanFly){
        flyingObject.fly()
    }
}

struct Airplane:CanFly {

}
 
let myPlane=Airplane()
myPlane.fly()
