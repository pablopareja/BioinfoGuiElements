package com.era7.bioinfo.gui.go.util
{	
	
	import com.era7.bioinfo.gui.go.events.GoTermEvent;
	import com.era7.bioinfo.xml.go.GoTerm;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	import mx.controls.Alert;
	
	public class GoRetriever extends EventDispatcher
	{
		
		public static const GO_TERM_SERVICE_URL:String = "http://www.ebi.ac.uk/QuickGO/GTerm?format=oboxml&id=";
		
		public function GoRetriever(){
			super();
		}
		
		public function getGoTerm(id:String):void{			
			var loader:URLLoader = new URLLoader(new URLRequest(GO_TERM_SERVICE_URL+id));
			loader.addEventListener(Event.COMPLETE,onLoadComplete);			
		}
		
		private function onLoadComplete(event:Event):void {
			
			var loader:URLLoader = URLLoader(event.target);
			var tempGo:GoTerm = new GoTerm();
			var xml:XML = new XML(loader.data);
			/* Alert.show(xml.toXMLString()); */
			tempGo.id = xml.term.id[0].toString();
			tempGo.name = xml.term.name[0].toString();
			tempGo.definition = xml.term.def.defstr[0].toString();
			/* Alert.show(tempGo.toString()); */
			
			dispatchEvent(new GoTermEvent(GoTermEvent.GO_TERM_LOADED,tempGo,true));			
			
		} 

	}
}