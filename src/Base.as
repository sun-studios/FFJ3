/**
 * ...
 * @author Daniel Sun
 */
class Base
{
	
	public function Base() 
	{
		
	}
	
	public function createLibraryObject(libraryName:String, parent:MovieClip):MovieClip {
		return parent.attachMovie(libraryName, libraryName+parent.getNextHighestDepth(), parent.getNextHighestDepth());
	}
	
}