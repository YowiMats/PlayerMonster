
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
	SESprite background;
	int w;
	int h;
	public static int x;
	public static int y;
	int i;
	public static bool collide;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		AudioClipManager.prepare("yakety");
		h = get_scene_height();
		collide = false;
		
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		rsc.prepare_image("background","wolf", w, h);
		background = add_sprite_for_image(SEImage.for_resource("background"));
		background.move(0,0);
		add_entity(new PlayerEntity());
		for(i=0; i<Math.random(3,5); i++){
		add_entity(new Monster());
	}
	
	AudioClipManager.play("yakety");
	
	}
	
	public void on_pointer_move(SEPointerInfo pi) {
		
		base.on_pointer_move(pi);
		x = pi.get_x();
		y = pi.get_y();
		if(collide) {
			switch_scene(new GameOver());
		}
		
	}

	public void cleanup() {
		base.cleanup();
	}
}
