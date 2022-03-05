//File Name - MidTerm Test [Mail Pilot game]
//Author's Name - Poojan Jitendrakumar Patel
//Student Id - 301228811
//Date - 05/03/2022
//Description - Updating game to run in landscape mode
//Github link: https://github.com/Poojan26/MAPD-724-W2022-MidTerm-301228811.git

import GameplayKit
import SpriteKit

class GameObject : SKSpriteNode, GameProtocol
{
    // public instance members
    var horizontalSpeed: CGFloat?
    var verticalSpeed: CGFloat?
    var width: CGFloat?
    var height: CGFloat?
    var halfWidth: CGFloat?
    var halfHeight: CGFloat?
    var scale: CGFloat? // uniform scale
    var isCollding: Bool?
    var randomSource: GKARC4RandomSource?
    var randomDist: GKRandomDistribution?
    
    
    // constructor / initializer
    init(imageString: String, initialScale: CGFloat)
    {
        // initialize the game object with an image
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        super.init(texture: texture, color: color, size: texture.size())
        
        scale = initialScale
        setScale(scale!)
        width = texture.size().width * scale!
        height = texture.size().height * scale!
        halfWidth = width! * 0.5
        halfHeight = height! * 0.5
        isCollding = false
        name = imageString
        randomSource = GKARC4RandomSource()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func CheckBounds()
    {
        
    }
    
    func Reset()
    {
        
    }
    
    func Start()
    {
        
    }
    
    func Update()
    {
        
    }
    
    
    
}
