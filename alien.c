// alien.c
//#include <math.h>
#include "alien.h"
#include "gameobject.h"
#include "renderer.h"

	/*static GameObject alien1;
     static GameObject alien2;
	static GameObject alien3;*/
	
static GameObject aliens[3];

static void updateAlien(GameObject* this){
	 // update positions
   this->pos.x += this->moveDir.x * this->speed;
   this->pos.y += this->moveDir.y * this->speed;
 
   // Hämta fönsterstorleken:
   int screenWidth, screenHeight; 
   SDL_GetWindowSize(gWindow, &screenWidth, &screenHeight);
    
   // Låt objektet studsa vid skärmkanterna    
   if(this->pos.x <= this->gfxObj.outputWidth/2 && this->moveDir.x < 0) {
       int overflow = (this->gfxObj.outputWidth/2) - this->pos.x;
       this->pos.x += 2*overflow;
       this->moveDir.x = -this->moveDir.x;
   }
   if(this->pos.x >= screenWidth - this->gfxObj.outputWidth/2 && this->moveDir.x > 0) 
   {
       int overflow = this->pos.x - (screenWidth - this->gfxObj.outputWidth/2);
       this->pos.x -= 2*overflow;
       this->moveDir.x = -this->moveDir.x;
   }
   
   if(this->pos.y <= this->gfxObj.outputHeight/2 && this->moveDir.y < 0) {
      int overflow = (this->gfxObj.outputHeight/2) - this->pos.y;
       this->pos.y += 2*overflow;
       this->moveDir.y = -this->moveDir.y;
   }
   if(this->pos.y >= screenHeight - this->gfxObj.outputHeight/2 && this->moveDir.y > 0)
   {
       int overflow = this->pos.y - (screenHeight - this->gfxObj.outputHeight/2);
       this->pos.y -= 2*overflow;
       this->moveDir.y = -this->moveDir.y;
   } 
	
}

static void init(GameObject* pObj, GfxObject* pGfx, int w, int h, vec2f pos, vec2f moveDir, float speed){
	
	pObj->gfxObj = *pGfx;
	pObj->gfxObj.outputWidth = w;
	pObj->gfxObj.outputHeight = h;
	pObj->pos = pos;
	pObj->moveDir = moveDir;
	pObj->speed = speed;
	pObj->angle = 0;
	pObj->angleSpeed = 0;
	pObj->scale = 1.0f;
	pObj->scaleSpeed = 0;
	pObj->update = updateAlien;
	pObj->render = render;
}

void createAliens(){
	static GfxObject alienGfx; // = createGfxObject("../alien.png");
	static bool bFirstTime = true;
	
	 if(bFirstTime)
    {
        bFirstTime = false;
        alienGfx = createGfxObject(  "../alien.png" );
    }
	float speed = 5.0f;
	int w = 100, h = 100;
	init(&aliens[0], &alienGfx, w, h, (vec2f){100,-50}, (vec2f){1,1}, speed);
	init(&aliens[1], &alienGfx, w, h, (vec2f){200,-50}, (vec2f){0.66f,1}, speed);
	init(&aliens[2], &alienGfx, w, h, (vec2f){300,-50}, (vec2f){0.33f,1}, speed);
	
	gameObjects[nGameObjects++] = &aliens[0];
	gameObjects[nGameObjects++] = &aliens[1];
	gameObjects[nGameObjects++] = &aliens[2];

}
