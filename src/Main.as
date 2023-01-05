import data.Library;
import scenes.Scene1;
import scenes.SceneBase;

class Main
{
	public static var stage:MovieClip;
	public static var clipManager:ClipManager;
	private var i:Number = 0;
	public var scene:Scene1;
	
	public function Main(stage:MovieClip) 
	{
		Main.stage = stage;
		
		Main.clipManager = new ClipManager();
		stage._xscale = 66.6;
		stage._yscale = 66.6;
		
		
		init();
		
		Main.stage.onEnterFrame = update;
	}
	
	public function init ():Void {
		//Entry Point
		addScene();
	}
	
	public function update ():Void {
		this.scene.update();
		trace(i ++);
	}
	
	public function addScene():Void {
		this.scene = new Scene1();
	}
	
}