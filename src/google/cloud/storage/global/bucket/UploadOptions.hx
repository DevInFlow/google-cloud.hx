package google.cloud.storage.global.bucket;

import google.cloud.storage.File;
import haxe.extern.EitherType;

@:enum abstract UploadOptionsValidation(String) to String {
	var MD5 = "md5";
	var CRC32C = "crc32c";
	var FALSE = "false";
}

typedef UploadOptions = {
	?destination:EitherType<String, File>,
	?encryptionKey:String,
	?gzip:Bool,
	?kmsKeyName:String,
	?metadata:Dynamic,
	?offset:String,
	?predefinedAcl:String,
	/**private and public cant implemented**/
	?resumable:Bool,
	?uri:String,
	?userProject:String,
	?validation:UploadOptionsValidation
}
