// Generated automatically with "cito". Do not edit.
package CitoGlMatrix.lib;

public class Vec4
{

	/**
	 * **
	 */
	public static float[] add(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] + b[0];
		output[1] = a[1] + b[1];
		output[2] = a[2] + b[2];
		output[3] = a[3] + b[3];
		return output;
	}

	/**
	 * **
	 */
	public static float[] cloneIt(float[] a)
	{
		float[] output = new float[4];
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		output[3] = a[3];
		return output;
	}

	/**
	 * **
	 */
	public static float[] copy(float[] output, float[] a)
	{
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		output[3] = a[3];
		return output;
	}

	/**
	 * **
	 */
	public static float[] create()
	{
		float[] output = new float[4];
		output[0] = 0;
		output[1] = 0;
		output[2] = 0;
		output[3] = 0;
		return output;
	}

	/**
	 * **
	 */
	public static float dist(float[] a, float[] b)
	{
		return Vec4.distance(a, b);
	}

	/**
	 * **
	 */
	public static float distance(float[] a, float[] b)
	{
		float x = b[0] - a[0];
		float y = b[1] - a[1];
		float z = b[2] - a[2];
		float w = b[3] - a[3];
		return Platform.sqrt(x * x + y * y + z * z + w * w);
	}

	/**
	 * **
	 */
	public static float[] div(float[] output, float[] a, float[] b)
	{
		return Vec4.divide(output, a, b);
	}

	/**
	 * **
	 */
	public static float[] divide(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] / b[0];
		output[1] = a[1] / b[1];
		output[2] = a[2] / b[2];
		output[3] = a[3] / b[3];
		return output;
	}

	/**
	 * **
	 */
	public static float dot(float[] a, float[] b)
	{
		return a[0] * b[0] + a[1] * b[1] + a[2] * b[2] + a[3] * b[3];
	}

	/**
	 * **
	 */
	public static float[] fromValues(float x, float y, float z, float w)
	{
		float[] output = new float[4];
		output[0] = x;
		output[1] = y;
		output[2] = z;
		output[3] = w;
		return output;
	}

	/**
	 * **
	 */
	public static float len(float[] a)
	{
		return Vec4.length_(a);
	}

	/**
	 * **
	 */
	public static float length_(float[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		float w = a[3];
		return Platform.sqrt(x * x + y * y + z * z + w * w);
	}

	/**
	 * **
	 */
	public static float[] lerp(float[] output, float[] a, float[] b, float t)
	{
		float ax = a[0];
		float ay = a[1];
		float az = a[2];
		float aw = a[3];
		output[0] = ax + t * (b[0] - ax);
		output[1] = ay + t * (b[1] - ay);
		output[2] = az + t * (b[2] - az);
		output[3] = aw + t * (b[3] - aw);
		return output;
	}

	/**
	 * **
	 */
	public static float[] max(float[] output, float[] a, float[] b)
	{
		output[0] = GlMatrixMath.max(a[0], b[0]);
		output[1] = GlMatrixMath.max(a[1], b[1]);
		output[2] = GlMatrixMath.max(a[2], b[2]);
		output[3] = GlMatrixMath.max(a[3], b[3]);
		return output;
	}

	/**
	 * **
	 */
	public static float[] min(float[] output, float[] a, float[] b)
	{
		output[0] = GlMatrixMath.min(a[0], b[0]);
		output[1] = GlMatrixMath.min(a[1], b[1]);
		output[2] = GlMatrixMath.min(a[2], b[2]);
		output[3] = GlMatrixMath.min(a[3], b[3]);
		return output;
	}

	/**
	 * **
	 */
	public static float[] mul(float[] output, float[] a, float[] b)
	{
		return Vec4.multiply(output, a, b);
	}

	/**
	 * **
	 */
	public static float[] multiply(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] * b[0];
		output[1] = a[1] * b[1];
		output[2] = a[2] * b[2];
		output[3] = a[3] * b[3];
		return output;
	}

	/**
	 * **
	 */
	public static float[] negate(float[] output, float[] a)
	{
		output[0] = -a[0];
		output[1] = -a[1];
		output[2] = -a[2];
		output[3] = -a[3];
		return output;
	}

	/**
	 * **
	 */
	public static float[] normalize(float[] output, float[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		float w = a[3];
		float len = x * x + y * y + z * z + w * w;
		if (len > 0) {
			float one = 1;
			len = one / Platform.sqrt(len);
			output[0] = a[0] * len;
			output[1] = a[1] * len;
			output[2] = a[2] * len;
			output[3] = a[3] * len;
		}
		return output;
	}

	/**
	 * **
	 */
	public static float[] scale(float[] output, float[] a, float b)
	{
		output[0] = a[0] * b;
		output[1] = a[1] * b;
		output[2] = a[2] * b;
		output[3] = a[3] * b;
		return output;
	}

	/**
	 * **
	 */
	public static float[] scaleAndAdd(float[] output, float[] a, float[] b, float scale)
	{
		output[0] = a[0] + b[0] * scale;
		output[1] = a[1] + b[1] * scale;
		output[2] = a[2] + b[2] * scale;
		output[3] = a[3] + b[3] * scale;
		return output;
	}

	/**
	 * **
	 */
	public static float[] set(float[] output, float x, float y, float z, float w)
	{
		output[0] = x;
		output[1] = y;
		output[2] = z;
		output[3] = w;
		return output;
	}

	/**
	 * **
	 */
	public static float sqrDist(float[] a, float[] b)
	{
		return Vec4.squaredDistance(a, b);
	}

	/**
	 * **
	 */
	public static float sqrLen(float[] a)
	{
		return Vec4.squaredLength(a);
	}

	/**
	 * **
	 */
	public static float squaredDistance(float[] a, float[] b)
	{
		float x = b[0] - a[0];
		float y = b[1] - a[1];
		float z = b[2] - a[2];
		float w = b[3] - a[3];
		return x * x + y * y + z * z + w * w;
	}

	/**
	 * **
	 */
	public static float squaredLength(float[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		float w = a[3];
		return x * x + y * y + z * z + w * w;
	}

	/**
	 * **
	 */
	public static float[] sub(float[] output, float[] a, float[] b)
	{
		return Vec4.subtract(output, a, b);
	}

	/**
	 * **
	 */
	public static float[] subtract(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] - b[0];
		output[1] = a[1] - b[1];
		output[2] = a[2] - b[2];
		output[3] = a[3] - b[3];
		return output;
	}

	/**
	 * **
	 */
	public static float[] transformMat4(float[] output, float[] a, float[] m)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		float w = a[3];
		output[0] = m[0] * x + m[4] * y + m[8] * z + m[12] * w;
		output[1] = m[1] * x + m[5] * y + m[9] * z + m[13] * w;
		output[2] = m[2] * x + m[6] * y + m[10] * z + m[14] * w;
		output[3] = m[3] * x + m[7] * y + m[11] * z + m[15] * w;
		return output;
	}

	/**
	 * **
	 * **
	 */
	private final void f()
	{
	}

	/**
	 * **
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
		float iw = -qx * x - qy * y - qz * z;
		output[0] = ix * qw + iw * -qx + iy * -qz - iz * -qy;
		output[1] = iy * qw + iw * -qy + iz * -qx - ix * -qz;
		output[2] = iz * qw + iw * -qz + ix * -qy - iy * -qx;
		return output;
	}
}
