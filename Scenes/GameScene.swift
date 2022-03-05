//
//  GameScene.swift
//  MAPD-724-GAME
//
//  Created by Poojan on 1/22/22.
//
import UIKit
import AVFoundation
import SpriteKit
import GameplayKit

let screenSize = UIScreen.main.bounds
var screenWidth: CGFloat?
var screenHeight: CGFloat?


class GameScene: SKScene {
    
    var gameManager: GameManager? 
    
    // variable instance
    var ocean: Ocean?
    var island: Island?
    var plane: Plane?
    var clouds: [Cloud] = []
    
    override func didMove(to view: SKView) {
        screenWidth = frame.width
        screenHeight = frame.height
        name = "GAME"
        
        // Add ocean to the scene
        ocean = Ocean()
        ocean?.position = CGPoint(x:773,y: 0)
        addChild(ocean!)
        
        // Add osland to the scene
        island = Island()
        addChild(island!)
        
        // Add plane to the scene
        plane = Plane()
        plane?.position = CGPoint(x:-500,y:0)
        addChild(plane!)
        
        // Add single cloud to the scene
        //cloud = Cloud()
        //addChild(cloud!)
        
        // Add 3 clouds to the scene
        for index in 0...1
        {
            let cloud: Cloud = Cloud()
            clouds.append(cloud)
            addChild(clouds[index])
        }
        
        // Sounds
       let engineSound = SKAudioNode(fileNamed: "engine.mp3")
       self.addChild(engineSound)
       engineSound.autoplayLooped = true
       
       // preload / prewarm impulse
       do{
           let sounds:[String] = ["thunder", "yay"]
           for sound in sounds
           {
               let path: String = Bundle.main.path(forResource: sound, ofType: "mp3")!
               let url: URL = URL(fileURLWithPath: path)
               let player: AVAudioPlayer = try AVAudioPlayer(contentsOf: url)
               player.prepareToPlay()
           }
       }
       catch
       {
           
       }
       
   }
    

    
    func touchDown(atPoint pos : CGPoint) {
        
        plane?.TouchMove(newPos: CGPoint(x:-500, y: pos.y))
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
        plane?.TouchMove(newPos: CGPoint(x:-500, y: pos.y))
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
        plane?.TouchMove(newPos: CGPoint(x:-500, y: pos.y))
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
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        ocean?.Update()
        island?.Update()
        plane?.Update()
        
        
        // Update each cloud in clouds 
        for cloud in clouds
        {
            cloud.Update()
            CollisionManager.SquaredRadiusCheck(scene: self, object1: plane!, object2: cloud)
        }
        
        CollisionManager.SquaredRadiusCheck(scene: self, object1: plane!, object2: island!)
        
        if(ScoreManager.Lives < 1)
        {
            gameManager?.PresentEndScene()

        }
    }
}

