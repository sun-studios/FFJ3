import data.Library;
import flash.geom.Rectangle;
import scenes.SceneBase;

class scenes.Scene1 extends SceneBase
{
	
	public function Scene1() 
	{
		super("Scene1");
	}
	
	public function init():Void 
	{
		Main.clipManager.createLibraryObject(Library.Scene_0_Clip, this.clip);
		
	}
	
	public function update():Void {
		super.update();
		
		trace("sdfsd sd s");
	}
	
}