
/*
 * GameOver
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOver : SEScene
{
	SESprite color2;
	SESprite text2;

	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		color2 = add_sprite_for_color(Color.instance("black"), get_scene_width(), get_scene_height());
		
		rsc.prepare_font("myfont","arial bold color=white", 100);
		text2 = add_sprite_for_text("GAME OVER","myfont");
		
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		if(pi.is_inside(0,0, get_scene_width(), get_scene_height())){
		switch_scene(new StartScreen());
		}
	}
}
