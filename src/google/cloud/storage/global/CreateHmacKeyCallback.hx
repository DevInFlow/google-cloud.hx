package google.cloud.storage.global;

import google.cloud.storage.HmacKey;
import js.lib.Error;

typedef CreateHmacKeyCallback = Null<Error>->HmacKey->String->Dynamic->Void
