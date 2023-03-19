if instance_exists(global.weapon[global.item]){
	instance_destroy(global.weapon[global.item])
}

global.item = WEAPON.NOONE