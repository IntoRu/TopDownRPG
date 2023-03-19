// оружие

// список оружия
enum WEAPON {
	NOONE,
	SWORD,
	BOW,
	HAMMER,
	MACE
}

// характеристики оружия
global.aimDir = 0 // направление оружия

// расстояние крепления оружия к игроку
global.distOfPlayer[WEAPON.SWORD] = 11
global.distOfPlayer[WEAPON.BOW] = 15
global.distOfPlayer[WEAPON.HAMMER] = 9
global.distOfPlayer[WEAPON.MACE] = 8


global.spdRotateWeapon[WEAPON.SWORD] = 10 // скорость вращения меча
global.spdRotateWeapon[WEAPON.HAMMER] = 9 // скорость вращения меча
global.spdRotateWeapon[WEAPON.MACE] = 25 // скорость вращения меча

global.spdAttack[WEAPON.SWORD] = 40 // скорость аттаки
global.spdAttack[WEAPON.HAMMER] = 50 // скорость аттаки
global.spdAttack[WEAPON.MACE] = 30 // скорость аттаки

global.damage[WEAPON.SWORD] = 0.1
global.damage[WEAPON.HAMMER] = 0.5
global.damage[WEAPON.MACE] = 0.2

global.weapon[WEAPON.SWORD] = oSword
global.weapon[WEAPON.BOW] = oBow
global.weapon[WEAPON.HAMMER] = oHammer
global.weapon[WEAPON.MACE] = oMace



global.item = WEAPON.NOONE // по умолчанию у нас нет оружия
if global.item != WEAPON.NOONE  instance_create_layer(x,y,"Instances",global.weapon[global.item])