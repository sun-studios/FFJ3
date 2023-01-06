import data.Library;
import managers.Manager;
import scenes.SceneBase;
import data.Scenes;
import scenes.game.Hero;
import scenes.game.Poo;

class scenes.game.Scene_1 extends SceneBase
{
	
	var hero:Hero;

	var enemies:Array;
	public function Scene_1() 
	{
		super(Scenes.GAME);
		setSceneClip(Manager.clipManager.createLibraryObject("GameClip", _root));
		hero = new Hero(scene, this);
		hero.x = Main.stageWidth / 2;
		hero.y = Main.stageHeight / 2;
		
		enemies = new Array();
		
		for (var i = 0; i < 100; i ++) {
			var enemy:Poo = new Poo(scene, this);
			
			enemy.x = Main.stageWidth * Math.random();
			enemy.y = Main.stageHeight * Math.random();
			enemy.moveSpeed = (enemy.moveSpeed * Math.random()) + .25;
			enemies.push(enemy);
			
		}
		
		
		
	}
	
	public function update() {
		hero.update();
		
		for (var i = 0; i < enemies.length; i ++) {
			var enemy = enemies[i];
			enemy.update();
		}
	}
	
}