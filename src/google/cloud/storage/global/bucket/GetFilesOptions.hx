package google.cloud.storage.global.bucket;

typedef GetFilesOptions = {
	?autoPaginate:Bool,
	?delimiter:String,
	?directory:String,
	?prefix:String,
	?maxApiCalls:Int,
	?maxResults:Int,
	?pageToken:String,
	?userProject:String,
	?versions:Bool
}
