
global.arraySize = 6 // количество ячеек инвенторя

for(i = 0; i < global.arraySize; i++){
	//заполняем инвентарь
	global.invent[i] = 1
	// создаём ячейки интвентаря и присваиваем номер ячейки (cell)
	instance_create_depth(32 * i,0,0,oCell).cell = i
}



