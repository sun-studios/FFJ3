import data.Library;
import scenes.Scene1;
import scenes.SceneBase;
class Main
{
	
	public static var stage:MovieClip;
	public static var clipManager:ClipManager;
	
	public function Main(stage:MovieClip) 
	{
		Main.stage = stage;
		Main.stage.onEnterFrame = update;
		Main.clipManager = new ClipManager();
		
		init();
	}
	
	public function init ():Void {
		//Entry Point
		addScene();
	}
	
	public function update ():Void {
		
		
	}
	
	
	
	public function addScene():Void {
		var scene:Scene1 = new Scene1();
		
	}
	
}