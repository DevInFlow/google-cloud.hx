package google.cloud.storage;

import google.cloud.storage.global.notification.*;
#if haxe4
import js.lib.Promise;
#else
import js.Promise;
#end

@:jsRequire("@google-cloud/storage", "Notification") extern class Notification {
	public function new(bucket:Bucket, id:String);
	public function delete(?options:{?userProject:String}, ?callback:DeleteNotificationCallback):Promise<DeleteNotificationResponse>;
	public function exists(?callback:NotificationExistsCallback):Promise<NotificationExistsResponse>;
	public function get(?options:{?autoCreate:Bool, ?userProject:String}, ?callback:GetNotificationCallback):Promise<GetNotificationResponse>;
	public function getMetadata(?options:{?userProject:String}, ?callback:GetNotificationMetadataCallback):Promise<GetNotificationMetadataResponse>;
}
