// player.c

#include <math.h>
#include "player.h"
extern const Uint8 *state;

GameObject ship;	

void createPlayer(){
	ship.gfxObj = createGfxObject(  "../ship.png" );
    ship.gfxObj.outputWidth  = 200;
    ship.gfxObj.outputHeight = 200;
	ship.speed = 3;
	ship.scale = 1.0f;
	ship.pos.x = 400;
	ship.pos.y = 300;
	ship.update = updateShip;
	ship.render = render;
	
	gameObjects[nGameObjects++] =&ship;
}

	
void updateShip(GameObject* this){
	if (state[SDL_SCANCODE_RIGHT])
		this->pos.x = (this->pos.x+this->speed >= 799) ? 799 : this->pos.x+this->speed;
	if (state[SDL_SCANCODE_LEFT])
		this->pos.x = (this->pos.x -this->speed <= 0) ? 0 : this->pos.x-this->speed; 
	if (state[SDL_SCANCODE_DOWN])
		this->pos.y = (this->pos.y+this->speed >= 599) ? 599 : this->pos.y+this->speed;           
	if (state[SDL_SCANCODE_UP])
		this->pos.y = (this->pos.y-this->speed <= 0) ? 0 : this->pos.y-this->speed;
}

