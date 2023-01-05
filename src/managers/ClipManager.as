class managers.ClipManager
{
	
	private var clips:Array;
	
	public function ClipManager() 
	{
		clips = new Array();
	}
	
	public function createLibraryObject(libraryName:String, parent:MovieClip):MovieClip {
		var bitDepth:Number = parent.getNextHighestDepth();
		var clip =  parent.attachMovie(libraryName, libraryName+bitDepth, bitDepth);
		
		clips.push([clip, parent, bitDepth]);
		
		return clip;
	}
	
}