
class managers.InputManager
{
	
	//var gameData:GameData = _root.gameData;

	private var ctrl_left_key:Number; 
	private var ctrl_right_key:Number;
	private var ctrl_up_key:Number; 	
	private var ctrl_down_key:Number; 
	private var ctrl_jump_key:Number; 
	private var ctrl_shoot_key:Number;
	private var ctrl_melee_key:Number;

	public var ctrl_left_down:Boolean = false;
	public var ctrl_left_tap:Boolean = false;
	private var ctrl_left_filter:Boolean = false;

	public var ctrl_right_down:Boolean = false;
	public var ctrl_right_tap:Boolean = false;
	private var ctrl_right_filter:Boolean = false;

	public var ctrl_up_down:Boolean = false;
	public var ctrl_up_tap:Boolean = false;
	private var ctrl_up_filter:Boolean = false;

	public var ctrl_down_down:Boolean = false;
	public var ctrl_down_tap:Boolean = false;
	private var ctrl_down_filter:Boolean = false;

	public var ctrl_jump_down:Boolean = false;
	public var ctrl_jump_tap:Boolean = false;
	private var ctrl_jump_filter:Boolean = false;

	public var ctrl_shoot_down:Boolean = false;
	public var ctrl_shoot_tap:Boolean = false;
	private var ctrl_shoot_filter:Boolean = false;

	public var ctrl_melee_down:Boolean = false;
	public var ctrl_melee_tap:Boolean = false;
	private var ctrl_melee_filter:Boolean = false;
	
	public function InputManager() 
	{
		setDefaultControls();
		//_refresh();
	}
	
	public function update ():Void 
	{
		
		ctrl_left_tap  = false;
		ctrl_right_tap = false;
		ctrl_up_tap = false;
		ctrl_down_tap = false;
		ctrl_jump_tap = false;
		ctrl_shoot_tap = false;
		ctrl_melee_tap = false;
		
		if (Key.isDown(ctrl_left_key)) {
			ctrl_left_down = true;
			if (!ctrl_left_filter) {
				ctrl_left_tap = true;
				ctrl_left_filter = true;
			}
		} else {
			ctrl_left_filter = false;
			ctrl_left_down = false;
		}
		
		if (Key.isDown(ctrl_right_key)) {
			ctrl_right_down = true;
			if (!ctrl_right_filter) {
				ctrl_right_tap = true;
				ctrl_right_filter = true;
			}
		} else {
			ctrl_right_filter = false;
			ctrl_right_down = false;
		}
		
		if (Key.isDown(ctrl_up_key)) {
			ctrl_up_down = true;
			if (!ctrl_up_filter) {
				ctrl_up_tap = true;
				ctrl_up_filter = true;
			}
		} else {
			ctrl_up_filter = false;
			ctrl_up_down = false;
		}
		
		if (Key.isDown(ctrl_down_key)) {
			ctrl_down_down = true;
			if (!ctrl_down_filter) {
				ctrl_down_tap = true;
				ctrl_down_filter = true;
			}
		} else {
			ctrl_down_filter = false;
			ctrl_down_down = false;
		}
		
		if (Key.isDown(ctrl_jump_key)) {
			ctrl_jump_down = true;
			if (!ctrl_jump_filter) {
				ctrl_jump_tap = true;
				ctrl_jump_filter = true;
			}
		} else {
			ctrl_jump_filter = false;
			ctrl_jump_down = false;
		}
		
		if (Key.isDown(ctrl_shoot_key)) {
			ctrl_shoot_down = true;
			if (!ctrl_shoot_filter) {
				ctrl_shoot_tap = true;
				ctrl_shoot_filter = true;
			}
		} else {
			ctrl_shoot_filter = false;
			ctrl_shoot_down = false;
		}
		
		if (Key.isDown(ctrl_melee_key)) {
			ctrl_melee_down = true;
			if (!ctrl_melee_filter) {
				ctrl_melee_tap = true;
				ctrl_melee_filter = true;
			}
		} else {
			ctrl_melee_filter = false;
			ctrl_melee_down = false;
		}

	} 

	/*
	function _refresh():Void 
	{
		ctrl_left_key 	= gameData.ctrl_left_key;
		ctrl_right_key 	= gameData.ctrl_right_key;
		ctrl_up_key		= gameData.ctrl_up_key;
		ctrl_down_key	= gameData.ctrl_down_key;
		ctrl_jump_key	= gameData.ctrl_jump_key;
		ctrl_shoot_key	= gameData.ctrl_shoot_key;
		ctrl_melee_key 	= gameData.ctrl_melee_key;
	}
	*/
	
	
	public function setDefaultControls():Void {
		ctrl_left_key = 37;
		ctrl_right_key = 39;
		ctrl_up_key = 38;
		ctrl_down_key = 40;
		ctrl_jump_key = 32;
		ctrl_shoot_key = 65;
		ctrl_melee_key = 83;
		//save();
	}
}