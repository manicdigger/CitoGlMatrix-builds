// Generated automatically with "cito". Do not edit.
package CitoGlMatrix
{
	import flash.utils.ByteArray;

	/**
	 * 2x2 Matrix
	 */
	public class Mat2
	{

		/**
		 * Calculates the adjugate of a mat2
		 * Returns output
		 * @param output the receiving matrix
		 * @param a the source matrix
		 */
		public static function adjoint(output : Array, a : Array) : Array
		{
			var a0 : Number = a[0];
			output[0] = a[3];
			output[1] = -a[1];
			output[2] = -a[2];
			output[3] = a0;
			return output;
		}

		/**
		 * Creates a new mat2 initialized with values from an existing matrix
		 * Returns a new 2x2 matrix
		 * @param a matrix to clone
		 */
		public static function cloneIt(a : Array) : Array
		{
			var output : Array = new Array(4);
			output[0] = a[0];
			output[1] = a[1];
			output[2] = a[2];
			output[3] = a[3];
			return output;
		}

		/**
		 * Copy the values from one mat2 to another
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
			return output;
		}

		/**
		 * Creates a new identity mat2
		 * Returns a new 2x2 matrix
		 */
		public static function create() : Array
		{
			var output : Array = new Array(4);
			output[0] = 1;
			output[1] = 0;
			output[2] = 0;
			output[3] = 1;
			return output;
		}

		/**
		 * Calculates the determinant of a mat2
		 * Returns determinant of a
		 * @param a the source matrix
		 */
		public static function determinant(a : Array) : Number
		{
			return a[0] * a[3] - a[2] * a[1];
		}

		/**
		 * Set a mat2 to the identity matrix
		 * Returns output
		 * @param output the receiving matrix
		 */
		public static function identity_(output : Array) : Array
		{
			output[0] = 1;
			output[1] = 0;
			output[2] = 0;
			output[3] = 1;
			return output;
		}

		/**
		 * Inverts a mat2
		 * Returns output
		 * @param output the receiving matrix
		 * @param a the source matrix
		 */
		public static function invert(output : Array, a : Array) : Array
		{
			var a0 : Number = a[0];
			var a1 : Number = a[1];
			var a2 : Number = a[2];
			var a3 : Number = a[3];
			var det : Number = a0 * a3 - a2 * a1;
			if (det == 0) {
				return null;
			}
			var one : Number = 1;
			det = one / (det);
			output[0] = a3 * det;
			output[1] = -a1 * det;
			output[2] = -a2 * det;
			output[3] = a0 * det;
			return output;
		}

		/**
		 * Alias for {@link mat2.multiply}
		 */
		public static function mul(output : Array, a : Array, b : Array) : Array
		{
			return Mat2.multiply(output, a, b);
		}

		/**
		 * Multiplies two mat2's
		 * Returns output
		 * @param output the receiving matrix
		 * @param a the first operand
		 * @param b the second operand
		 */
		public static function multiply(output : Array, a : Array, b : Array) : Array
		{
			var a0 : Number = a[0];
			var a1 : Number = a[1];
			var a2 : Number = a[2];
			var a3 : Number = a[3];
			var b0 : Number = b[0];
			var b1 : Number = b[1];
			var b2 : Number = b[2];
			var b3 : Number = b[3];
			output[0] = a0 * b0 + a1 * b2;
			output[1] = a0 * b1 + a1 * b3;
			output[2] = a2 * b0 + a3 * b2;
			output[3] = a2 * b1 + a3 * b3;
			return output;
		}

		/**
		 * Rotates a mat2 by the given angle
		 * Returns output
		 * @param output the receiving matrix
		 * @param a the matrix to rotate
		 * @param rad the angle to rotate the matrix by
		 */
		public static function rotate(output : Array, a : Array, rad : Number) : Array
		{
			var a0 : Number = a[0];
			var a1 : Number = a[1];
			var a2 : Number = a[2];
			var a3 : Number = a[3];
			var s : Number = Platform.sin(rad);
			var c : Number = Platform.cos(rad);
			output[0] = a0 * c + a1 * s;
			output[1] = a0 * -s + a1 * c;
			output[2] = a2 * c + a3 * s;
			output[3] = a2 * -s + a3 * c;
			return output;
		}

		/**
		 * Scales the mat2 by the dimensions in the given vec2
		 * Returns output
		 * @param output the receiving matrix
		 * @param a the matrix to rotate
		 * @param v the vec2 to scale the matrix by
		 */
		public static function scale(output : Array, a : Array, v : Array) : Array
		{
			var a0 : Number = a[0];
			var a1 : Number = a[1];
			var a2 : Number = a[2];
			var a3 : Number = a[3];
			var v0 : Number = v[0];
			var v1 : Number = v[1];
			output[0] = a0 * v0;
			output[1] = a1 * v1;
			output[2] = a2 * v0;
			output[3] = a3 * v1;
			return output;
		}

		/**
		 * Transpose the values of a mat2
		 * Returns output
		 * @param output the receiving matrix
		 * @param a the source matrix
		 */
		public static function transpose(output : Array, a : Array) : Array
		{
			output[0] = a[0];
			output[1] = a[2];
			output[2] = a[1];
			output[3] = a[3];
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
