package google.cloud.storage.global.bucket;

import google.cloud.storage.Notification;
import js.lib.Error;

typedef GetNotificationsCallback = Null<Error>->Array<Notification>->Dynamic->Void;
