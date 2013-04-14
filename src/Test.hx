package ;

#if neko
import neko.Web;
import neko.Lib;
#else
import php.Web;
import php.Lib;
#end

class Test {

	static function main() {
		#if (neko && cache)
		Web.cacheModule(Test.run);
		#else
		Test.run();
		#end
	}

	static function run() {
		Web.setHeader('Content-Type', 'application/json');
		Lib.print(haxe.Json.stringify({
			foo: "bar",
			ar: [1,2,3,4],
			one: {
				two: {
					three: "foobar"
				}
			}
		}));
	}

}