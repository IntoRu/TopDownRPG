

//-----------------------------
var _mousePress = mouse_check_button(mb_left)

if _mousePress{
	if oPlayer.aim_dir > 90 and oPlayer.aim_dir < 270 image_angle += spdAttack
	else image_angle -= spdAttack
}
else image_angle = oPlayer.aim_dir

