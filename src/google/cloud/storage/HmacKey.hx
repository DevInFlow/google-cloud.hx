package google.cloud.storage;

import google.cloud.storage.global.*;
#if haxe4
import js.lib.Promise;
#else
import js.Promise;
#end
import google.cloud.storage.global.DeleteHmacKeyCallback;
import google.cloud.storage.global.HmacKeyOptions;

@:jsRequire("@google-cloud/storage", "HmacKey") extern class HmacKey {
	public function new(storage:Storage, accessId:String, options:HmacKeyOptions);
	public function delete(?options:DeleteHmacKeyOptions, ?callback:DeleteHmacKeyCallback):Promise<DeleteHmacKeyResponse>;
	public function get(?options:GetHmacKeyOptions, ?callback:GetHmacKeyCallback):Promise<GetHmacKeyResponse>;
	public function getMetadata(?options:GetHmacKeyMetadataOptions, ?callback:HmacKeyMetadataCallback):Promise<HmacKeyMetadataResponse>;
	public function setMetadata(metadata:SetHmacKeyMetadata, ?options:SetHmacKeyMetadataOptions,
		?callback:HmacKeyMetadataCallback):Promise<HmacKeyMetadataResponse>;
}
