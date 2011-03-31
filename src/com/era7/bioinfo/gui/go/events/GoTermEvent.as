package com.era7.bioinfo.gui.go.events
{
	
	import com.era7.bioinfo.xml.go.GoTerm;
	
	import flash.events.Event;

	public class GoTermEvent extends Event
	{
		private static const SUFIX:String = "goTeVnt";
		
		
		public static const GO_TERM_LOADED:String = "goTermLoaded" + SUFIX;
		
		
		protected var goTerm:GoTerm = null;
		
		/*
		 * CONSTRUCTOR
		 */
		public function GoTermEvent(type:String,term:GoTerm, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			goTerm = term;
		}
		
		
		/*
		*  Clone function
		*/
		public override function clone():Event{						
			return new GoTermEvent(type,goTerm,bubbles,cancelable);
		}
		
		/*
		 * 	GET GO TERM
		 */
		public function getGoTerm():GoTerm{
			return goTerm;
		}
		
	}
}