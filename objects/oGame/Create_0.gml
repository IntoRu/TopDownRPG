// оружие

// список оружия
enum WEAPON {
	NOONE,
	SWORD,
	BOW,
	HAMMER
}

// характеристики оружия
global.aimDir = 0 // направление оружия

// расстояние крепления оружия к игроку
global.distOfPlayer[WEAPON.SWORD] = 11
global.distOfPlayer[WEAPON.BOW] = 15
global.distOfPlayer[WEAPON.HAMMER] = 9


global.spdRotateWeapon[WEAPON.SWORD] = 10 // скорость вращения меча
global.spdRotateWeapon[WEAPON.HAMMER] = 9 // скорость вращения меча

global.spdAttack[WEAPON.SWORD] = 40 // скорость аттаки
global.spdAttack[WEAPON.HAMMER] = 50 // скорость аттаки

global.damage[WEAPON.SWORD] = 0.1
global.damage[WEAPON.HAMMER] = 0.5

global.weapon[WEAPON.SWORD] = oSword
global.weapon[WEAPON.BOW] = oBow
global.weapon[WEAPON.HAMMER] = oHammer


global.item = WEAPON.NOONE // по умолчанию у нас нет оружия
if global.item != WEAPON.NOONE instance_create_layer(x,y,"Instances",global.weapon[global.item])