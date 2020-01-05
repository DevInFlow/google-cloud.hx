package google.cloud.storage.global.bucket;

import google.cloud.storage.File;
import js.lib.Error;

typedef GetFilesCallback = Null<Error>->Array<File>->Void;
