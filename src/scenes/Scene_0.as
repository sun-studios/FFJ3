import data.Library;
import data.Scenes;
import managers.Manager;
import scenes.SceneBase;

class scenes.Scene_0 extends SceneBase
{

	public function Scene_0() 
	{
		super(Scenes.MENU);
		Manager.clipManager.createLibraryObject(Library.Hero, clip);
		
	}
	
	public function update () {
		
	}
	
}