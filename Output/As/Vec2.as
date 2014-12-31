// Generated automatically with "cito". Do not edit.
package CitoGlMatrix
{
	import flash.utils.ByteArray;

	public class Vec2
	{

		/**
		 * **
		 */
		public static function add(output : Array, a : Array, b : Array) : Array
		{
			output[0] = a[0] + b[0];
			output[1] = a[1] + b[1];
			return output;
		}

		/**
		 * **
		 */
		public static function cloneIt(a : Array) : Array
		{
			var output : Array = new Array(2);
			output[0] = a[0];
			output[1] = a[1];
			return output;
		}

		/**
		 * **
		 */
		public static function copy(output : Array, a : Array) : Array
		{
			output[0] = a[0];
			output[1] = a[1];
			return output;
		}

		/**
		 * **
		 */
		public static function create() : Array
		{
			var output : Array = new Array(2);
			output[0] = 0;
			output[1] = 0;
			return output;
		}

		/**
		 * **
		 */
		public static function cross(output : Array, a : Array, b : Array) : Array
		{
			var z : Number = a[0] * b[1] - a[1] * b[0];
			output[0] = output[1] = 0;
			output[2] = z;
			return output;
		}

		/**
		 * **
		 */
		public static function dist(a : Array, b : Array) : Number
		{
			return Vec2.distance(a, b);
		}

		/**
		 * **
		 */
		public static function distance(a : Array, b : Array) : Number
		{
			var x : Number = b[0] - a[0];
			var y : Number = b[1] - a[1];
			return Platform.sqrt(x * x + y * y);
		}

		/**
		 * **
		 */
		public static function div(output : Array, a : Array, b : Array) : Array
		{
			return Vec2.divide(output, a, b);
		}

		/**
		 * **
		 */
		public static function divide(output : Array, a : Array, b : Array) : Array
		{
			output[0] = a[0] / (b[0]);
			output[1] = a[1] / (b[1]);
			return output;
		}

		/**
		 * **
		 */
		public static function dot(a : Array, b : Array) : Number
		{
			return a[0] * b[0] + a[1] * b[1];
		}

		/**
		 * **
		 */
		public static function fromValues(x : Number, y : Number) : Array
		{
			var output : Array = new Array(2);
			output[0] = x;
			output[1] = y;
			return output;
		}

		/**
		 * **
		 */
		public static function len(a : Array) : Number
		{
			return Vec2.length_(a);
		}

		/**
		 * **
		 */
		public static function length_(a : Array) : Number
		{
			var x : Number = a[0];
			var y : Number = a[1];
			return Platform.sqrt(x * x + y * y);
		}

		/**
		 * **
		 */
		public static function lerp(output : Array, a : Array, b : Array, t : Number) : Array
		{
			var ax : Number = a[0];
			var ay : Number = a[1];
			output[0] = ax + t * (b[0] - ax);
			output[1] = ay + t * (b[1] - ay);
			return output;
		}

		/**
		 * **
		 */
		public static function max(output : Array, a : Array, b : Array) : Array
		{
			output[0] = GlMatrixMath.max(a[0], b[0]);
			output[1] = GlMatrixMath.max(a[1], b[1]);
			return output;
		}

		/**
		 * **
		 */
		public static function min(output : Array, a : Array, b : Array) : Array
		{
			output[0] = GlMatrixMath.min(a[0], b[0]);
			output[1] = GlMatrixMath.min(a[1], b[1]);
			return output;
		}

		/**
		 * **
		 */
		public static function mul(output : Array, a : Array, b : Array) : Array
		{
			return Vec2.multiply(output, a, b);
		}

		/**
		 * **
		 */
		public static function multiply(output : Array, a : Array, b : Array) : Array
		{
			output[0] = a[0] * b[0];
			output[1] = a[1] * b[1];
			return output;
		}

		/**
		 * **
		 */
		public static function negate(output : Array, a : Array) : Array
		{
			output[0] = -a[0];
			output[1] = -a[1];
			return output;
		}

		/**
		 * **
		 */
		public static function normalize(output : Array, a : Array) : Array
		{
			var x : Number = a[0];
			var y : Number = a[1];
			var len : Number = x * x + y * y;
			if (len > 0) {
				len = 1 / (Platform.sqrt(len));
				output[0] = a[0] * len;
				output[1] = a[1] * len;
			}
			return output;
		}

		/**
		 * **
		 */
		public static function scale(output : Array, a : Array, b : Number) : Array
		{
			output[0] = a[0] * b;
			output[1] = a[1] * b;
			return output;
		}

		/**
		 * **
		 */
		public static function scaleAndAdd(output : Array, a : Array, b : Array, scale : Number) : Array
		{
			output[0] = a[0] + b[0] * scale;
			output[1] = a[1] + b[1] * scale;
			return output;
		}

		/**
		 * **
		 */
		public static function set(output : Array, x : Number, y : Number) : Array
		{
			output[0] = x;
			output[1] = y;
			return output;
		}

		/**
		 * **
		 */
		public static function sqrDist(a : Array, b : Array) : Number
		{
			return Vec2.squaredDistance(a, b);
		}

		/**
		 * **
		 */
		public static function sqrLen(a : Array) : Number
		{
			return Vec2.squaredLength(a);
		}

		/**
		 * **
		 */
		public static function squaredDistance(a : Array, b : Array) : Number
		{
			var x : Number = b[0] - a[0];
			var y : Number = b[1] - a[1];
			return x * x + y * y;
		}

		/**
		 * **
		 */
		public static function squaredLength(a : Array) : Number
		{
			var x : Number = a[0];
			var y : Number = a[1];
			return x * x + y * y;
		}

		/**
		 * **
		 */
		public static function sub(output : Array, a : Array, b : Array) : Array
		{
			return Vec2.subtract(output, a, b);
		}

		/**
		 * **
		 */
		public static function subtract(output : Array, a : Array, b : Array) : Array
		{
			output[0] = a[0] - b[0];
			output[1] = a[1] - b[1];
			return output;
		}

		/**
		 * **
		 */
		public static function transformMat2(output : Array, a : Array, m : Array) : Array
		{
			var x : Number = a[0];
			var y : Number = a[1];
			output[0] = m[0] * x + m[2] * y;
			output[1] = m[1] * x + m[3] * y;
			return output;
		}

		/**
		 * **
		 */
		public static function transformMat2d(output : Array, a : Array, m : Array) : Array
		{
			var x : Number = a[0];
			var y : Number = a[1];
			output[0] = m[0] * x + m[2] * y + m[4];
			output[1] = m[1] * x + m[3] * y + m[5];
			return output;
		}

		/**
		 * **
		 */
		public static function transformMat3(output : Array, a : Array, m : Array) : Array
		{
			var x : Number = a[0];
			var y : Number = a[1];
			output[0] = m[0] * x + m[3] * y + m[6];
			output[1] = m[1] * x + m[4] * y + m[7];
			return output;
		}

		/**
		 * **
		 */
		public static function transformMat4(output : Array, a : Array, m : Array) : Array
		{
			var x : Number = a[0];
			var y : Number = a[1];
			output[0] = m[0] * x + m[4] * y + m[12];
			output[1] = m[1] * x + m[5] * y + m[13];
			return output;
		}

		/**
		 * **
		 * **
		 */
		private final function f() : void
		{
		}
	}
}
