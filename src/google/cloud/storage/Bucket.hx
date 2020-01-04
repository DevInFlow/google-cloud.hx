package google.cloud.storage;
import haxe.extern.EitherType;
import google.cloud.storage.global.*;
#if haxe4
import js.lib.Promise;
#else
import js.Promise;
#end

@:jsRequire("@google-cloud/storage","Bucket") extern class Bucket{
    public function new(storage:Storage,name:String,?options:Dynamic);
    public function addLifecycleRule(rule:Dynamic,?options:AddLifecycleRuleOptions,?callback:SetBucketMetadataCallback):Promise<SetBucketMetadataResponse>;
    public function getFiles(?query:Dynamic,?callback:Dynamic):Promise<Dynamic>;
    public function combine(source:EitherType<Array<String>,Array<File>>,destionation:EitherType<String,File>,?options:CombineOptions,?callback:CombineCallback):Promise<CombineResponse>;
    
}