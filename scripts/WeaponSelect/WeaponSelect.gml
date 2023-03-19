
function WeaponSelect(){
	if (is_struct(global.invent[cell])){

		if instance_exists(global.weapon[global.item]){
			instance_destroy(oWeapon)
		}
	
		global.item = global.invent[cell].item

		instance_create_layer(oPlayer.x,oPlayer.y,"Instances",global.invent[cell].obj)
	
		xxx = global.invent[cell].nameItem
	}
}