
/*
 * Monster
 * Created by Eqela Studio 2.0b7.4
 */

public class Monster : SEEntity

{
	SESprite monster;
	int w;
	int h;
	int mx;
	int my;
	//int ex;
	//int ey;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		rsc.prepare_image("mymonster","reichtangle", 0.2*w, 0.3*h);
		monster = add_sprite_for_image(SEImage.for_resource("mymonster"));
		monster.move(Math.random(0,w), Math.random(0,h));
		mx = monster.get_x();
		my = monster.get_y();
		//ex = MainScene.x;
		//ey = MainScene.y;
	}

	public void  tick(TimeVal now, double delta) {
		
		base.tick(now,delta);
		mx = monster.get_x();
		my = monster.get_y();
		monster.move(mx+(MainScene.x-mx)/Math.random(20,50), my+(MainScene.y-my)/Math.random(20,50));
		if((mx +0.15*get_scene_width()>= MainScene.x && mx<=MainScene.x) && (my+0.15*get_scene_height() >= MainScene.y&&my<=MainScene.y)) {
			MainScene.collide = true;			
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}
