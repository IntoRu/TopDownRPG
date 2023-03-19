
function MeleeAttack(){
	var _mousePress = mouse_check_button(mb_left)

	if _mousePress and cooldown > 0{
		if global.aimDir > 90 and global.aimDir < 270 image_angle += global.spdRotateWeapon[global.item]
		else image_angle -= global.spdRotateWeapon[global.item]
		cooldown --
		alarm[0] = global.spdAttack[global.item]
		isAttack = true
	}
	else {
		image_angle = global.aimDir
		isAttack = false
	}
}