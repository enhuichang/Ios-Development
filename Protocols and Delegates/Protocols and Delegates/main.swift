
protocol AdvancedLifeSupoort{
    func performCPR()
}

class EmergencyCallHandler{
    var delegate: AdvancedLifeSupoort?
    
    func assessSituation(){
        print("Can you tell me what happend")
    }
    
    func medicalEmergency(){
        delegate?.performCPR()
    }
}

struct Paramedic:AdvancedLifeSupoort{
    
    init (handler:EmergencyCallHandler){
        handler.delegate=self
    }
    func performCPR() {
        print("The paramedic does chest compression, 30 per second.")
    }
}

class Doctor:AdvancedLifeSupoort{
    init(handler:EmergencyCallHandler) {
        handler.delegate=self
    }
    func performCPR() {
        print("The doctor does chest compression, 30 per second.")
    }
    func useStethescope(){
        print ("Listening for heart sounds")
    }
}
class Surgeon:Doctor{
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees")
    }
    
    func useElectricDrill(){
        print("Whirr...")
    }
}
    

let emilio=EmergencyCallHandler()
let angela = Surgeon(handler: emilio)


emilio.assessSituation()
emilio.medicalEmergency()

