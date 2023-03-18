walk_speed = 2
facing = 1

aim_dir = 0
bow_dis = 11 // расстояния от игрока до оружия

// создаём оружик
my_bow = instance_create_layer(x,y,"Instances",oBow)

// меняем курсор
cursor_sprite = sCursor
window_set_cursor(cr_none)