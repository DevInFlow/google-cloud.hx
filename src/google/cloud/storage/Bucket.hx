package google.cloud.storage;

import haxe.extern.EitherType;
import google.cloud.storage.global.bucket.*;
#if haxe4
import js.lib.Promise;
#else
import js.Promise;
#end

@:jsRequire("@google-cloud/storage", "Bucket") extern class Bucket {
	public function new(storage:Storage, name:String, ?options:Dynamic);
	public function addLifecycleRule(rule:Dynamic, ?options:AddLifecycleRuleOptions, ?callback:SetBucketMetadataCallback):Promise<SetBucketMetadataResponse>;
	public function combine(source:EitherType<Array<String>, Array<File>>, destionation:EitherType<String, File>, ?options:CombineOptions,
		?callback:CombineCallback):Promise<CombineResponse>;
	public function create(?metadata:CreateBucketRequest, ?callback:CreateBucketCallback):Promise<CreateBucketResponse>;
	public function createChannel(id:String, config:CreateChannelConfig, ?options:CreateChannelOptions,
		?callback:CreateChannelCallback):Promise<CreateChannelResponse>;
	public function createNotification(tpoic:EitherType<Dynamic /*Need to implement Topic instead of using Dynamic*/, String>,
		?options:CreateNotificationOptions, ?callback:CreateNotificationCallback):Promise<CreateNotificationResponse>;
	public function delete(?options:DeleteBucketOptions, ?callback:DeleteBucketCallback):Promise<DeleteBucketResponse>;
	public function deleteFiles(?query:DeleteFilesOptions, ?callback:DeleteFilesCallback):Promise<Void>;
	public function getFiles(?options:GetFilesOptions, ?callback:GetFilesCallback):Promise<GetFilesResponse>;
	public function getLabels(?options:{?userProject:String}, ?callback:GetLabelsCallback):Promise<GetLabelsResponse>;
	public function getMetadata(?options:GetBucketMetadataOptions, ?callback:GetBucketMetadataCallback):Promise<GetBucketMetadataResponse>;
	public function getNotifications(?options:GetNotificationsOptions, ?callback:GetNotificationsCallback):Promise<GetNotificationsResponse>;
	public function lock(metageneration:EitherType<Int, String>, ?callback:BucketLockCallback):Promise<BucketLockResponse>;
	public function makePrivate(?options:MakeBucketPrivateOptions, ?callback:MakeBucketPrivateCallback):Promise<MakeBucketPrivateResponse>;
	public function makePublic(?options:MakeBucketPublicOptions, ?callback:MakeBucketPublicCallback):Promise<MakeBucketPublicResponse>;
	public function notification(id:String):Notification;
	public function removeRetentionPeriod(?callback:SetBucketMetadataCallback):Promise<SetBucketMetadataResponse>;
	public function setLabels(labels:Map<String, String>, ?options:SetLabelsOptions, ?callback:SetLabelsCallback):Promise<SetLabelsResponse>;
	public function setMetadata(metadata:Map<String, Dynamic>, ?options:SetBucketMetadataOptions,
		?callback:SetBucketMetadataCallback):Promise<SetBucketMetadataResponse>;
	public function setRetentionPeriod(duration:Dynamic, ?callback:SetBucketMetadataCallback):Promise<SetBucketMetadataResponse>;
	public function setStorageClass(storageClass:String, ?options:SetBucketStorageClassOptions,
		?callback:SetBucketStorageClassCallback):Promise<SetBucketMetadataResponse>;
	public function setUserProject(userPRoject:String):Void;
	public function upload(pathString:String,?options:UploadOptions,?callback:UploadCallback):Promise<UploadResponse>;
}
