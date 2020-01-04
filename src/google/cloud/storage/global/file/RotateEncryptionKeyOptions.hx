package google.cloud.storage.global.file;

import js.node.Buffer;
import haxe.extern.EitherType;

typedef RotateEncryptionKeyOptions={
    encriptionKey:EitherType<String,Buffer>,
    kmsKeyName:String

}