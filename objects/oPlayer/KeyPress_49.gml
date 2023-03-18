if instance_exists(weapon[item]){
	instance_destroy(weapon[item])
}

item = WEAPON.BOW

instance_create_layer(x,y,"Instances",weapon[item])
