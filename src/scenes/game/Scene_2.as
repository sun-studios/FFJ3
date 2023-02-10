import data.Scenes;
import managers.Manager;
import scenes.SceneBase;
/**
 * ...
 * @author Daniel Sun
 */
class scenes.game.Scene_2 extends SceneBase
{
	public var playerFront:MovieClip;
	public var playerBack:MovieClip;
	
	public var floor1:MovieClip;
	public var floor2:MovieClip;
	public var floor3:MovieClip;
	public var floor1_xpos:Number = 0;
	public var floor2_xpos:Number = 0;
	public var floor3_xpos:Number = 0;
	
	public var floorPosition:Number = 0;
	
	public function Scene_2() 
	{
		super(Scenes.GAME);
		
		setSceneClip(Manager.clipManager.createLibraryObject("Scene_1_Clip", _root));
		
		playerFront = scene.playerFront;
		playerBack = scene.playerBack;
		
		floor1 = scene.floor1;
		floor2 = scene.floor2;
		floor3 = scene.floor3;
		
	}
	
	public function update () {
		var dir:Number = 0;
		var playerBackDir:Number = 0;
		if (Manager.input.ctrl_left_down) {
			dir -= 1;
			floorPosition --;
			playerFront.gotoAndStop(3);
		} else if (Manager.input.ctrl_right_down) {
			dir += 1;
			floorPosition ++;
			playerFront.gotoAndStop(2);
		} else {
			playerFront.gotoAndStop(1);
		}
		
		if (Key.isDown(65)) {
			//dir  -= 1;
			playerBackDir = -1;
			floorPosition ++;
			playerBack.gotoAndStop(3);
		} else 
		if (Key.isDown(68)) {
			//dir += 1;
			playerBackDir = 1;
			floorPosition --;
			playerBack.gotoAndStop(2);
		} else {
			playerBack.gotoAndStop(1);
		}
		
		var sameDirection:Boolean = false;
		if ((Key.isDown(65) && Manager.input.ctrl_left_down)) {
			sameDirection = true;
			dir = -1;
		} else 
		if ((Key.isDown(68) && Manager.input.ctrl_right_down)) {
			sameDirection = true;
			dir = 1;
		}
		
		
		if (sameDirection) {
			floor1_xpos -= dir * 5;
			floor2_xpos -= dir * 10;
			floor3_xpos -= dir * 20;
		} else {
			floor1_xpos -= (dir * 0) 	+ (playerBackDir * 10);
			floor2_xpos -= (dir * 2.5) 	+ (playerBackDir * 7.5);
			floor3_xpos -= (dir * 10)	+ (playerBackDir * 0);
		}
		
		smoothMovement(floor1, floor1_xpos);
		smoothMovement(floor2, floor2_xpos);
		smoothMovement(floor3, floor3_xpos);
		
	}
	
	private function distanceBetween(x:Number, y:Number):Number {
		return x - y;
	}
	
	private function smoothMovement(obj:MovieClip, position:Number) {
		obj._x += (position - obj._x) / 5;
	}
	
}