// Generated automatically with "cito". Do not edit.
package CitoGlMatrix
{
	import flash.utils.ByteArray;

	public class Mat3
	{

		/**
		 * **
		 */
		public static function adjoint(output : Array, a : Array) : Array
		{
			var a00 : Number = a[0];
			var a01 : Number = a[1];
			var a02 : Number = a[2];
			var a10 : Number = a[3];
			var a11 : Number = a[4];
			var a12 : Number = a[5];
			var a20 : Number = a[6];
			var a21 : Number = a[7];
			var a22 : Number = a[8];
			output[0] = a11 * a22 - a12 * a21;
			output[1] = a02 * a21 - a01 * a22;
			output[2] = a01 * a12 - a02 * a11;
			output[3] = a12 * a20 - a10 * a22;
			output[4] = a00 * a22 - a02 * a20;
			output[5] = a02 * a10 - a00 * a12;
			output[6] = a10 * a21 - a11 * a20;
			output[7] = a01 * a20 - a00 * a21;
			output[8] = a00 * a11 - a01 * a10;
			return output;
		}

		/**
		 * **
		 */
		public static function cloneIt(a : Array) : Array
		{
			var output : Array = new Array(9);
			output[0] = a[0];
			output[1] = a[1];
			output[2] = a[2];
			output[3] = a[3];
			output[4] = a[4];
			output[5] = a[5];
			output[6] = a[6];
			output[7] = a[7];
			output[8] = a[8];
			return output;
		}

		/**
		 * **
		 */
		public static function copy(output : Array, a : Array) : Array
		{
			output[0] = a[0];
			output[1] = a[1];
			output[2] = a[2];
			output[3] = a[3];
			output[4] = a[4];
			output[5] = a[5];
			output[6] = a[6];
			output[7] = a[7];
			output[8] = a[8];
			return output;
		}

		/**
		 * **
		 */
		public static function create() : Array
		{
			var output : Array = new Array(9);
			output[0] = 1;
			output[1] = 0;
			output[2] = 0;
			output[3] = 0;
			output[4] = 1;
			output[5] = 0;
			output[6] = 0;
			output[7] = 0;
			output[8] = 1;
			return output;
		}

		/**
		 * **
		 */
		public static function determinant(a : Array) : Number
		{
			var a00 : Number = a[0];
			var a01 : Number = a[1];
			var a02 : Number = a[2];
			var a10 : Number = a[3];
			var a11 : Number = a[4];
			var a12 : Number = a[5];
			var a20 : Number = a[6];
			var a21 : Number = a[7];
			var a22 : Number = a[8];
			return a00 * (a22 * a11 - a12 * a21) + a01 * (-a22 * a10 + a12 * a20) + a02 * (a21 * a10 - a11 * a20);
		}

		/**
		 * **
		 */
		public static function fromMat2d(output : Array, a : Array) : Array
		{
			output[0] = a[0];
			output[1] = a[1];
			output[2] = 0;
			output[3] = a[2];
			output[4] = a[3];
			output[5] = 0;
			output[6] = a[4];
			output[7] = a[5];
			output[8] = 1;
			return output;
		}

		/**
		 * **
		 */
		public static function fromMat4(output : Array, a : Array) : Array
		{
			output[0] = a[0];
			output[1] = a[1];
			output[2] = a[2];
			output[3] = a[4];
			output[4] = a[5];
			output[5] = a[6];
			output[6] = a[8];
			output[7] = a[9];
			output[8] = a[10];
			return output;
		}

		/**
		 * **
		 */
		public static function fromQuat(output : Array, q : Array) : Array
		{
			var x : Number = q[0];
			var y : Number = q[1];
			var z : Number = q[2];
			var w : Number = q[3];
			var x2 : Number = x + x;
			var y2 : Number = y + y;
			var z2 : Number = z + z;
			var xx : Number = x * x2;
			var xy : Number = x * y2;
			var xz : Number = x * z2;
			var yy : Number = y * y2;
			var yz : Number = y * z2;
			var zz : Number = z * z2;
			var wx : Number = w * x2;
			var wy : Number = w * y2;
			var wz : Number = w * z2;
			output[0] = 1 - (yy + zz);
			output[3] = xy + wz;
			output[6] = xz - wy;
			output[1] = xy - wz;
			output[4] = 1 - (xx + zz);
			output[7] = yz + wx;
			output[2] = xz + wy;
			output[5] = yz - wx;
			output[8] = 1 - (xx + yy);
			return output;
		}

		/**
		 * **
		 */
		public static function identity_(output : Array) : Array
		{
			output[0] = 1;
			output[1] = 0;
			output[2] = 0;
			output[3] = 0;
			output[4] = 1;
			output[5] = 0;
			output[6] = 0;
			output[7] = 0;
			output[8] = 1;
			return output;
		}

		/**
		 * **
		 */
		public static function invert(output : Array, a : Array) : Array
		{
			var a00 : Number = a[0];
			var a01 : Number = a[1];
			var a02 : Number = a[2];
			var a10 : Number = a[3];
			var a11 : Number = a[4];
			var a12 : Number = a[5];
			var a20 : Number = a[6];
			var a21 : Number = a[7];
			var a22 : Number = a[8];
			var b01 : Number = a22 * a11 - a12 * a21;
			var b11 : Number = -a22 * a10 + a12 * a20;
			var b21 : Number = a21 * a10 - a11 * a20;
			var det : Number = a00 * b01 + a01 * b11 + a02 * b21;
			if (det == 0) {
				return null;
			}
			var one : Number = 1;
			det = one / (det);
			output[0] = b01 * det;
			output[1] = (-a22 * a01 + a02 * a21) * det;
			output[2] = (a12 * a01 - a02 * a11) * det;
			output[3] = b11 * det;
			output[4] = (a22 * a00 - a02 * a20) * det;
			output[5] = (-a12 * a00 + a02 * a10) * det;
			output[6] = b21 * det;
			output[7] = (-a21 * a00 + a01 * a20) * det;
			output[8] = (a11 * a00 - a01 * a10) * det;
			return output;
		}

		/**
		 * **
		 */
		public static function mul(output : Array, a : Array, b : Array) : Array
		{
			return Mat3.multiply(output, a, b);
		}

		/**
		 * **
		 */
		public static function multiply(output : Array, a : Array, b : Array) : Array
		{
			var a00 : Number = a[0];
			var a01 : Number = a[1];
			var a02 : Number = a[2];
			var a10 : Number = a[3];
			var a11 : Number = a[4];
			var a12 : Number = a[5];
			var a20 : Number = a[6];
			var a21 : Number = a[7];
			var a22 : Number = a[8];
			var b00 : Number = b[0];
			var b01 : Number = b[1];
			var b02 : Number = b[2];
			var b10 : Number = b[3];
			var b11 : Number = b[4];
			var b12 : Number = b[5];
			var b20 : Number = b[6];
			var b21 : Number = b[7];
			var b22 : Number = b[8];
			output[0] = b00 * a00 + b01 * a10 + b02 * a20;
			output[1] = b00 * a01 + b01 * a11 + b02 * a21;
			output[2] = b00 * a02 + b01 * a12 + b02 * a22;
			output[3] = b10 * a00 + b11 * a10 + b12 * a20;
			output[4] = b10 * a01 + b11 * a11 + b12 * a21;
			output[5] = b10 * a02 + b11 * a12 + b12 * a22;
			output[6] = b20 * a00 + b21 * a10 + b22 * a20;
			output[7] = b20 * a01 + b21 * a11 + b22 * a21;
			output[8] = b20 * a02 + b21 * a12 + b22 * a22;
			return output;
		}

		/**
		 * **
		 */
		public static function normalFromMat4(output : Array, a : Array) : Array
		{
			var a00 : Number = a[0];
			var a01 : Number = a[1];
			var a02 : Number = a[2];
			var a03 : Number = a[3];
			var a10 : Number = a[4];
			var a11 : Number = a[5];
			var a12 : Number = a[6];
			var a13 : Number = a[7];
			var a20 : Number = a[8];
			var a21 : Number = a[9];
			var a22 : Number = a[10];
			var a23 : Number = a[11];
			var a30 : Number = a[12];
			var a31 : Number = a[13];
			var a32 : Number = a[14];
			var a33 : Number = a[15];
			var b00 : Number = a00 * a11 - a01 * a10;
			var b01 : Number = a00 * a12 - a02 * a10;
			var b02 : Number = a00 * a13 - a03 * a10;
			var b03 : Number = a01 * a12 - a02 * a11;
			var b04 : Number = a01 * a13 - a03 * a11;
			var b05 : Number = a02 * a13 - a03 * a12;
			var b06 : Number = a20 * a31 - a21 * a30;
			var b07 : Number = a20 * a32 - a22 * a30;
			var b08 : Number = a20 * a33 - a23 * a30;
			var b09 : Number = a21 * a32 - a22 * a31;
			var b10 : Number = a21 * a33 - a23 * a31;
			var b11 : Number = a22 * a33 - a23 * a32;
			var det : Number = b00 * b11 - b01 * b10 + b02 * b09 + b03 * b08 - b04 * b07 + b05 * b06;
			if (det == 0) {
				return null;
			}
			var one : Number = 1;
			det = one / (det);
			output[0] = (a11 * b11 - a12 * b10 + a13 * b09) * det;
			output[1] = (a12 * b08 - a10 * b11 - a13 * b07) * det;
			output[2] = (a10 * b10 - a11 * b08 + a13 * b06) * det;
			output[3] = (a02 * b10 - a01 * b11 - a03 * b09) * det;
			output[4] = (a00 * b11 - a02 * b08 + a03 * b07) * det;
			output[5] = (a01 * b08 - a00 * b10 - a03 * b06) * det;
			output[6] = (a31 * b05 - a32 * b04 + a33 * b03) * det;
			output[7] = (a32 * b02 - a30 * b05 - a33 * b01) * det;
			output[8] = (a30 * b04 - a31 * b02 + a33 * b00) * det;
			return output;
		}

		/**
		 * **
		 */
		public static function rotate(output : Array, a : Array, rad : Number) : Array
		{
			var a00 : Number = a[0];
			var a01 : Number = a[1];
			var a02 : Number = a[2];
			var a10 : Number = a[3];
			var a11 : Number = a[4];
			var a12 : Number = a[5];
			var a20 : Number = a[6];
			var a21 : Number = a[7];
			var a22 : Number = a[8];
			var s : Number = Platform.sin(rad);
			var c : Number = Platform.cos(rad);
			output[0] = c * a00 + s * a10;
			output[1] = c * a01 + s * a11;
			output[2] = c * a02 + s * a12;
			output[3] = c * a10 - s * a00;
			output[4] = c * a11 - s * a01;
			output[5] = c * a12 - s * a02;
			output[6] = a20;
			output[7] = a21;
			output[8] = a22;
			return output;
		}

		/**
		 * **
		 */
		public static function scale(output : Array, a : Array, v : Array) : Array
		{
			var x : Number = v[0];
			var y : Number = v[1];
			output[0] = x * a[0];
			output[1] = x * a[1];
			output[2] = x * a[2];
			output[3] = y * a[3];
			output[4] = y * a[4];
			output[5] = y * a[5];
			output[6] = a[6];
			output[7] = a[7];
			output[8] = a[8];
			return output;
		}

		/**
		 * **
		 */
		public static function translate(output : Array, a : Array, v : Array) : Array
		{
			var a00 : Number = a[0];
			var a01 : Number = a[1];
			var a02 : Number = a[2];
			var a10 : Number = a[3];
			var a11 : Number = a[4];
			var a12 : Number = a[5];
			var a20 : Number = a[6];
			var a21 : Number = a[7];
			var a22 : Number = a[8];
			var x : Number = v[0];
			var y : Number = v[1];
			output[0] = a00;
			output[1] = a01;
			output[2] = a02;
			output[3] = a10;
			output[4] = a11;
			output[5] = a12;
			output[6] = x * a00 + y * a10 + a20;
			output[7] = x * a01 + y * a11 + a21;
			output[8] = x * a02 + y * a12 + a22;
			return output;
		}

		/**
		 * **
		 */
		public static function transpose(output : Array, a : Array) : Array
		{
			if (output == a) {
				var a01 : Number = a[1];
				var a02 : Number = a[2];
				var a12 : Number = a[5];
				output[1] = a[3];
				output[2] = a[6];
				output[3] = a01;
				output[5] = a[7];
				output[6] = a02;
				output[7] = a12;
			}
			else {
				output[0] = a[0];
				output[1] = a[3];
				output[2] = a[6];
				output[3] = a[1];
				output[4] = a[4];
				output[5] = a[7];
				output[6] = a[2];
				output[7] = a[5];
				output[8] = a[8];
			}
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
