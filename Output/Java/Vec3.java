// Generated automatically with "cito". Do not edit.
package CitoGlMatrix.lib;

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
	public static float[] add(float[] output, float[] a, float[] b)
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
	public static float[] cloneIt(float[] a)
	{
		float[] output = new float[3];
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
	public static float[] copy(float[] output, float[] a)
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
	public static float[] create()
	{
		float[] output = new float[3];
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
	public static float[] cross(float[] output, float[] a, float[] b)
	{
		float ax = a[0];
		float ay = a[1];
		float az = a[2];
		float bx = b[0];
		float by = b[1];
		float bz = b[2];
		output[0] = ay * bz - az * by;
		output[1] = az * bx - ax * bz;
		output[2] = ax * by - ay * bx;
		return output;
	}

	/**
	 * Alias for {@link vec3.distance}
	 */
	public static float dist(float[] a, float[] b)
	{
		return Vec3.distance(a, b);
	}

	/**
	 * Calculates the euclidian distance between two vec3's
	 * @returns {Number} distance between a and b
	 * @param a /@param {vec3} a the first operand
	 * @param b /@param {vec3} b the second operand
	 */
	public static float distance(float[] a, float[] b)
	{
		float x = b[0] - a[0];
		float y = b[1] - a[1];
		float z = b[2] - a[2];
		return Platform.sqrt(x * x + y * y + z * z);
	}

	/**
	 * Alias for {@link vec3.divide}
	 */
	public static float[] div(float[] output, float[] a, float[] b)
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
	public static float[] divide(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] / b[0];
		output[1] = a[1] / b[1];
		output[2] = a[2] / b[2];
		return output;
	}

	/**
	 * Calculates the dot product of two vec3's
	 * @returns {Number} dot product of a and b
	 * @param a /@param {vec3} a the first operand
	 * @param b /@param {vec3} b the second operand
	 */
	public static float dot(float[] a, float[] b)
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
	public static float[] fromValues(float x, float y, float z)
	{
		float[] output = new float[3];
		output[0] = x;
		output[1] = y;
		output[2] = z;
		return output;
	}

	/**
	 * Alias for {@link vec3.length}
	 */
	public static float len(float[] a)
	{
		return Vec3.length_(a);
	}

	/**
	 * Calculates the length of a vec3
	 * @returns {Number} length of a
	 * @param a /@param {vec3} a vector to calculate length of
	 */
	public static float length_(float[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
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
	public static float[] lerp(float[] output, float[] a, float[] b, float t)
	{
		float ax = a[0];
		float ay = a[1];
		float az = a[2];
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
	public static float[] max(float[] output, float[] a, float[] b)
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
	public static float[] min(float[] output, float[] a, float[] b)
	{
		output[0] = GlMatrixMath.min(a[0], b[0]);
		output[1] = GlMatrixMath.min(a[1], b[1]);
		output[2] = GlMatrixMath.min(a[2], b[2]);
		return output;
	}

	/**
	 * Alias for {@link vec3.multiply}
	 */
	public static float[] mul(float[] output, float[] a, float[] b)
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
	public static float[] multiply(float[] output, float[] a, float[] b)
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
	public static float[] negate(float[] output, float[] a)
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
	public static float[] normalize(float[] output, float[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		float len = x * x + y * y + z * z;
		if (len > 0) {
			float one = 1;
			len = one / Platform.sqrt(len);
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
	public static float[] scale(float[] output, float[] a, float b)
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
	public static float[] scaleAndAdd(float[] output, float[] a, float[] b, float scale)
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
	public static float[] set(float[] output, float x, float y, float z)
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
	public static float sqrDist(float[] a, float[] b)
	{
		return Vec3.squaredDistance(a, b);
	}

	/**
	 * Alias for {@link vec3.squaredLength}
	 */
	public static float sqrLen(float[] a)
	{
		return Vec3.squaredLength(a);
	}

	/**
	 * Calculates the squared euclidian distance between two vec3's
	 * @returns {Number} squared distance between a and b
	 * @param a /@param {vec3} a the first operand
	 * @param b /@param {vec3} b the second operand
	 */
	public static float squaredDistance(float[] a, float[] b)
	{
		float x = b[0] - a[0];
		float y = b[1] - a[1];
		float z = b[2] - a[2];
		return x * x + y * y + z * z;
	}

	/**
	 * Calculates the squared length of a vec3
	 * @returns {Number} squared length of a
	 * @param a /@param {vec3} a vector to calculate squared length of
	 */
	public static float squaredLength(float[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		return x * x + y * y + z * z;
	}

	/**
	 * Alias for {@link vec3.subtract}
	 * @function
	 */
	public static float[] sub(float[] output, float[] a, float[] b)
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
	public static float[] substract(float[] output, float[] a, float[] b)
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
	public static float[] transformMat3(float[] output, float[] a, float[] m)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
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
	public static float[] transformMat4(float[] output, float[] a, float[] m)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
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
	public static float[] transformQuat(float[] output, float[] a, float[] q)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		float qx = q[0];
		float qy = q[1];
		float qz = q[2];
		float qw = q[3];
		float ix = qw * x + qy * z - qz * y;
		float iy = qw * y + qz * x - qx * z;
		float iz = qw * z + qx * y - qy * x;
		float iw = (0 - qx) * x - qy * y - qz * z;
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
	public static String str(float[] a)
	{
		return "";
	}
}
