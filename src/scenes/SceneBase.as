class scenes.SceneBase extends Base
{
	public var name:String;
	public var scene:MovieClip;
	
	public function SceneBase(sceneName:String) 
	{
		name = sceneName;
		
	}
	
	public function setSceneClip(_mmc:MovieClip)
	{
		scene = _mmc;
	}
	
	public function update ():Void {
		super.update();
	}
	
}