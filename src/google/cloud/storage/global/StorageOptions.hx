package google.cloud.storage.global;

typedef StorageOptions = {
    ?projectId:String,
    ?keyFilename:String,
    ?email:String,
    ?credentials:Dynamic,
    ?autoRetry:Bool,
    ?maxRetries:Int,
    ?promise:Class<Dynamic>,

}