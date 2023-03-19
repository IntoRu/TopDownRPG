// сбрасываем переменные
function reset_variables(){
	left = 0
	right = 0
	up = 0
	down = 0
	vmove = 0
	hmove = 0
}

// фиксируем входные данные
function get_input(){
	if keyboard_check(vk_left) left = 1
	if keyboard_check(vk_right) right = 1
	if keyboard_check(vk_up) up = 1
	if keyboard_check(vk_down) down = 1
}

// расчёт движения игррока
function calc_movement(){
	hmove = right - left
	vmove = down - up
	
	var _facing = global.aimDir < 90 or global.aimDir > 270
	if _facing == 0 _facing = -1
	facing = _facing
	
	if hmove != 0 or vmove != 0{
		var _dir = point_direction(0,0,hmove,vmove)
		hmove = lengthdir_x(walk_speed,_dir)
		vmove = lengthdir_y(walk_speed,_dir)
		
		x += hmove
		y += vmove
	}
	
	// направление
	global.aimDir = point_direction(x,y,mouse_x,mouse_y)
	
}

// столкновение
function collision(){
	var _tx = x
	var _ty = y
	x = xprevious
	y = yprevious
	
	var _disx = (_tx - x)
	var _disy = (_ty - y)
	
	repeat(_disx){
		if !place_meeting(x + sign(_tx - x),y,oWall)	x += sign(_tx - x)
	}													
	repeat(_disy){										
		if !place_meeting(x,y + sign(_ty - y),oWall)	y += sign(_ty - y)
	}
}

// анимация
function anim(){
	if hmove != 0 or vmove != 0 {
		sprite_index = sPlayerWalk
	}
	else{
		sprite_index = sPlayerIdle
	}
}
