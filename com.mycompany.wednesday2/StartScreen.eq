
/*
 * StartScreen
 * Created by Eqela Studio 2.0b7.4
 */

public class StartScreen : SEScene
{
	SESprite color1;
	SESprite text1;

	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		color1 = add_sprite_for_color(Color.instance("black"), get_scene_width(), get_scene_height());
		
		rsc.prepare_font("myfont","arial bold color=white", 100);
		text1 = add_sprite_for_text("Press Here To Start Game!!","myfont");
		text1.move(50,300);
		
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		if(pi.is_inside(0,0,get_scene_width(),get_scene_height())){
		switch_scene(new MainScene());
		}

	}

	public void cleanup() {
		base.cleanup();
	}
		
}
