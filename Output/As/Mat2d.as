// Generated automatically with "cito". Do not edit.
package CitoGlMatrix
{
	import flash.utils.ByteArray;

	public class Mat2d
	{

		/**
		 * Creates a new mat2d initialized with values from an existing matrix
		 * Returns a new 2x3 matrix
		 * @param a matrix to clone
		 */
		public static function cloneIt(a : Array) : Array
		{
			var output : Array = new Array(6);
			output[0] = a[0];
			output[1] = a[1];
			output[2] = a[2];
			output[3] = a[3];
			output[4] = a[4];
			output[5] = a[5];
			return output;
		}

		/**
		 * Copy the values from one mat2d to another
		 * Returns output
		 * @param output the receiving matrix
		 * @param a the source matrix
		 */
		public static function copy(output : Array, a : Array) : Array
		{
			output[0] = a[0];
			output[1] = a[1];
			output[2] = a[2];
			output[3] = a[3];
			output[4] = a[4];
			output[5] = a[5];
			return output;
		}

		/**
		 * Creates a new identity mat2d
		 * Returns a new 2x3 matrix
		 */
		public static function create() : Array
		{
			var output : Array = new Array(6);
			output[0] = 1;
			output[1] = 0;
			output[2] = 0;
			output[3] = 1;
			output[4] = 0;
			output[5] = 0;
			return output;
		}

		/**
		 * Calculates the determinant of a mat2d
		 * Returns determinant of a
		 * @param a the source matrix
		 */
		public static function determinant(a : Array) : Number
		{
			return a[0] * a[3] - a[1] * a[2];
		}

		/**
		 * Set a mat2d to the identity matrix
		 * Returns output
		 * @param output the receiving matrix
		 */
		public static function identity_(output : Array) : Array
		{
			output[0] = 1;
			output[1] = 0;
			output[2] = 0;
			output[3] = 1;
			output[4] = 0;
			output[5] = 0;
			return output;
		}

		/**
		 * Inverts a mat2d
		 * Returns output
		 * @param output the receiving matrix
		 * @param a the source matrix
		 */
		public static function invert(output : Array, a : Array) : Array
		{
			var aa : Number = a[0];
			var ab : Number = a[1];
			var ac : Number = a[2];
			var ad : Number = a[3];
			var atx : Number = a[4];
			var aty : Number = a[5];
			var det : Number = aa * ad - ab * ac;
			if (det == 0) {
				return null;
			}
			var one : Number = 1;
			det = one / (det);
			output[0] = ad * det;
			output[1] = -ab * det;
			output[2] = -ac * det;
			output[3] = aa * det;
			output[4] = (ac * aty - ad * atx) * det;
			output[5] = (ab * atx - aa * aty) * det;
			return output;
		}

		/**
		 * Alias for {@link mat2d.multiply} @function
		 */
		public static function mul(output : Array, a : Array, b : Array) : Array
		{
			return Mat2d.multiply(output, a, b);
		}

		/**
		 * Multiplies two mat2d's
		 * Returns output
		 * @param output the receiving matrix
		 * @param a the first operand
		 * @param b the second operand
		 */
		public static function multiply(output : Array, a : Array, b : Array) : Array
		{
			var aa : Number = a[0];
			var ab : Number = a[1];
			var ac : Number = a[2];
			var ad : Number = a[3];
			var atx : Number = a[4];
			var aty : Number = a[5];
			var ba : Number = b[0];
			var bb : Number = b[1];
			var bc : Number = b[2];
			var bd : Number = b[3];
			var btx : Number = b[4];
			var bty : Number = b[5];
			output[0] = aa * ba + ab * bc;
			output[1] = aa * bb + ab * bd;
			output[2] = ac * ba + ad * bc;
			output[3] = ac * bb + ad * bd;
			output[4] = ba * atx + bc * aty + btx;
			output[5] = bb * atx + bd * aty + bty;
			return output;
		}

		/**
		 * Rotates a mat2d by the given angle
		 * Returns output
		 * @param output the receiving matrix
		 * @param a the matrix to rotate
		 * @param rad the angle to rotate the matrix by
		 */
		public static function rotate(output : Array, a : Array, rad : Number) : Array
		{
			var aa : Number = a[0];
			var ab : Number = a[1];
			var ac : Number = a[2];
			var ad : Number = a[3];
			var atx : Number = a[4];
			var aty : Number = a[5];
			var st : Number = Platform.sin(rad);
			var ct : Number = Platform.cos(rad);
			output[0] = aa * ct + ab * st;
			output[1] = -aa * st + ab * ct;
			output[2] = ac * ct + ad * st;
			output[3] = -ac * st + ct * ad;
			output[4] = ct * atx + st * aty;
			output[5] = ct * aty - st * atx;
			return output;
		}

		/**
		 * Scales the mat2d by the dimensions in the given vec2
		 * Returns output
		 * @param output the receiving matrix
		 * @param a the matrix to translate
		 * @param v the vec2 to scale the matrix by
		 */
		public static function scale(output : Array, a : Array, v : Array) : Array
		{
			var vx : Number = v[0];
			var vy : Number = v[1];
			output[0] = a[0] * vx;
			output[1] = a[1] * vy;
			output[2] = a[2] * vx;
			output[3] = a[3] * vy;
			output[4] = a[4] * vx;
			output[5] = a[5] * vy;
			return output;
		}

		/**
		 * Translates the mat2d by the dimensions in the given vec2
		 * Returns output
		 * @param output the receiving matrix
		 * @param a the matrix to translate
		 * @param v the vec2 to translate the matrix by
		 */
		public static function translate(output : Array, a : Array, v : Array) : Array
		{
			output[0] = a[0];
			output[1] = a[1];
			output[2] = a[2];
			output[3] = a[3];
			output[4] = a[4] + v[0];
			output[5] = a[5] + v[1];
			return output;
		}

		/**
		 * **
		 */
		private final function f() : void
		{
		}
	}
}
