package com.era7.bioinfo.gui.events
{
	import com.era7.bioinfo.xml.mg7.ReadResult;
	
	import flash.events.Event;
	
	public class ReadResultsEvent extends Event
	{
		private static const SUFIX:String = "readResultEvt";
		
		
		public static const READ_RESULT_SELECTED:String = "readResultSelected" + SUFIX;
		
		protected var readResult:ReadResult;
		
		/*
		* CONSTRUCTOR
		*/
		public function ReadResultsEvent(type:String,
										   readResultt:ReadResult,
										   bubbles:Boolean=false, 
										   cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			readResult = readResultt;
		}
		
		/*
		*
		*  Clone function
		*/
		public override function clone():Event{						
			return new ReadResultsEvent(this.type,this.readResult,this.bubbles,cancelable);
		}
		
		/*
		* 	GET READ RESULT
		*/
		public function getReadResult():ReadResult{
			return readResult;
		}
	}
}