// поворачиваем оружие корректно в сторону курсора
var _depth = (aim_dir > 0 and aim_dir < 180)

my_bow.depth = depth + _depth

if aim_dir > 90 and aim_dir < 270	my_bow.image_yscale = -1
else my_bow.image_yscale = 1

// и крепим к игроку на нужном расстоянии
my_bow.x = x + lengthdir_x(bow_dis,aim_dir)
my_bow.y = y + lengthdir_y(bow_dis,aim_dir)