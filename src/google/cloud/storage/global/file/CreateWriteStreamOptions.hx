package google.cloud.storage.global.file;

import haxe.extern.EitherType;

typedef CreateWriteStreamOptions = {
	?configPath:String,
	?contentType:String,
	?gzip:EitherType<String, Bool>,
	?metadata:Dynamic,
	?offset:Int,
	?predefinedAcl:String,
	// ?private and ?public cant't be used
	?resumable:Bool,
	?uri:String,
	?userProject:String,
	?validation:EitherType<String, Bool>
}
