//
//  GameViewController.swift
//  IsenokGame
//
//  Created by Селезнев Дмитрий on 17.07.2021.
//

import UIKit
import SpriteKit
import CoreMotion
import SnapKit


/// Вью-контроллер сцены c игрой
final class GameViewController: UIViewController {

    private let motionManager: CMMotionManager
    private var isSceneReady = false

    private lazy var scene: SKScene = {
        let scene = SKScene(size: view.bounds.size)
        scene.backgroundColor = .clear
        scene.scaleMode = .resizeFill
        scene.physicsBody = SKPhysicsBody(
            edgeLoopFrom: CGRect(
                x: 0,
                y: 0,
                width: view.frame.width,
                height: view.frame.height + Appearance.maxOffsetYScene
            )
        )
        scene.physicsWorld.gravity = CGVector(dx: 0, dy: -Appearance.gravityRatio)

        return scene
    }()

    lazy var skView: SKView = {
        let skView = SKView()
        skView.presentScene(scene)
        skView.backgroundColor = .clear
        skView.ignoresSiblingOrder = true
        skView.showsPhysics = true

        return skView
    }()

    init(motionManager: CMMotionManager) {
        self.motionManager = motionManager
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    override func viewDidLayoutSubviews() {
        setupSKView()
        makeRandomSpriteNodes()
        scene.delegate = self
    }

    private func setupSKView() {
        view.addSubview(skView)
        skView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

extension GameViewController {
    // MARK: - GameScene

    private func makeRandomSpriteNodes() {
        let availableNodeCount = Appearance.mimNodeCount...Appearance.maxNodeCount
        let nodeCount = Int.random(in: availableNodeCount)
        var offset: CGFloat = 0.0
        for i in 1...nodeCount {
            DispatchQueue.main.async {
                offset += self.generateNodeOffsetY()
                let nodeName = i == nodeCount ? Appearance.lastNodeIdentifier : nil
                self.generateSpriteNode(with: offset, nodeName: nodeName)
            }
        }
    }

    private func generateSpriteNode(with offsetY: CGFloat, nodeName: String?) {
        guard let isenokKind = IsenokKind.allCases.randomElement() else { return }

        let position = makeNodePosition(with: offsetY)
        let angel = generateNodeAngleOfRotation()
        let node = createSpriteNode(isenokKind: isenokKind, nodeName: nodeName, position: position, angle: angel)
        scene.addChild(node)
    }

    private func createSpriteNode(
        isenokKind: IsenokKind,
        nodeName: String?,
        position: CGPoint,
        angle: CGFloat
    ) -> SKSpriteNode {
        let physicsBodyFrame = CGRect(origin: .zero, size: Appearance.nodeSize)
        let spriteNode = SKSpriteNode(color: .clear, size: Appearance.nodeSize)
        spriteNode.name = nodeName
        spriteNode.physicsBody = SKPhysicsBody(polygonFrom: isenokKind.getBezierPath(for: physicsBodyFrame).cgPath)
        spriteNode.anchorPoint = .zero
        spriteNode.physicsBody?.restitution = 0.4
        spriteNode.position = position
        spriteNode.zRotation = angle

        return spriteNode
    }

    private func generateNodeAngleOfRotation() -> CGFloat {
        let range = 0...100
        let value = CGFloat(Int.random(in: range)) / 100
        let angel = value * CGFloat.pi
        return angel
    }

    private func makeNodePosition(with offsetY: CGFloat) -> CGPoint {
        let offsetX = generateNodeOffsetX()
        let position = CGPoint(x: view.frame.midX + offsetX, y: view.frame.maxY + offsetY)
        return position
    }

    private func generateNodeOffsetX() -> CGFloat {
        let range = -Int(Appearance.nodeSize.width / 2)...Int(Appearance.nodeSize.width / 2)
        let offset = Int.random(in: range)
        return CGFloat(offset)
    }

    private func generateNodeOffsetY() -> CGFloat {
        let range = Int(Appearance.nodeSize.height)...Int(Appearance.nodeSize.height * 2)
        let offset = Int.random(in: range)
        return CGFloat(offset)
    }

    private func setupSceneReady() {
        guard let offsetY = scene.childNode(withName: Appearance.lastNodeIdentifier)?.frame.maxY,
               offsetY < view.frame.height,
               !isSceneReady
        else { return }

        isSceneReady = true
        motionManager.startAccelerometerUpdates()
        motionManager.startDeviceMotionUpdates()
        scene.physicsBody = SKPhysicsBody(
            edgeLoopFrom: CGRect(
                x: 0,
                y: 0,
                width: self.view.frame.width,
                height: self.view.frame.height
            )
        )
    }

    private func updateDeviceMotion() {
        guard let deviceMotionData = motionManager.deviceMotion, isSceneReady else { return }

        let  dx = deviceMotionData.userAcceleration.x * Appearance.impulseRation
        let dy = deviceMotionData.userAcceleration.y * Appearance.impulseRation
        scene.children.forEach { node in
            node.physicsBody?.applyImpulse(CGVector(dx: dx, dy: dy))
        }
    }

    private func updateAccelerometer() {
        guard let accelerometerData = motionManager.accelerometerData, isSceneReady else { return }
        let dx = accelerometerData.acceleration.x * Appearance.gravityRatio
        let dy = accelerometerData.acceleration.y * Appearance.gravityRatio
        scene.physicsWorld.gravity = CGVector(dx: dx, dy: dy)
    }
}

extension GameViewController {
    private enum Appearance {
        /// Размер объекта
        static let nodeSize = CGSize(width: 150, height: 150)
        /// Минимальное количество добавленных в сцену объектов
        static let mimNodeCount = 15
        /// Максимальное количество добавленных в сцену объектов
        static let maxNodeCount = 20
        /// Максимальное смещение верхней границы сцены по оси y
        static let maxOffsetYScene = CGFloat(maxNodeCount) * nodeSize.height * 2
        /// Коэффициент увеличения гравитации
        static let gravityRatio: Double = 10
        /// Коэффициент увеличения импульса
        static let impulseRation: Double = 50
        /// Идентификатор последней ноды
        static let lastNodeIdentifier = "lastNode"
    }
}

extension GameViewController: SKSceneDelegate {
    func update(_ currentTime: TimeInterval, for scene: SKScene) {
        setupSceneReady()
        updateAccelerometer()
        updateDeviceMotion()
    }
}
