package com.era7.bioinfo.gui.go.events
{
	
	import com.era7.bioinfo.xml.go.GoTerm;
	
	import flash.events.Event;
	
	public class GoAnnotationChartEvent extends Event
	{
		private static const SUFIX:String = "goAnnotChartEvt";		
		
		public static const UPLOAD_FILE:String = "uploadFile" + SUFIX;
		
		private var sampleNumber:Number = 1;
		
		/*
		* CONSTRUCTOR
		*/
		public function GoAnnotationChartEvent(type:String,sampleNum:Number,bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			sampleNumber = sampleNum;
		}
		
		
		/*
		*  Clone function
		*/
		public override function clone():Event{						
			return new GoAnnotationChartEvent(type,sampleNumber,bubbles,cancelable);
		}
		
		public function getSampleNumber():Number{
			return sampleNumber;
		}
		
	}
}