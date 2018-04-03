
// background.c
#include <math.h>
#include "background.h"

extern const Uint8 *state;

GameObject background;

void createBackground(){
	background.gfxObj = createGfxObject("../background.jpg");
	background.gfxObj.outputWidth = 800;
	background.gfxObj.outputHeight = 600;
	background.angle = 0;
	background.scale = 1.8f;
	background.pos.x = 400;
	background.pos.y = 300;
	background.update = updateBackground;
	background.render = render;

	gameObjects[nGameObjects++] = &background; 
}

void updateBackground(GameObject *this){
	 this->angle = fmod( background.angle + 0.02, 360);
	 this->scale += 1/2500;
	 
	  if (state[SDL_SCANCODE_W])
        this->scale = this->scale + this->scaleSpeed;           
    if (state[SDL_SCANCODE_S])
        this->scale = (this->scale - this->scaleSpeed <= 0) ? 0 : this->scale - this->scaleSpeed;
}
