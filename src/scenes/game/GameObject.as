import flash.geom.Point;
import managers.Manager;
import scenes.game.Scene_1;
/**
 * ...
 * @author ...
 */
class scenes.game.GameObject extends Base
{
	public var clip:MovieClip;
	public var gameRef:Scene_1;
	
	//public var x:Number = 0;
	//public var y:Number = 0;
	
	public function GameObject(scene:MovieClip, game, name:String) 
	{
		
		if(name != undefined)
			clip = Manager.clipManager.createLibraryObject(name, scene);
		gameRef = game;
	}
	
	public function set x (val:Number) {
		clip._x = val;
	}
	
	public function get x ():Number {
		return clip._x;
	}
	
	public function set y (val:Number) {
		clip._y = val;
	}
	
	public function get y ():Number {
		return clip._y;
	}

	
	public function getAngle (target:Point):Number
	{
		var dY:Number = target.y - y;
		var dX:Number = target.x - x;
		return Math.atan2(dY, dX);
		
	}
	
}