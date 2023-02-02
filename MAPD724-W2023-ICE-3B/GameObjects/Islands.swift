import GameplayKit
import SpriteKit

class Islands : GameObject{
    
    
    init(){
        super.init(imageSrting: "island", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start() {
        zPosition = Layer.island.rawValue
        verticalSpeed = 5.0
        Reset()
    }
    
    override func Update() {
        Move()
        CheckBound()
    }
    
    override func CheckBound() {
        if (position.y <= -876){
            Reset()
        }
        
    }
    
    override func Reset() {
        position.y = 876
        let randomX: Int = (randomSource?.nextInt(upperBound: 626))! - 313
        position.x = CGFloat(randomX)
        isColliding = false
    }
    
    func Move(){
        position.y -= verticalSpeed!
    }
}
