draw_self()

if is_struct(global.invent[cell]){
	draw_sprite(global.invent[cell].sprite,-1,x,y)
	draw_text_color(x+16,y+16,global.invent[cell].num,c_red,c_red,c_red,c_red,1)
}

//if is_struct(global.invent[cell]){
//	draw_text(200,20,xxx)
//}