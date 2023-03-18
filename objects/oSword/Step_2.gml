// поворачиваем оружие корректно в сторону курсора
var _depth = (oPlayer.aim_dir > 0 and oPlayer.aim_dir < 180)

depth = oPlayer.depth + _depth

if oPlayer.aim_dir > 90 and oPlayer.aim_dir < 270	image_yscale = -1
else image_yscale = 1

// и крепим к игроку на нужном расстоянии
x = oPlayer.x + lengthdir_x(bow_dis,oPlayer.aim_dir)
y = oPlayer.y + lengthdir_y(bow_dis,oPlayer.aim_dir)