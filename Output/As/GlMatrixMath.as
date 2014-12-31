// Generated automatically with "cito". Do not edit.
package CitoGlMatrix
{
	import flash.utils.ByteArray;

	public class GlMatrixMath
	{

		public static function abs(len : Number) : Number
		{
			if (len < 0) {
				return -len;
			}
			else {
				return len;
			}
		}

		public static function gLMAT_EPSILON() : Number
		{
			var one : Number = 1;
			return one / (1000000);
		}

		public static function pI() : Number
		{
			var a : Number = 3141592;
			return a / (1000000);
		}

		public static function max(a : Number, b : Number) : Number
		{
			if (a > b) {
				return a;
			}
			else {
				return b;
			}
		}

		public static function min(a : Number, b : Number) : Number
		{
			if (a < b) {
				return a;
			}
			else {
				return b;
			}
		}
	}
}
