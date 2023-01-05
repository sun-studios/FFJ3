import data.Library;
import data.Scenes;
import managers.ClipManager;
import managers.Manager;
import managers.SceneManager;
import scenes.Scene1;
import scenes.SceneBase;
import scenes.Scene_0;
import scenes.game.Scene_1;

class Main extends Base
{
	
	public var manager:Manager;
	public static var stageWidth: Number = 1280;
	public static var stageHeight: Number = 720;
	
	
	public function Main () {
		manager = new Manager();
		
		Manager.sceneManager.createScene(new Scene_1());
		
		Manager.sceneManager.setScene(Scenes.GAME);
	}
	
	public function update () {
		manager.update();
	}
	
}