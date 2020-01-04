package google.cloud.storage.global;

@:enum abstract SetHmacKeyMetadataState(String) to String {
	var ACTIVE = "ACTIVE";
	var INACTIVE = "INACTIVE";
}

typedef SetHmacKeyMetadata = {
	state:SetHmacKeyMetadataState,
	?etag:String
}
