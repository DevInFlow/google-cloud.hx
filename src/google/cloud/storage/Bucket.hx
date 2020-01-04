package google.cloud.storage;

@:jsRequire("@google-cloud/storage","Budket") extern class Bucket{
    public function new(storage:Dynamic,name:String,?options:Dynamic);
    public function getFiles(?query:Dynamic,?callback:Dynamic):Promise<Dynamic>;
    
}