package com.fullofcaffeine.berkeliumnmetest;


import nme.Assets;
import nme.display.Sprite;
import nme.display.StageAlign;
import nme.display.StageScaleMode;

import berkelium.Window;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end



class BerkeliumNMETest extends Sprite {
	
	var bdata:nme.display.BitmapData;
	var w:Window;
	public function new () {
		super ();
		trace("creating window");
		w = new Window(200,200);
		trace("window created");
		w.navigate("http://www.google.com/");
		trace("navigating");
		this.addEventListener(nme.events.Event.ENTER_FRAME, function(_) Window.update());
		w.onPaint = paint;
	}
	
	public function paint(buf:haxe.io.BytesData, left:Int, top:Int, right:Int, bottom:Int):Void
	{
		trace(buf.length);
		trace(buf[0]);
		trace("onPaint " + [left, top, right, bottom]);
		
		var bdata2 = new nme.display.BitmapData(right-left, bottom-top);
		trace(2);
		var bytes = nme.utils.ByteArray.fromBytes(haxe.io.Bytes.ofData(buf));
		trace(2.2);
		bdata2.setPixels( new nme.geom.Rectangle(0,0,right-left,bottom-top), bytes );
		trace(3);
		if (bdata == null)
		{
			this.bdata = bdata2;
			this.addChild(new nme.display.Bitmap(bdata));
		} else {
			this.bdata.copyPixels( bdata2, new nme.geom.Rectangle(0,0,right-left, bottom-top), new nme.geom.Point(left,top) );
		}
		
		trace(bdata.getPixel(0,0));
	}	
}
