class scenes.SceneBase extends Base
{
	
	public var clip:MovieClip;
	
	public function SceneBase(sceneName:String) 
	{
		clip = Main.stage.createEmptyMovieClip(sceneName, Main.stage.getNextHighestDepth());
		
		init();
	}
	
	public function init ():Void {
		
	}
	
	public function update ():Void {
		super.update();
	}
	
}