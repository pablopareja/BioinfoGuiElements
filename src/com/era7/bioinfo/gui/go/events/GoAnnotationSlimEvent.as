package com.era7.bioinfo.gui.go.events
{
	
	import com.era7.bioinfo.xml.go.GoTerm;
	
	import flash.events.Event;
	
	public class GoAnnotationSlimEvent extends Event
	{
		private static const SUFIX:String = "goSlimAnEvt";
		
		
		public static const GET_RESULTS:String = "getResults" + SUFIX;
				
		/*
		* CONSTRUCTOR
		*/
		public function GoAnnotationSlimEvent(type:String,bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		
		/*
		*  Clone function
		*/
		public override function clone():Event{						
			return new GoAnnotationSlimEvent(type,bubbles,cancelable);
		}
		
	}
}