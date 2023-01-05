import flash.geom.Point;
import managers.ClipManager;
import managers.InputManager;
import managers.Manager;
import scenes.game.GameObject;
import scenes.game.Scene_1;
/**
 * ...
 * @author ...
 */
class scenes.game.Hero extends GameObject
{
	
	public var moveSpeed:Number = 5;
	public var multiplier:Number = 0.75;
	
	public function Hero(scene:MovieClip, game) 
	{
		super(scene, game, "Roxanne");
	}
	
	public function update()
	{
		//movement();
		movementAngle();
	}
	
	public function movement() {
		if (Manager.inputManager.ctrl_down_down)
		{
			if (Manager.inputManager.ctrl_right_down == false && Manager.inputManager.ctrl_left_down == false)
			{
				y += moveSpeed;
			}else{
				y += moveSpeed * multiplier;
			}
		}
		if (Manager.inputManager.ctrl_up_down)
		{
			if (Manager.inputManager.ctrl_right_down == false && Manager.inputManager.ctrl_left_down == false)
			{
				y -= moveSpeed;
			}else{
				y -= moveSpeed * multiplier;
			}
		}
		if (Manager.inputManager.ctrl_left_down)
		{
			if (Manager.inputManager.ctrl_up_down == false && Manager.inputManager.ctrl_down_down == false)
			{
				x -= moveSpeed;
			}else{
				x -= moveSpeed * multiplier;
			}
		}
		if (Manager.inputManager.ctrl_right_down)
		{
			if (Manager.inputManager.ctrl_up_down == false && Manager.inputManager.ctrl_down_down == false)
			{
				x += moveSpeed;
			}else{
				x += moveSpeed * multiplier;
			}
		}
	}
	
	public function movementAngle() {
		
		if (Manager.inputManager.ctrl_down_down || Manager.inputManager.ctrl_up_down || Manager.inputManager.ctrl_left_down || Manager.inputManager.ctrl_right_down) {
			
		} else {
			return;
		}
		
		var point:Point = new Point();
		
		if (Manager.inputManager.ctrl_up_down) point.y = -1;
		else if (Manager.inputManager.ctrl_down_down) point.y = 1;
		
		if (Manager.inputManager.ctrl_left_down) point.x = -1;
		else if (Manager.inputManager.ctrl_right_down) point.x = 1;
		
		var angle:Number = getAngle(new Point(point.x+x, point.y+y));
		x += Math.cos(angle) * moveSpeed;
		y += Math.sin(angle) * moveSpeed;
		
	}
	
}