func loveCalculator(){
    let loveScore=Int.random(in: 0...100)
    
    switch(loveScore){
    case 80...100:  print("YOu love each other like kanye loves kanye.")
    case 41..<81: print("You go together like coke and mentos")
    case ...40: print("you'll be forever alone")
    default: print("Error lovescore is out of range.")
    
    }


}

loveCalculator()
