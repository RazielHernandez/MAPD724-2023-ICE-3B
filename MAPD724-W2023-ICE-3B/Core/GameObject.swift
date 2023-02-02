import GameplayKit
import SpriteKit

class GameObject : SKSpriteNode, GameProtocol{
    
    
    var horizontalSpeed: CGFloat?
    var verticalSpeed: CGFloat?
    var width: CGFloat?
    var height: CGFloat?
    var halfWidth: CGFloat?
    var halfHeight: CGFloat?
    
    var scale: CGFloat?
    var isColliding: Bool?
    var randomDistribution: GKRandomDistribution?
    var randomSource: GKARC4RandomSource?
    
    init(imageSrting: String, initialScale: CGFloat){
        let texture = SKTexture(imageNamed: imageSrting)
        let color = UIColor.clear
        super.init(texture: texture, color: color, size: texture.size())
        
        scale = initialScale
        setScale(scale!)
        width = texture.size().width * 0.5
        
        halfWidth = width! * 0.5
        
        isColliding = false
        name = imageSrting
        
        randomSource = GKARC4RandomSource()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func Start() {
        
    }
    
    func Update() {
        
    }
    
    func CheckBound() {
        
    }
    
    func Reset() {
        
    }
    
}
