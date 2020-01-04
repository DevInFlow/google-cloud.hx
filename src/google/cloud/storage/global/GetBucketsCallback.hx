package google.cloud.storage.global;

import google.cloud.storage.Bucket;
import js.lib.Error;

typedef GetBucketsCallback = Null<Error>->Array<Bucket>->Void;
