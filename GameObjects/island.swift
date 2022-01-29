import GameplayKit
import SpriteKit

class Island : GameObject
{
    // Constructor
    init(){
        super.init(imageString: "island", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Lifecycle functions
    override func CheckBounds() {
        
        if (position.y < -730){
            Reset()
        }
    }
    
    override func Reset() {
        position.y = 730
        
        // Get a random number from -313 to 313
        let randomX:Int = (randomSource?.nextInt(upperBound: 616))! - 313
        position.x = CGFloat(randomX)
        isCollding = false
    }
    
    //initialization
    override func Start() {
        Reset()
        zPosition = 0
        verticalSpeed = 5.0
        
    }
    
    override func Update() {
        Move()
        CheckBounds()
    }
    func Move(){
        position.y -= verticalSpeed!
    }
}
