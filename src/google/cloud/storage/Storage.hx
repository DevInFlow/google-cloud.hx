package google.cloud.storage;

#if haxe4
import js.lib.Promise;
#else
import js.Promise;
#end
import google.cloud.storage.global.*;

@:enum abstract Acl(String) to String {
	var OWNER_ROLE = "OWNER";
	var READER_ROLE = "READER";
	var WRITER_ROLE = "WRITER";
}

@:jsRequire("@google-cloud/storage","Storage") extern class Storage {
	public function new(?options:StorageOptions);

	public function bucket(name:String, ?options:{?kmsKeyName:String, ?userProject:String}):Bucket;
	public function channel(id:String, resourceId:String):Channel;
	public function createBucket(name:String, ?metadata:CreateBucketRequest, ?callback:CreateBucketCallback):Promise<CreateBucketResponse>;
	public function createHmacKey(serviceAccountEmail:String, ?callback:CreateHmacKeyCallback):Promise<CreateHmacKeyResponse>;
	public function getBuckets(?query:GetBucketsRequest, ?callback:GetBucketsCallback):Promise<GetBucketsResponse>;
	public function getServiceAccount(?options:{?userProject:String}, ?callback:GetServiceAccountCallback):Promise<GetServiceAccountResponse>;
	public function hmacKey(accessId:String, options:HmacKeyOptions):HmacKey;
}
