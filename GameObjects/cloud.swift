import GameplayKit
import SpriteKit

class Cloud : GameObject
{
    // Constructor
    init(){
        super.init(imageString: "cloud", initialScale: 1.0)
        Start()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Lifecycle functions
    override func CheckBounds() {
        
        if (position.y < -756){
            Reset()
        }
    }
    
    override func Reset() {
        
        // randomize vertical speed
        verticalSpeed = CGFloat((randomSource?.nextUniform())! * 5.0) + 5.0
        
        // randomize horizontal drift
        horizontalSpeed = CGFloat((randomSource?.nextUniform())! * -4.0) + 2.0
        
        
        // Get a random number from -262 to 262
        let randomX:Int = (randomSource?.nextInt(upperBound: 524))! - 262
        position.x = CGFloat(randomX)
        
        // Get a random number from -756 to 776
        let randomY:Int = (randomSource?.nextInt(upperBound: 20))! + 756
        position.y = CGFloat(randomY)
        
        isCollding = false
    }
    
    //initialization
    override func Start() {
        Reset()
        zPosition = 3
        alpha = 0.5   // 50% transparent
        
    }
    
    override func Update() {
        Move()
        CheckBounds()
    }
    func Move(){
        position.y -= verticalSpeed!
        position.x -= horizontalSpeed!
    }
}
