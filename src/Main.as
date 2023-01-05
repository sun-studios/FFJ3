import data.Library;
import data.Scenes;
import managers.ClipManager;
import managers.Manager;
import managers.SceneManager;
import scenes.Scene1;
import scenes.SceneBase;
import scenes.Scene_0;
import scenes.Scene_1;

class Main extends Base
{
	
	public var manager:Manager;
	
	public function Main () {
		manager = new Manager();
		
		Manager.sceneManager.createScene(new Scene_0());
		Manager.sceneManager.createScene(new Scene_1());
		
		Manager.sceneManager.setScene(Scenes.GAME);
	}
	
	public function update () {
		manager.update();
	}
	
}