//File Name - MidTerm Test [Mail Pilot game]
//Author's Name - Poojan Jitendrakumar Patel
//Student Id - 301228811
//Date - 05/03/2022
//Description - Updating game to run in landscape mode
//Github link: https://github.com/Poojan26/MAPD-724-W2022-MidTerm-301228811.git

import GameplayKit
import SpriteKit

class Ocean : GameObject
{
    // Constructor
    init(){
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Lifecycle functions
    override func CheckBounds() {
        
        if (position.x < -773){
            Reset()
        }
    }
    
    override func Reset() {
        position.x = 773
    }
    
    //initialization
    override func Start() {
        zPosition = 0
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

