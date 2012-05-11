﻿import skyui.components.list.BasicList;
import skyui.components.list.IEntryClipBuilder;


class skyui.components.list.BasicListEntry extends MovieClip
{
  /* PROPERTIES */
	
	public var itemIndex: Number;
	
	
  /* PUBLIC FUNCTIONS */
	
	// @override MovieClip
	public function onRollOver(): Void
	{
		var list = _parent;
			
		if (itemIndex != undefined && enabled)
			list.onItemRollOver(itemIndex);
	}
		
	// @override MovieClip
	public function onRollOut(): Void
	{
		var list = this._parent;
		
		if (itemIndex != undefined && enabled)
			list.onItemRollOut(itemIndex);
	}
		
	// @override MovieClip
	public function onPress(a_mouseIndex: Number, a_keyboardOrMouse: Number): Void
	{
		var list = this._parent;
			
		if (itemIndex != undefined && enabled)
			list.onItemPress(itemIndex, a_keyboardOrMouse);
	}
		
	// @override MovieClip
	public function onPressAux(a_mouseIndex: Number, a_keyboardOrMouse: Number, a_buttonIndex: Number): Void
	{
		var list = this._parent;
			
		if (itemIndex != undefined && enabled)
			list.onItemPressAux(itemIndex, a_keyboardOrMouse, a_buttonIndex);
	}
	
	public function initialize(a_index: Number, a_list: BasicList): Void
	{
		// Do nothing.
	}
}