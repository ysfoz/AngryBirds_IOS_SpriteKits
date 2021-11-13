//
//  GameScene.swift
//  AngryBirds_IOS_SpriteKit
//
//  Created by ysf on 13.11.21.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
//    GameScene uzerinden eklemek yerine bu sekilde el ile nesneleri eklemek daha dogru, alt kisimd da ozellikleri veriliyor.
    
//    var bird2 = SKSpriteNode()
//    var bird3 = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        
//        let texture = SKTexture(imageNamed: "bird")
//        bird2 = SKSpriteNode(texture: texture)
//        bird2.position = CGPoint(x: -self.frame.width / 4, y: -self.frame.height / 4)
//        bird2.size = CGSize(width: self.frame.width / 16, height: self.frame.height / 10)
//        bird2.zPosition = 1
//        self.addChild(bird2)
//
//        bird3.texture = SKTexture(imageNamed: "bird")
//        bird3.position = CGPoint(x: -50 , y: -50)
//        bird3.size = CGSize(width: 100, height: 100)
//        bird3.zPosition = 1
//        self.addChild(bird3)
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
       
    }
    
    func touchMoved(toPoint pos : CGPoint) {
       
    }
    
    func touchUp(atPoint pos : CGPoint) {
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}
