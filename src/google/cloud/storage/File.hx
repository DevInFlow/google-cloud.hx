package google.cloud.storage;

import js.node.Buffer;
#if haxe4
import js.lib.Promise;
#else
import js.Promise;
#end
import haxe.extern.EitherType;
import google.cloud.storage.global.*;
import google.cloud.storage.global.file.*;
import js.node.stream.Readable;
import js.node.stream.Writable;

@:jsRequire("@google-cloud/storage", "File") extern class File {
	public function new(bucket:Bucket, name:String, ?options:FileOptions);
	public function copy(destination:EitherType<EitherType<String, Bucket>, File>, ?options:CopyOptions, ?callback:CopyCallback):Promise<CopyResponse>;
	public function createReadStream(?options:CreateReadStreamOptions):IReadable;
	public function createResumableUpload(?options:CreateResumableUploadOptions,
		?callback:CreateResumableUploadCallback):Promise<CreateResumableUploadResponse>;
	public function createWriteStream(?options:CreateWriteStreamOptions):IWritable;

	public function delete(?options:{userProject:String}, ?callback:DeleteFileCallback):Promise<DeleteFileResponse>;
	public function deleteResumableCache():Void;
	public function download(?options:{destination:String, userProject:String}, ?callback:DownloadCallback):Promise<DownloadResponse>;
	public function exists(?options:{userProject:String}, ?callback:FileExistsCallback):Promise<FileExistsResponse>;
	public function get(?options:{userProject:String}, ?callback:GetFileCallback):Promise<GetFileResponse>;
	public function getExpirationDate(?callback:GetExpirationDateCallback):Promise<GetExpirationDateResponse>;
	public function getMetadata(?options:{userProject:String}, ?callback:GetExpirationDateCallback):Promise<GetFileMetadataResponse>;
	public function getSignedPolicy(config:{
		?equals:EitherType<Array<Dynamic>, Array<Array<Dynamic>>>,
		?expires:Dynamic,
		?startWith:EitherType<Array<Dynamic>, Array<Array<Dynamic>>>,
		?acl:String,
		?successRedirect:String,
		?successStatus:String,
		?contentLengthRange:Dynamic
	}, ?callback:GetSignedPolicyCallback):Promise<GetSignedPolicyResponse>;

	public function getSignedUrl(config:{
		action:String,
		?version:String,
		?cname:String,
		?contentMd5:String,
		?contentType:String,
		express:Dynamic,
		?extensionHeader:Dynamic,
		?promptSaveAs:String,
		?responsalDisposition:String,
		?responseType:String
	}, ?callback:GetSignedUrlCallback):Promise<GetSignedUrlResponse>;

	public function isPublic(?callback:IsPublicCallback):Promise<IsPublicResponse>;
	public function makePrivate(?options:MakeFilePrivateOptions, ?callback:MakeFilePrivateCallback):Promise<MakeFilePrivateResponse>;
	public function makePublic(?callback:MakeFilePublicCallback):Promise<MakeFilePublicResponse>;
	public function move(destination:EitherType<String, EitherType<Bucket, File>>, ?options:MoveCallback):Promise<MoveResponse>;
	public function rotateEncryptionKey(?options:EitherType<RotateEncryptionKeyOptions, EitherType<String, Buffer>>,
		?callback:RotateEncryptionKeyCallback):Promise<File>;
	public function save(data:Dynamic, ?options:SaveOptions, ?callback:SaveCallback):Promise<Void>;
	public function setEncryptionKey(?encryptionKey:EitherType<String, Buffer>):Promise<File>;
	public function setMetadata(?metadata:Dynamic, ?options:SetFileMetadataOptions, ?callback:SetFileMetadataCallback):Promise<SetFileMetadataResponse>;
	public function setStorageClass(storageClass:String, ?options:SetStorageClassOptions, ?callback:SetStorageClassCallback):Promise<SetStorageClassResponse>;
	public function setUserProject(userProject:String):Void;
}
