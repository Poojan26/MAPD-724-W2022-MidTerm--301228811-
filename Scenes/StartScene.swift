//File Name - MidTerm Test [Mail Pilot game]
//Author's Name - Poojan Jitendrakumar Patel
//Student Id - 301228811
//Date - 05/03/2022

import SpriteKit
import GameplayKit

class StartScene: SKScene
{
    
    // Instance variables
    var ocean: Ocean?
    
    override func didMove(to view: SKView)
    {
        name = "START"
        screenWidth = frame.width
        screenHeight = frame.height
        
        // Add ocean to the scene
        ocean = Ocean()
        ocean?.position = CGPoint(x:773,y: 0)
        addChild(ocean!)
    }
    
    func touchDown(atPoint pos : CGPoint) {
        
       
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval)
    {
        ocean?.Update()
       
    }
    
}

