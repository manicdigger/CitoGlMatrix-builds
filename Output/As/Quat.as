// Generated automatically with "cito". Do not edit.
package CitoGlMatrix
{
	import flash.utils.ByteArray;

	public class Quat
	{

		/**
		 * **
		 */
		public static function add(output : Array, a : Array, b : Array) : Array
		{
			return Vec4.add(output, a, b);
		}

		/**
		 * **
		 */
		public static function calculateW(output : Array, a : Array) : Array
		{
			var x : Number = a[0];
			var y : Number = a[1];
			var z : Number = a[2];
			output[0] = x;
			output[1] = y;
			output[2] = z;
			var one : Number = 1;
			output[3] = -Platform.sqrt(GlMatrixMath.abs(one - x * x - y * y - z * z));
			return output;
		}

		/**
		 * **
		 */
		public static function cloneIt(a : Array) : Array
		{
			return Vec4.cloneIt(a);
		}

		/**
		 * **
		 */
		public final function conjugate(output : Array, a : Array) : Array
		{
			output[0] = -a[0];
			output[1] = -a[1];
			output[2] = -a[2];
			output[3] = a[3];
			return output;
		}

		/**
		 * **
		 */
		public static function copy(output : Array, a : Array) : Array
		{
			return Vec4.copy(output, a);
		}

		/**
		 * **
		 */
		public static function create() : Array
		{
			var output : Array = new Array(4);
			output[0] = 0;
			output[1] = 0;
			output[2] = 0;
			output[3] = 1;
			return output;
		}

		/**
		 * **
		 */
		public static function dot(a : Array, b : Array) : Number
		{
			return Vec4.dot(a, b);
		}

		/**
		 * **
		 */
		public static function fromMat3(output : Array, m : Array) : Array
		{
			var fTrace : Number = m[0] + m[4] + m[8];
			var fRoot : Number;
			var zero : Number = 0;
			var one : Number = 1;
			var half : Number = one / (2);
			if (fTrace > zero) {
				fRoot = Platform.sqrt(fTrace + one);
				output[3] = half * fRoot;
				fRoot = half / (fRoot);
				output[0] = (m[7] - m[5]) * fRoot;
				output[1] = (m[2] - m[6]) * fRoot;
				output[2] = (m[3] - m[1]) * fRoot;
			}
			else {
				var i : int = 0;
				if (m[4] > m[0])
					i = 1;
				if (m[8] > m[i * 3 + i])
					i = 2;
				var j : int = (i + 1) % 3;
				var k : int = (i + 2) % 3;
				fRoot = Platform.sqrt(m[i * 3 + i] - m[j * 3 + j] - m[k * 3 + k] + one);
				output[i] = half * fRoot;
				fRoot = half / (fRoot);
				output[3] = (m[k * 3 + j] - m[j * 3 + k]) * fRoot;
				output[j] = (m[j * 3 + i] + m[i * 3 + j]) * fRoot;
				output[k] = (m[k * 3 + i] + m[i * 3 + k]) * fRoot;
			}
			return output;
		}

		/**
		 * **
		 */
		public static function fromValues(x : Number, y : Number, z : Number, w : Number) : Array
		{
			return Vec4.fromValues(x, y, z, w);
		}

		/**
		 * **
		 */
		public static function identity_(output : Array) : Array
		{
			output[0] = 0;
			output[1] = 0;
			output[2] = 0;
			output[3] = 1;
			return output;
		}

		/**
		 * **
		 */
		public final function invert(output : Array, a : Array) : Array
		{
			var a0 : Number = a[0];
			var a1 : Number = a[1];
			var a2 : Number = a[2];
			var a3 : Number = a[3];
			var dot : Number = a0 * a0 + a1 * a1 + a2 * a2 + a3 * a3;
			var one : Number = 1;
			var invDot : Number = dot != 0 ? one / (dot) : 0;
			output[0] = -a0 * invDot;
			output[1] = -a1 * invDot;
			output[2] = -a2 * invDot;
			output[3] = a3 * invDot;
			return output;
		}

		/**
		 * **
		 */
		public static function len(a : Array) : Number
		{
			return Quat.length_(a);
		}

		/**
		 * **
		 */
		public static function length_(a : Array) : Number
		{
			return Vec4.length_(a);
		}

		/**
		 * **
		 */
		public static function lerp(output : Array, a : Array, b : Array, t : Number) : Array
		{
			return Vec4.lerp(output, a, b, t);
		}

		/**
		 * **
		 */
		public static function mul(output : Array, a : Array, b : Array) : Array
		{
			return Quat.multiply(output, a, b);
		}

		/**
		 * **
		 */
		public static function multiply(output : Array, a : Array, b : Array) : Array
		{
			var ax : Number = a[0];
			var ay : Number = a[1];
			var az : Number = a[2];
			var aw : Number = a[3];
			var bx : Number = b[0];
			var by : Number = b[1];
			var bz : Number = b[2];
			var bw : Number = b[3];
			output[0] = ax * bw + aw * bx + ay * bz - az * by;
			output[1] = ay * bw + aw * by + az * bx - ax * bz;
			output[2] = az * bw + aw * bz + ax * by - ay * bx;
			output[3] = aw * bw - ax * bx - ay * by - az * bz;
			return output;
		}

		/**
		 * **
		 */
		public static function normalize(output : Array, a : Array) : Array
		{
			return Vec4.normalize(output, a);
		}

		/**
		 * **
		 */
		public static function rotateX(output : Array, a : Array, rad : Number) : Array
		{
			rad /= 2;
			var ax : Number = a[0];
			var ay : Number = a[1];
			var az : Number = a[2];
			var aw : Number = a[3];
			var bx : Number = Platform.sin(rad);
			var bw : Number = Platform.cos(rad);
			output[0] = ax * bw + aw * bx;
			output[1] = ay * bw + az * bx;
			output[2] = az * bw - ay * bx;
			output[3] = aw * bw - ax * bx;
			return output;
		}

		/**
		 * **
		 */
		public static function rotateY(output : Array, a : Array, rad : Number) : Array
		{
			rad /= 2;
			var ax : Number = a[0];
			var ay : Number = a[1];
			var az : Number = a[2];
			var aw : Number = a[3];
			var by : Number = Platform.sin(rad);
			var bw : Number = Platform.cos(rad);
			output[0] = ax * bw - az * by;
			output[1] = ay * bw + aw * by;
			output[2] = az * bw + ax * by;
			output[3] = aw * bw - ay * by;
			return output;
		}

		/**
		 * **
		 */
		public static function rotateZ(output : Array, a : Array, rad : Number) : Array
		{
			rad /= 2;
			var ax : Number = a[0];
			var ay : Number = a[1];
			var az : Number = a[2];
			var aw : Number = a[3];
			var bz : Number = Platform.sin(rad);
			var bw : Number = Platform.cos(rad);
			output[0] = ax * bw + ay * bz;
			output[1] = ay * bw - ax * bz;
			output[2] = az * bw + aw * bz;
			output[3] = aw * bw - az * bz;
			return output;
		}

		/**
		 * **
		 */
		public static function rotationTo(output : Array, a : Array, b : Array) : Array
		{
			var tmpvec3 : Array = Vec3.create();
			var xUnitVec3 : Array = Vec3.fromValues(1, 0, 0);
			var yUnitVec3 : Array = Vec3.fromValues(0, 1, 0);
			var dot : Number = Vec3.dot(a, b);
			var nines : Number = 999999;
			nines /= 1000000;
			var epsilon : Number = 1;
			epsilon /= 1000000;
			if (dot < -nines) {
				Vec3.cross(tmpvec3, xUnitVec3, a);
				if (Vec3.length_(tmpvec3) < epsilon)
					Vec3.cross(tmpvec3, yUnitVec3, a);
				Vec3.normalize(tmpvec3, tmpvec3);
				Quat.setAxisAngle(output, tmpvec3, GlMatrixMath.pI());
				return output;
			}
			else if (dot > nines) {
				output[0] = 0;
				output[1] = 0;
				output[2] = 0;
				output[3] = 1;
				return output;
			}
			else {
				Vec3.cross(tmpvec3, a, b);
				output[0] = tmpvec3[0];
				output[1] = tmpvec3[1];
				output[2] = tmpvec3[2];
				output[3] = 1 + dot;
				return Quat.normalize(output, output);
			}
		}

		/**
		 * **
		 */
		public static function scale(output : Array, a : Array, b : Number) : Array
		{
			return Vec4.scale(output, a, b);
		}

		/**
		 * **
		 */
		public static function set(output : Array, x : Number, y : Number, z : Number, w : Number) : Array
		{
			return Vec4.set(output, x, y, z, w);
		}

		/**
		 * **
		 */
		public static function setAxes(output : Array, view : Array, right : Array, up : Array) : Array
		{
			var matr : Array = Mat3.create();
			matr[0] = right[0];
			matr[3] = right[1];
			matr[6] = right[2];
			matr[1] = up[0];
			matr[4] = up[1];
			matr[7] = up[2];
			matr[2] = view[0];
			matr[5] = view[1];
			matr[8] = view[2];
			return Quat.normalize(output, Quat.fromMat3(output, matr));
		}

		/**
		 * **
		 */
		public static function setAxisAngle(output : Array, axis : Array, rad : Number) : Array
		{
			rad = rad / (2);
			var s : Number = Platform.sin(rad);
			output[0] = s * axis[0];
			output[1] = s * axis[1];
			output[2] = s * axis[2];
			output[3] = Platform.cos(rad);
			return output;
		}

		/**
		 * **
		 */
		public static function slerp(output : Array, a : Array, b : Array, t : Number) : Array
		{
			var ax : Number = a[0];
			var ay : Number = a[1];
			var az : Number = a[2];
			var aw : Number = a[3];
			var bx : Number = b[0];
			var by : Number = b[1];
			var bz : Number = b[2];
			var bw : Number = b[3];
			var omega : Number;
			var cosom : Number;
			var sinom : Number;
			var scale0 : Number;
			var scale1 : Number;
			cosom = ax * bx + ay * by + az * bz + aw * bw;
			if (cosom < 0) {
				cosom = -cosom;
				bx = -bx;
				by = -by;
				bz = -bz;
				bw = -bw;
			}
			var one : Number = 1;
			var epsilon : Number = one / (1000000);
			if (one - cosom > epsilon) {
				omega = Platform.acos(cosom);
				sinom = Platform.sin(omega);
				scale0 = Platform.sin((one - t) * omega) / (sinom);
				scale1 = Platform.sin(t * omega) / (sinom);
			}
			else {
				scale0 = one - t;
				scale1 = t;
			}
			output[0] = scale0 * ax + scale1 * bx;
			output[1] = scale0 * ay + scale1 * by;
			output[2] = scale0 * az + scale1 * bz;
			output[3] = scale0 * aw + scale1 * bw;
			return output;
		}

		/**
		 * **
		 */
		public static function sqrLen(a : Array) : Number
		{
			return Quat.squaredLength(a);
		}

		/**
		 * **
		 */
		public static function squaredLength(a : Array) : Number
		{
			return Vec4.squaredLength(a);
		}

		/**
		 * **
		 */
		private final function f() : void
		{
		}
	}
}
