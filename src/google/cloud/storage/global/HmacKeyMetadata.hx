package google.cloud.storage.global;
@:enum abstract HmacKeyState(String) to String{
    var ACTIVE="ACTIVE";
    var INACTIVE="INACTIVE";
    var DELETED="DELETED";
}
typedef HmacKeyMetadata={
    accessId:String,
    etag:String,
    id:String,
    projectId:String,
    serviceAccountEmail:String,
    state:HmacKeyState,
    timeCreated:String,
    ?updated:String
}
