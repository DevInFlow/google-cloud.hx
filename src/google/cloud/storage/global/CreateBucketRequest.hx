package google.cloud.storage.global;

typedef CreateBucketRequest={
    ?archive:Bool,
    ?coldline:Bool,
    ?dra:Bool,
    ?multiRegional:Bool,
    ?nearline:Bool,
    ?regional:Bool,
    ?requestPays:Bool,
    ?standard:Bool,
    ?userProject:String
}