import PlaygroundSupport
import SceneKit
import SceneKit.ModelIO

class Scene : UIViewController {
    var sceneView = SCNView(frame:CGRect(x: 0.0, y: 0.0, width: 500.0, height: 600.0))
    override func viewDidLoad() {
        view = sceneView
        sceneView.autoenablesDefaultLighting=true
        sceneView.showsStatistics=true
        sceneView.backgroundColor=#colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        let url = Bundle.main.url(forResource: "retrotv", withExtension: "usdz")!
        let asset = MDLAsset(url: url)
         
        var scene = SCNScene(mdlAsset: asset)
        sceneView.scene=scene
    
        sceneView.allowsCameraControl=true
        sceneView.antialiasingMode=SCNAntialiasingMode.multisampling4X
    }
}

NSSetUncaughtExceptionHandler { exception in
    let bar = exception
    print("💥 Exception thrown: \(exception)")
}

let myScene = Scene()
PlaygroundPage.current.liveView = myScene
