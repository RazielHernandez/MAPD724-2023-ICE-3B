import GameplayKit
import SpriteKit


import Foundation

class CollisionManager {
    
    public static var gameViewController : GameViewController?
    
    public static func SquareDistance(point1: CGPoint, point2: CGPoint) -> CGFloat {
        let Xs : CGFloat = point2.x - point1.x
        let Ys : CGFloat = point2.y - point1.y
        return Xs * Xs + Ys + Ys
    }
    
    public static func SquareRadiusCheck (scene: SKScene, object1: GameObject, object2: GameObject){
        let P1 = object1.position
        let P2 = object2.position
        let P1Raidus = object1.halfHeight!
        let P2Raidus = object2.halfHeight!
        
        let Radii = P1Raidus + P2Raidus
        if (SquareDistance(point1: P1, point2: P2) < Radii * Radii){
            if (!object2.isColliding!){
                switch(object2.name){
                case "island":
                    print("Collidig with Island")
                        break
                    
                case "cloud":
                    print("Collidig with Cloud")
                    break
                    
                default:
                    break
                }
                
                object2.isColliding = true
            }
        }
    }
}
