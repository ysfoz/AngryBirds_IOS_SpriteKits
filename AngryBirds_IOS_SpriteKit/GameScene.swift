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
    
    //
    
    var bird = SKSpriteNode()
    var box1 = SKSpriteNode()
    var box2 = SKSpriteNode()
    var box3 = SKSpriteNode()
    var box4 = SKSpriteNode()
    var box5 = SKSpriteNode()
    
    var gameStarted = false
    
    
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
        
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame) // ekrani bir cerceve olarak belirliyor
        self.scene?.scaleMode = .aspectFit // ekran ile scene boyutlarini ayarlamak icin
        
        //BIRD
        
        bird = childNode(withName: "bird") as! SKSpriteNode
        
        let birdTexture = SKTexture(imageNamed: "bird")
        
        bird.physicsBody = SKPhysicsBody(circleOfRadius: birdTexture.size().height / 11) // boyutu gibi, cevresindeki cember
        bird.physicsBody?.affectedByGravity = false // yer cekimi
        bird.physicsBody?.isDynamic = true // etkisi varmi
        bird.physicsBody?.mass = 0.15 // kutle
        
//        BOXES
        
        let boxTexture = SKTexture(imageNamed: "brick")
        let size = CGSize(width: boxTexture.size().width / 6, height: boxTexture.size().height / 6)
        
        box1 = childNode(withName: "box1") as! SKSpriteNode
        box1.physicsBody = SKPhysicsBody(rectangleOf: size)
        box1.physicsBody?.isDynamic = true
        box1.physicsBody?.affectedByGravity = true
        box1.physicsBody?.allowsRotation = true // donmesi icin
        box1.physicsBody?.mass = 0.4
        
        
        box2 = childNode(withName: "box2") as! SKSpriteNode
        box2.physicsBody = SKPhysicsBody(rectangleOf: size)
        box2.physicsBody?.isDynamic = true
        box2.physicsBody?.affectedByGravity = true
        box2.physicsBody?.allowsRotation = true // donmesi icin
        box2.physicsBody?.mass = 0.4
        
        
        box3 = childNode(withName: "box3") as! SKSpriteNode
        box3.physicsBody = SKPhysicsBody(rectangleOf: size)
        box3.physicsBody?.isDynamic = true
        box3.physicsBody?.affectedByGravity = true
        box3.physicsBody?.allowsRotation = true // donmesi icin
        box3.physicsBody?.mass = 0.4
        
        
        box4 = childNode(withName: "box4") as! SKSpriteNode
        box4.physicsBody = SKPhysicsBody(rectangleOf: size)
        box4.physicsBody?.isDynamic = true
        box4.physicsBody?.affectedByGravity = true
        box4.physicsBody?.allowsRotation = true // donmesi icin
        box4.physicsBody?.mass = 0.4
        
        box5 = childNode(withName: "box5") as! SKSpriteNode
        box5.physicsBody = SKPhysicsBody(rectangleOf: size)
        box5.physicsBody?.isDynamic = true
        box5.physicsBody?.affectedByGravity = true
        box5.physicsBody?.allowsRotation = true // donmesi icin
        box5.physicsBody?.mass = 0.4
        
        
       
        
        
        
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
       
    }
    
    func touchMoved(toPoint pos : CGPoint) {
       
    }
    
    func touchUp(atPoint pos : CGPoint) {
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        bird.physicsBody?.affectedByGravity = true
//        bird.physicsBody?.applyImpulse(CGVector(dx: 50, dy: 100))
        
        if gameStarted == false {
            if let touch = touches.first {
                let touchLocation = touch.location(in: self)
                let touchNodes = nodes(at: touchLocation)
                
                if touchNodes.isEmpty == false {
                    for node in touchNodes {
                        if let sprite = node as? SKSpriteNode {
                            if sprite == bird {
                                bird.position = touchLocation
                            }
                        }
                    }
                }
            }
        }
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if gameStarted == false {
            if let touch = touches.first {
                let touchLocation = touch.location(in: self)
                let touchNodes = nodes(at: touchLocation)
                
                if touchNodes.isEmpty == false {
                    for node in touchNodes {
                        if let sprite = node as? SKSpriteNode {
                            if sprite == bird {
                                bird.position = touchLocation
                            }
                        }
                    }
                }
            }
        }
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}
