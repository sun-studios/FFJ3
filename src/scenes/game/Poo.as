import flash.geom.Point;
import managers.Manager;
import scenes.game.GameObject;
import scenes.game.Scene_1;
/**
 * ...
 * @author ...
 */
class scenes.game.Poo extends GameObject
{

	var moveSpeed:Number = 3;
	
	public function Poo(scene:MovieClip, game) 
	{
		super(scene, game, "Poo");
	}
	
	public function update()
	{
			
		
		var dist:Number = distance(new Point(x, y), new Point(gameRef.hero.x, gameRef.hero.y));
		if (dist > 1) {
			var angle = getAngle(new Point(gameRef.hero.x, gameRef.hero.y));
			x += Math.cos(angle) * moveSpeed;
			y += Math.sin(angle) * moveSpeed;
		}
	}
	
	public function distance(p1:Point, p2:Point):Number {
		var dx:Number = p2.x-p1.x;
		var dy:Number = p2.y-p1.y;

	 return Math.sqrt(dx*dx + dy*dy) ;
	}
	
}