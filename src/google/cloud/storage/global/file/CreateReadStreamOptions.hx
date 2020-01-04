package google.cloud.storage.global.file;

import haxe.extern.EitherType;

typedef CreateReadStreamOptions = {
	?userProject:String,
	?validation:EitherType<String, Bool>,
	?start:Int,
	?end:Int,
	?decompress:Bool
}
