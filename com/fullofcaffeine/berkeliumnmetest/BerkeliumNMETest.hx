package com.fullofcaffeine.berkeliumnmetest;


import nme.Assets;
import nme.display.Sprite;
import nme.display.StageAlign;
import nme.display.StageScaleMode;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end



class BerkeliumNMETest extends Sprite {
	
	public function new () {
		super ();
		var _lib = Lib.load("hxberkelium", "berkelium_init", 0);
		trace(_lib);
		
	}
	
	
}