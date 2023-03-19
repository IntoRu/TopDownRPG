// поворачиваем оружие корректно в сторону курсора
var _depth = (global.aimDir > 0 and global.aimDir < 180)

depth = oPlayer.depth + _depth

if global.aimDir > 90 and global.aimDir < 270	image_yscale = -1
else image_yscale = 1

// и крепим к игроку на нужном расстоянии
x = oPlayer.x + lengthdir_x(global.distOfPlayer[global.item],global.aimDir)
y = oPlayer.y + lengthdir_y(global.distOfPlayer[global.item],global.aimDir)