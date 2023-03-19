

//-----------------------------
var _mousePress = mouse_check_button(mb_left)

if _mousePress and cooldown > 0{
	if oPlayer.aim_dir > 90 and oPlayer.aim_dir < 270 image_angle += spdRotateSword
	else image_angle -= spdRotateSword
	cooldown --
	alarm[0] = spdAttack
	isAttack = true
}
else {
	image_angle = oPlayer.aim_dir
	isAttack = false
}



