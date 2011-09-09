package com.era7.bioinfo.gui.events
{
	import flash.events.Event;
	
	public class UrlEvent extends Event
	{
		private static const SUFIX:String = "urlEvt";
		
		
		public static const URL_SELECTED:String = "urlSelected" + SUFIX;
		
		
		protected var url:String = null;
		
		/*
		* CONSTRUCTOR
		*/
		public function UrlEvent(type:String,uRL:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			url = uRL;
		}
		
		
		/*
		*  Clone function
		*/
		public override function clone():Event{						
			return new UrlEvent(type,url,bubbles,cancelable);
		}
		
		/*
		* 	GET URL
		*/
		public function getUrl():String{
			return url;
		}
		
	}
}