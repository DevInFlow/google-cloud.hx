package google.cloud.storage.global.bucket;

import google.cloud.storage.File;
import js.lib.Error;

typedef UploadCallback = Null<Error>->File->Dynamic->Void;
