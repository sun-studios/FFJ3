import managers.ClipManager;
import managers.InputManager;
import managers.SceneManager;

class managers.Manager
{
	public static var clipManager:ClipManager;
	public static var sceneManager:SceneManager;
	public static var inputManager:InputManager;
	public static var input:InputManager;
	
	public function Manager() 
	{
		clipManager = new ClipManager();
		sceneManager = new SceneManager();
		inputManager = new InputManager();
		input = inputManager;
	}
	
	public function update () {
		sceneManager.update();
		inputManager.update();
	}
	
}