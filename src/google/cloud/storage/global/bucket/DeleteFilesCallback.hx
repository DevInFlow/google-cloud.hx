package google.cloud.storage.global.bucket;

import js.lib.Error;
import haxe.extern.EitherType;

typedef DeleteFilesCallback = EitherType<Null<Error>, Array<Error>>->Dynamic->Void;
