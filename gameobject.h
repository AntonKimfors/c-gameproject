#ifndef GAMEOBJECT_H // eller vad din fil heter. Versaler på 
#define GAMEOBJECT_H // filnamnet + "_H" är vanligt.

#include "renderer.h"
#include "vecmath.h"

typedef struct{
	GfxObject gfxObj;
	vec2f pos;
	vec2f moveDir;
	float speed;
	double angle, angleSpeed;
	float scale, scaleSpeed;
	void (*render)(struct tGameObject* gameobj);
	void (*update)(struct tGameObject* gameobj);
	
} GameObject;

void render(GameObject* this);

extern int nGameObjects;
extern GameObject* gameObjects[];



#endif // VECMATH_H -- här är VECMATH_H endast kommentar
       // för tydlighets skull
