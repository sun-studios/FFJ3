import data.Library;
import managers.Manager;
import scenes.SceneBase;
import data.Scenes;

class scenes.Scene_1 extends SceneBase
{
	
	public function Scene_1() 
	{
		super(Scenes.GAME);
		
		Manager.clipManager.createLibraryObject(Library.Hero, clip);
		
		clip._x = 960;
		clip._y = 540;
		
	}
	
	public function update() {
		if (Manager.input.ctrl_left_down) {
			clip._x -= 5;
		}
		if (Manager.input.ctrl_right_down) {
			clip._x += 5;
		}
	}
	
}