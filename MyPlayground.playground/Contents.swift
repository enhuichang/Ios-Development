
import UIKit






extension UIButton{
    func makeCircular(){
        button.clipsToBounds = true
        button.layer.cornerRadius = self.frame.size.width/2
    }
}
let button = UIButton(frame: CGRect(x:0,y:0,width:50,height:50))

button.backgroundColor = .red

button.makeCircular()

