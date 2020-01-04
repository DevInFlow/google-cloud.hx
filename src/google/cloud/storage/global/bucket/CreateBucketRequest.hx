package google.cloud.storage.global.bucket;

typedef CreateBucketRequest = {
	?archive:Bool,
	?coldline:Bool,
	?dra:Bool,
	?multiRegional:Bool,
	?nearline:Bool,
	?regional:Bool,
	?requesterPays:Bool,
	?standard:Bool,
	?userProject:String
}
