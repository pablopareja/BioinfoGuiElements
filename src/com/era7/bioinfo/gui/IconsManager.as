package com.era7.bioinfo.gui
{
	public class IconsManager
	{
		//---------------------------SEARCH------------------------------	
		[Bindable]
		[Embed(source="../../../../../assets/icons/searchSmall.png")]
		public static var searchIcon:Class;
		
		[Bindable]
		[Embed(source="../../../../../assets/icons/nextPage.png")]
		public static var nextResultIcon:Class;
		
		[Bindable]
		[Embed(source="../../../../../assets/icons/previousPage.png")]
		public static var previousResultIcon:Class;	
		
		//------------------------------------------------------------
		
		[Bindable]
		[Embed(source="../../../../../assets/icons/logoOhnoseq.jpg")]
		public static var ohnoseqLogo:Class;
		
		[Bindable]
		[Embed(source="../../../../../assets/icons/logoBio4jTwitter.jpg")]
		public static var bio4jLogo:Class;
		
		
		//----------------------LOAD FILE---------------------
		[Bindable]
		[Embed(source="../../../../../assets/icons/_LOADFILE.jpg")]
		public static var loadFileButton:Class;
		
		[Bindable]
		[Embed(source="../../../../../assets/icons/_LOADFILE_URL.jpg")]
		public static var loadFileFromUrlButton:Class;
		
		[Bindable]
		[Embed(source="../../../../../assets/loading.swf")]
		public static var loadingSWF:Class;

	}
}