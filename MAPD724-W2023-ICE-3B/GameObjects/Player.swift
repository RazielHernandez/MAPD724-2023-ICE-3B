import GameplayKit
import SpriteKit

class Player : GameObject{
    
    init(){
        super.init(imageSrting: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start() {
        zPosition = Layer.plane.rawValue
        Reset()
    }
    
    override func Update() {
        //Move()
        CheckBound()
    }
    
    override func CheckBound() {
        
        //left boundary
        if (position.x <= -255){
            position.x = -255
        }
        
        //right boundary
        
        if (position.x >= 255){
            position.x = 255
        }
        
    }
    
    override func Reset() {
        position.y = -500
    }
    
    func TouchMove(newPos: CGPoint){
        position = newPos
    }
}
