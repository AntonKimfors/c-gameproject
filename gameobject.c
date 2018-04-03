#include "gameobject.h";
#include "renderer.h"

int nGameObjects = 0; 
GameObject* gameObjects[100];

void render(GameObject *this){
	renderGfxObject(&this->gfxObj, this->pos.x, this->pos.y, this->angle, this->scale);
}
