// Generated automatically with "cito". Do not edit.
package CitoGlMatrix
{
	import flash.utils.ByteArray;

	/**
	 * 3 Dimensional Vector
	 */
	public class Vec3
	{

		/**
		 * Adds two vec3's
		 * @returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param a /@param {vec3} a the first operand
		 * @param b /@param {vec3} b the second operand
		 */
		public static function add(output : Array, a : Array, b : Array) : Array
		{
			output[0] = a[0] + b[0];
			output[1] = a[1] + b[1];
			output[2] = a[2] + b[2];
			return output;
		}

		/**
		 * Creates a new vec3 initialized with values from an existing vector
		 * Returns {vec3} a new 3D vector
		 * @param a a vector to clone
		 */
		public static function cloneIt(a : Array) : Array
		{
			var output : Array = new Array(3);
			output[0] = a[0];
			output[1] = a[1];
			output[2] = a[2];
			return output;
		}

		/**
		 * Copy the values from one vec3 to another
		 * @returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param a /@param {vec3} a the source vector
		 */
		public static function copy(output : Array, a : Array) : Array
		{
			output[0] = a[0];
			output[1] = a[1];
			output[2] = a[2];
			return output;
		}

		/**
		 * Creates a new, empty vec3
		 * Returns {vec3} a new 3D vector.
		 */
		public static function create() : Array
		{
			var output : Array = new Array(3);
			output[0] = 0;
			output[1] = 0;
			output[2] = 0;
			return output;
		}

		/**
		 * Computes the cross product of two vec3's
		 * @returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param a /@param {vec3} a the first operand
		 * @param b /@param {vec3} b the second operand
		 */
		public static function cross(output : Array, a : Array, b : Array) : Array
		{
			var ax : Number = a[0];
			var ay : Number = a[1];
			var az : Number = a[2];
			var bx : Number = b[0];
			var by : Number = b[1];
			var bz : Number = b[2];
			output[0] = ay * bz - az * by;
			output[1] = az * bx - ax * bz;
			output[2] = ax * by - ay * bx;
			return output;
		}

		/**
		 * Alias for {@link vec3.distance}
		 */
		public static function dist(a : Array, b : Array) : Number
		{
			return Vec3.distance(a, b);
		}

		/**
		 * Calculates the euclidian distance between two vec3's
		 * @returns {Number} distance between a and b
		 * @param a /@param {vec3} a the first operand
		 * @param b /@param {vec3} b the second operand
		 */
		public static function distance(a : Array, b : Array) : Number
		{
			var x : Number = b[0] - a[0];
			var y : Number = b[1] - a[1];
			var z : Number = b[2] - a[2];
			return Platform.sqrt(x * x + y * y + z * z);
		}

		/**
		 * Alias for {@link vec3.divide}
		 */
		public static function div(output : Array, a : Array, b : Array) : Array
		{
			return Vec3.divide(output, a, b);
		}

		/**
		 * Divides two vec3's
		 * @returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param a /@param {vec3} a the first operand
		 * @param b /@param {vec3} b the second operand
		 */
		public static function divide(output : Array, a : Array, b : Array) : Array
		{
			output[0] = a[0] / (b[0]);
			output[1] = a[1] / (b[1]);
			output[2] = a[2] / (b[2]);
			return output;
		}

		/**
		 * Calculates the dot product of two vec3's
		 * @returns {Number} dot product of a and b
		 * @param a /@param {vec3} a the first operand
		 * @param b /@param {vec3} b the second operand
		 */
		public static function dot(a : Array, b : Array) : Number
		{
			return a[0] * b[0] + a[1] * b[1] + a[2] * b[2];
		}

		/**
		 * Creates a new vec3 initialized with the given values
		 * Returns {vec3} a new 3D vector
		 * @param x X component
		 * @param y Y component
		 * @param z Z component
		 */
		public static function fromValues(x : Number, y : Number, z : Number) : Array
		{
			var output : Array = new Array(3);
			output[0] = x;
			output[1] = y;
			output[2] = z;
			return output;
		}

		/**
		 * Alias for {@link vec3.length}
		 */
		public static function len(a : Array) : Number
		{
			return Vec3.length_(a);
		}

		/**
		 * Calculates the length of a vec3
		 * @returns {Number} length of a
		 * @param a /@param {vec3} a vector to calculate length of
		 */
		public static function length_(a : Array) : Number
		{
			var x : Number = a[0];
			var y : Number = a[1];
			var z : Number = a[2];
			return Platform.sqrt(x * x + y * y + z * z);
		}

		/**
		 * Performs a linear interpolation between two vec3's
		 * @returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param a /@param {vec3} a the first operand
		 * @param b /@param {vec3} b the second operand
		 * @param t /@param {Number} t interpolation amount between the two inputs
		 */
		public static function lerp(output : Array, a : Array, b : Array, t : Number) : Array
		{
			var ax : Number = a[0];
			var ay : Number = a[1];
			var az : Number = a[2];
			output[0] = ax + t * (b[0] - ax);
			output[1] = ay + t * (b[1] - ay);
			output[2] = az + t * (b[2] - az);
			return output;
		}

		/**
		 * Returns the maximum of two vec3's
		 * @returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param a /@param {vec3} a the first operand
		 * @param b /@param {vec3} b the second operand
		 */
		public static function max(output : Array, a : Array, b : Array) : Array
		{
			output[0] = GlMatrixMath.max(a[0], b[0]);
			output[1] = GlMatrixMath.max(a[1], b[1]);
			output[2] = GlMatrixMath.max(a[2], b[2]);
			return output;
		}

		/**
		 * Returns the minimum of two vec3's
		 * @returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param a /@param {vec3} a the first operand
		 * @param b /@param {vec3} b the second operand
		 */
		public static function min(output : Array, a : Array, b : Array) : Array
		{
			output[0] = GlMatrixMath.min(a[0], b[0]);
			output[1] = GlMatrixMath.min(a[1], b[1]);
			output[2] = GlMatrixMath.min(a[2], b[2]);
			return output;
		}

		/**
		 * Alias for {@link vec3.multiply}
		 */
		public static function mul(output : Array, a : Array, b : Array) : Array
		{
			return Vec3.multiply(output, a, b);
		}

		/**
		 * Multiplies two vec3's
		 * @returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param a /@param {vec3} a the first operand
		 * @param b /@param {vec3} b the second operand
		 */
		public static function multiply(output : Array, a : Array, b : Array) : Array
		{
			output[0] = a[0] * b[0];
			output[1] = a[1] * b[1];
			output[2] = a[2] * b[2];
			return output;
		}

		/**
		 * Negates the components of a vec3
		 * @returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param a /@param {vec3} a vector to negate
		 */
		public static function negate(output : Array, a : Array) : Array
		{
			output[0] = 0 - a[0];
			output[1] = 0 - a[1];
			output[2] = 0 - a[2];
			return output;
		}

		/**
		 * Normalize a vec3
		 * @returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param a /@param {vec3} a vector to normalize
		 */
		public static function normalize(output : Array, a : Array) : Array
		{
			var x : Number = a[0];
			var y : Number = a[1];
			var z : Number = a[2];
			var len : Number = x * x + y * y + z * z;
			if (len > 0) {
				var one : Number = 1;
				len = one / (Platform.sqrt(len));
				output[0] = a[0] * len;
				output[1] = a[1] * len;
				output[2] = a[2] * len;
			}
			return output;
		}

		/**
		 * Scales a vec3 by a scalar number
		 * @returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param a /@param {vec3} a the vector to scale
		 * @param b /@param {Number} b amount to scale the vector by
		 */
		public static function scale(output : Array, a : Array, b : Number) : Array
		{
			output[0] = a[0] * b;
			output[1] = a[1] * b;
			output[2] = a[2] * b;
			return output;
		}

		/**
		 * Adds two vec3's after scaling the second operand by a scalar value
		 * @returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param a /@param {vec3} a the first operand
		 * @param b /@param {vec3} b the second operand
		 * @param scale /@param {Number} scale the amount to scale b by before adding
		 */
		public static function scaleAndAdd(output : Array, a : Array, b : Array, scale : Number) : Array
		{
			output[0] = a[0] + b[0] * scale;
			output[1] = a[1] + b[1] * scale;
			output[2] = a[2] + b[2] * scale;
			return output;
		}

		/**
		 * Set the components of a vec3 to the given values
		 * @returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param x /@param {Number} x X component
		 * @param y /@param {Number} y Y component
		 * @param z /@param {Number} z Z component
		 */
		public static function set(output : Array, x : Number, y : Number, z : Number) : Array
		{
			output[0] = x;
			output[1] = y;
			output[2] = z;
			return output;
		}

		/**
		 * Alias for {@link vec3.squaredDistance}
		 * @function
		 */
		public static function sqrDist(a : Array, b : Array) : Number
		{
			return Vec3.squaredDistance(a, b);
		}

		/**
		 * Alias for {@link vec3.squaredLength}
		 */
		public static function sqrLen(a : Array) : Number
		{
			return Vec3.squaredLength(a);
		}

		/**
		 * Calculates the squared euclidian distance between two vec3's
		 * @returns {Number} squared distance between a and b
		 * @param a /@param {vec3} a the first operand
		 * @param b /@param {vec3} b the second operand
		 */
		public static function squaredDistance(a : Array, b : Array) : Number
		{
			var x : Number = b[0] - a[0];
			var y : Number = b[1] - a[1];
			var z : Number = b[2] - a[2];
			return x * x + y * y + z * z;
		}

		/**
		 * Calculates the squared length of a vec3
		 * @returns {Number} squared length of a
		 * @param a /@param {vec3} a vector to calculate squared length of
		 */
		public static function squaredLength(a : Array) : Number
		{
			var x : Number = a[0];
			var y : Number = a[1];
			var z : Number = a[2];
			return x * x + y * y + z * z;
		}

		/**
		 * Alias for {@link vec3.subtract}
		 * @function
		 */
		public static function sub(output : Array, a : Array, b : Array) : Array
		{
			return Vec3.substract(output, a, b);
		}

		/**
		 * Subtracts vector b from vector a
		 * @returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param a /@param {vec3} a the first operand
		 * @param b /@param {vec3} b the second operand
		 */
		public static function substract(output : Array, a : Array, b : Array) : Array
		{
			output[0] = a[0] - b[0];
			output[1] = a[1] - b[1];
			output[2] = a[2] - b[2];
			return output;
		}

		/**
		 * Transforms the vec3 with a mat3.
		 * @returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param a /@param {vec3} a the vector to transform
		 * @param m /@param {mat4} m the 3x3 matrix to transform with
		 */
		public static function transformMat3(output : Array, a : Array, m : Array) : Array
		{
			var x : Number = a[0];
			var y : Number = a[1];
			var z : Number = a[2];
			output[0] = x * m[0] + y * m[3] + z * m[6];
			output[1] = x * m[1] + y * m[4] + z * m[7];
			output[2] = x * m[2] + y * m[5] + z * m[8];
			return output;
		}

		/**
		 * /Transforms the vec3 with a mat4.
		 * /4th vector component is implicitly '1'
		 * /@returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param a /@param {vec3} a the vector to transform
		 * @param m /@param {mat4} m matrix to transform with
		 */
		public static function transformMat4(output : Array, a : Array, m : Array) : Array
		{
			var x : Number = a[0];
			var y : Number = a[1];
			var z : Number = a[2];
			output[0] = m[0] * x + m[4] * y + m[8] * z + m[12];
			output[1] = m[1] * x + m[5] * y + m[9] * z + m[13];
			output[2] = m[2] * x + m[6] * y + m[10] * z + m[14];
			return output;
		}

		/**
		 * Transforms the vec3 with a quat
		 * @returns {vec3} out
		 * @param output /@param {vec3} out the receiving vector
		 * @param a /@param {vec3} a the vector to transform
		 * @param q /@param {quat} q quaternion to transform with
		 */
		public static function transformQuat(output : Array, a : Array, q : Array) : Array
		{
			var x : Number = a[0];
			var y : Number = a[1];
			var z : Number = a[2];
			var qx : Number = q[0];
			var qy : Number = q[1];
			var qz : Number = q[2];
			var qw : Number = q[3];
			var ix : Number = qw * x + qy * z - qz * y;
			var iy : Number = qw * y + qz * x - qx * z;
			var iz : Number = qw * z + qx * y - qy * x;
			var iw : Number = (0 - qx) * x - qy * y - qz * z;
			output[0] = ix * qw + iw * (0 - qx) + iy * (0 - qz) - iz * (0 - qy);
			output[1] = iy * qw + iw * (0 - qy) + iz * (0 - qx) - ix * (0 - qz);
			output[2] = iz * qw + iw * (0 - qz) + ix * (0 - qy) - iy * (0 - qx);
			return output;
		}

		/**
		 * /Perform some operation over an array of vec3s.
		 * /@param {Array} a the array of vectors to iterate over
		 * /@param {Number} stride Number of elements between the start of each vec3. If 0 assumes tightly packed
		 * /@param {Number} offset Number of elements to skip at the beginning of the array
		 * /@param {Number} count Number of vec3s to iterate over. If 0 iterates over entire array
		 * /@param {Function} fn Function to call for each vector in the array
		 * /@param {Object} [arg] additional argument to pass to fn
		 * /@returns {Array} a
		 * /
		 * / Returns a string representation of a vector
		 * /
		 * / @param {vec3} vec vector to represent as a string
		 * / @returns {String} string representation of the vector
		 */
		public static function str(a : Array) : String
		{
			return "";
		}
	}
}
