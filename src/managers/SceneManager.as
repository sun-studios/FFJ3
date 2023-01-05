import scenes.SceneBase;
class managers.SceneManager
{
	
	private var scenes:Array;
	public var currentScene:SceneBase;
	
	public function SceneManager() 
	{
		scenes = new Array();
	}
	
	public function createScene(scene:SceneBase):Void {
		scenes.push(scene);
		
		if (scenes.length == 1) {
			setScene(scene.name);
		} else 
		if (scenes.length > 1) {
			scene.scene._visible = false;
		}
		
	}
	
	public function setScene(sceneName:String):Void {
		var scene:SceneBase;
		
		for (var i = 0; i < scenes.length; i ++) {
			scene = scenes[i];
			if (scene.name == sceneName) {
				break;
			}
		}
		if (scene == undefined) {
			throw new Error("No Scene Name Found.");
			return;
		}
		
		if (currentScene) {
			currentScene.scene._visible = false;
		}
		
		currentScene = scene;
		currentScene.scene._visible = true;
	}
	
	public function update () {
		for (var i = 0; i < scenes.length; i ++) {
			var scene:SceneBase = scenes[i];
			if (scene) {
				scene.update();
			}
		}
	}
}