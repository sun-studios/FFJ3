class scenes.SceneBase extends Base
{
	public var name:String;
	
	public function SceneBase(sceneName:String) 
	{
		name = sceneName;
		clip = _root.createEmptyMovieClip("Scene_0", _root.getNextHighestDepth());
	}
	
	
	public function update ():Void {
		super.update();
	}
	
}