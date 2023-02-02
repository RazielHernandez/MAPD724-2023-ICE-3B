import GameplayKit
import SpriteKit

class Cloud : GameObject{
    
    init(){
        super.init(imageSrting: "cloud", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func Start() {
        zPosition = Layer.cloud.rawValue
        alpha = 0.5
        Reset()
    }
    
    override func Update() {
        Move()
        CheckBound()
    }
    
    override func CheckBound() {
        if (position.y <= -902){
            Reset()
        }
        
    }
    
    override func Reset() {
        verticalSpeed = CGFloat((randomSource?.nextUniform())! * 5.0) + 5.0
        
        horizontalSpeed = CGFloat((randomSource?.nextUniform())! * 4.0) - 2.0
        
        //position.y = 876
        let randomX: Int = (randomSource?.nextInt(upperBound: 524))! - 262
        position.x = CGFloat(randomX)
        
        let randomY: Int = (randomSource?.nextInt(upperBound: 30))! + 902
        position.y = CGFloat(randomY)
        
        isColliding = false
    }
    
    func Move(){
        position.x -= horizontalSpeed!
        position.y -= verticalSpeed!
    }
}
