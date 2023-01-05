import data.Library;
import managers.Manager;
import scenes.SceneBase;
import data.Scenes;
import scenes.game.Hero;
import scenes.game.Poo;

class scenes.game.Scene_1 extends SceneBase
{
	
	var hero:Hero;
	var enemy:Poo;
	
	public function Scene_1() 
	{
		super(Scenes.GAME);
		setSceneClip(Manager.clipManager.createLibraryObject("GameClip", _root));
		hero = new Hero(scene, this);
		hero.x = Main.stageWidth / 2;
		hero.y = Main.stageHeight / 2;
		enemy = new Poo(scene, this);
		enemy.x = Main.stageWidth / 2;
		enemy.y = Main.stageHeight / 2;
		
	}
	
	public function update() {
		hero.update();
		enemy.update();
	}
	
}