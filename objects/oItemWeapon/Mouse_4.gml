
for (i = 0; i < global.arraySize; i++){
	if !is_struct(global.invent[i]){
		global.invent[i] = new AddWeaponInv(nameItem,num,maxNum,sprite,item,obj)
		instance_destroy()
		exit
	}
	else{
		if global.invent[i].nameItem = nameItem and global.invent[i].num < global.invent[i].maxNum{
			global.invent[i].num++
			instance_destroy()
			exit
		}
	}
}