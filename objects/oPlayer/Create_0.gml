walk_speed = 2
facing = 1

aim_dir = 0
//bow_dis = 11 // расстояния от игрока до оружия

// создаём оружик
//my_bow = instance_create_layer(x,y,"Instances",oBow)

enum WEAPON {
	NOONE,
	SWORD,
	BOW
}

weapon[WEAPON.SWORD] = oSword
weapon[WEAPON.BOW] = oBow

item = WEAPON.NOONE

if item != WEAPON.NOONE instance_create_layer(x,y,"Instances",weapon[item])


// меняем курсор
cursor_sprite = sCursor
window_set_cursor(cr_none)