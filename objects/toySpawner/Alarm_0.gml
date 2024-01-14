/// @description Insert description here
// You can write your code in this editor
var toy = instance_create_depth(self.x, self.y, -10000, global.toys[irandom(4)])

ds_list_add(global.toysOnBelt, toy)

