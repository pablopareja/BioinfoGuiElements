package com.era7.bioinfo.gui.go.charts
{
	import flash.display.GradientType;
	import flash.display.Graphics;
	import flash.geom.Matrix;
	
	import mx.charts.chartClasses.DataTip;
	
	public class GoTermChartDataTip extends DataTip
	{
		public function GoTermChartDataTip() {
			super();            
		}       
		
		override protected function updateDisplayList(w:Number, h:Number):void {
			super.updateDisplayList(w, h);
			
			this.setStyle("textAlign","center");
			var g:Graphics = graphics; 
			g.clear();  
			var m:Matrix = new Matrix();
			m.createGradientBox(w+100,h,0,0,0);
			g.beginGradientFill(GradientType.LINEAR,[0xF29A3B,0xFFFFFF],
				[.1,1],[0,255],m,null,null,0);
			g.drawRect(-25,0,w+25,h);
			g.endFill(); 
		}
	}
}