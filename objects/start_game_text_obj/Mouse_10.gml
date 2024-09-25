/// @description Insert description here
// You can write your code in this editor

event_inherited()

var childItemId = itemId
if (parentId != noone) {
    with (parentId) {
        setHoveredIndex(childItemId);
    }
}
