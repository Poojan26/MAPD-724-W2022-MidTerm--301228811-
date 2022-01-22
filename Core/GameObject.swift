import GameplayKit
import SpriteKit

class GameObject : SKSpriteNode, GameProtocol
{
    
    // Constructor
    init(imageString: String, initialScale: CGFloat){
        
        // Public instance members
        var horizontalSpeed: CGFloat?
        var verticalSpeed: CGFloat?
        var scale: CGFloat? // uniform scale
        var width: CGFloat?
        var halfWidth: CGFloat?
        var height: CGFloat?
        var halfHeight: CGFloat?
        var isColliding: Bool?
        var randomSource: GKARC4RandomSource?
        var randomDist: GKRandomDistribution?
        
        
        // Initialize game object with an image
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        
        super.init(texture: texture, color: color, size: texture.size())
        
        scale = initialScale
        setScale(scale!)
        width = texture.size().width * scale!
        height = texture.size().height * scale!
        halfWidth = width! * 0.5
        halfHeight = height! * 0.5
        isColliding = false
        name = imageString
        randomSource = GKARC4RandomSource()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func CheckBounds() {
    
    }
    
    func Reset() {
        
    }
    
    func Start() {
        
    }
    
    func Update() {
        
    }
    
        
}
