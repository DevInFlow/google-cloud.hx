package google.cloud.storage.global.bucket;

@:enum abstract PayloadFormat(String) to String {
	var JSON_API_V1 = "JSON_API_V1";
	var NONE = "NONE";
}

typedef CreateNotificationOptions = {
	?customAttributes:Dynamic,
	?eventTypes:Array<String>,
	?objectNamePrefix:String,
	?payloadFormat:PayloadFormat,
	?userProject:String
}
