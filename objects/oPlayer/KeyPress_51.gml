if instance_exists(global.weapon[global.item]){
	instance_destroy(global.weapon[global.item])
}

global.item = WEAPON.HAMMER

instance_create_layer(x,y,"Instances",global.weapon[global.item])