import js.lib.Error;
import google.cloud.storage.Storage;

class Test {
	static function main() {
		var storage:Storage = new Storage({projectId:"devinflow",keyFilename:"devinflow-33d25f57b448.json"});
		storage.createBucket("test-bucket").then(function(response:Array<Dynamic>) {
			trace(response);
		}).catchError(function(error:Error){
			trace(error);
		});
		var bucket = storage.bucket("asd");
	}
}
