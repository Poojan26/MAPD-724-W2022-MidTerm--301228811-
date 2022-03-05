//File Name - MidTerm Test [Mail Pilot game]
//Author's Name - Poojan Jitendrakumar Patel
//Student Id - 301228811
//Date - 05/03/2022
//Description - Updating game to run in landscape mode
//Github link: https://github.com/Poojan26/MAPD-724-W2022-MidTerm-301228811.git

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
        
        if (position.x < -730){
            Reset()
        }
    }
    
    override func Reset() {
        position.x = 730
        
        // Get a random number from -313 to 313
        let randomX:Int = (randomSource?.nextInt(upperBound: 616))! - 313
        position.y = CGFloat(randomX)
        isCollding = false
    }
    
    //initialization
    override func Start() {
        Reset()
        zPosition = 1
        verticalSpeed = 5.0
        
    }
    
    override func Update() {
        Move()
        CheckBounds()
    }
    func Move(){
        position.x -= verticalSpeed!
    }
}
