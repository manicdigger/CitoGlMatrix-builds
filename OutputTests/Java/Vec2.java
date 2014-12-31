// Generated automatically with "cito". Do not edit.
package CitoGlMatrix.lib;

public class Vec2
{

	/**
	 * **
	 */
	public static float[] add(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] + b[0];
		output[1] = a[1] + b[1];
		return output;
	}

	/**
	 * **
	 */
	public static float[] cloneIt(float[] a)
	{
		float[] output = new float[2];
		output[0] = a[0];
		output[1] = a[1];
		return output;
	}

	/**
	 * **
	 */
	public static float[] copy(float[] output, float[] a)
	{
		output[0] = a[0];
		output[1] = a[1];
		return output;
	}

	/**
	 * **
	 */
	public static float[] create()
	{
		float[] output = new float[2];
		output[0] = 0;
		output[1] = 0;
		return output;
	}

	/**
	 * **
	 */
	public static float[] cross(float[] output, float[] a, float[] b)
	{
		float z = a[0] * b[1] - a[1] * b[0];
		output[0] = output[1] = 0;
		output[2] = z;
		return output;
	}

	/**
	 * **
	 */
	public static float dist(float[] a, float[] b)
	{
		return Vec2.distance(a, b);
	}

	/**
	 * **
	 */
	public static float distance(float[] a, float[] b)
	{
		float x = b[0] - a[0];
		float y = b[1] - a[1];
		return Platform.sqrt(x * x + y * y);
	}

	/**
	 * **
	 */
	public static float[] div(float[] output, float[] a, float[] b)
	{
		return Vec2.divide(output, a, b);
	}

	/**
	 * **
	 */
	public static float[] divide(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] / b[0];
		output[1] = a[1] / b[1];
		return output;
	}

	/**
	 * **
	 */
	public static float dot(float[] a, float[] b)
	{
		return a[0] * b[0] + a[1] * b[1];
	}

	/**
	 * **
	 */
	public static float[] fromValues(float x, float y)
	{
		float[] output = new float[2];
		output[0] = x;
		output[1] = y;
		return output;
	}

	/**
	 * **
	 */
	public static float len(float[] a)
	{
		return Vec2.length_(a);
	}

	/**
	 * **
	 */
	public static float length_(float[] a)
	{
		float x = a[0];
		float y = a[1];
		return Platform.sqrt(x * x + y * y);
	}

	/**
	 * **
	 */
	public static float[] lerp(float[] output, float[] a, float[] b, float t)
	{
		float ax = a[0];
		float ay = a[1];
		output[0] = ax + t * (b[0] - ax);
		output[1] = ay + t * (b[1] - ay);
		return output;
	}

	/**
	 * **
	 */
	public static float[] max(float[] output, float[] a, float[] b)
	{
		output[0] = GlMatrixMath.max(a[0], b[0]);
		output[1] = GlMatrixMath.max(a[1], b[1]);
		return output;
	}

	/**
	 * **
	 */
	public static float[] min(float[] output, float[] a, float[] b)
	{
		output[0] = GlMatrixMath.min(a[0], b[0]);
		output[1] = GlMatrixMath.min(a[1], b[1]);
		return output;
	}

	/**
	 * **
	 */
	public static float[] mul(float[] output, float[] a, float[] b)
	{
		return Vec2.multiply(output, a, b);
	}

	/**
	 * **
	 */
	public static float[] multiply(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] * b[0];
		output[1] = a[1] * b[1];
		return output;
	}

	/**
	 * **
	 */
	public static float[] negate(float[] output, float[] a)
	{
		output[0] = -a[0];
		output[1] = -a[1];
		return output;
	}

	/**
	 * **
	 */
	public static float[] normalize(float[] output, float[] a)
	{
		float x = a[0];
		float y = a[1];
		float len = x * x + y * y;
		if (len > 0) {
			len = 1 / Platform.sqrt(len);
			output[0] = a[0] * len;
			output[1] = a[1] * len;
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
		return output;
	}

	/**
	 * **
	 */
	public static float[] scaleAndAdd(float[] output, float[] a, float[] b, float scale)
	{
		output[0] = a[0] + b[0] * scale;
		output[1] = a[1] + b[1] * scale;
		return output;
	}

	/**
	 * **
	 */
	public static float[] set(float[] output, float x, float y)
	{
		output[0] = x;
		output[1] = y;
		return output;
	}

	/**
	 * **
	 */
	public static float sqrDist(float[] a, float[] b)
	{
		return Vec2.squaredDistance(a, b);
	}

	/**
	 * **
	 */
	public static float sqrLen(float[] a)
	{
		return Vec2.squaredLength(a);
	}

	/**
	 * **
	 */
	public static float squaredDistance(float[] a, float[] b)
	{
		float x = b[0] - a[0];
		float y = b[1] - a[1];
		return x * x + y * y;
	}

	/**
	 * **
	 */
	public static float squaredLength(float[] a)
	{
		float x = a[0];
		float y = a[1];
		return x * x + y * y;
	}

	/**
	 * **
	 */
	public static float[] sub(float[] output, float[] a, float[] b)
	{
		return Vec2.subtract(output, a, b);
	}

	/**
	 * **
	 */
	public static float[] subtract(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] - b[0];
		output[1] = a[1] - b[1];
		return output;
	}

	/**
	 * **
	 */
	public static float[] transformMat2(float[] output, float[] a, float[] m)
	{
		float x = a[0];
		float y = a[1];
		output[0] = m[0] * x + m[2] * y;
		output[1] = m[1] * x + m[3] * y;
		return output;
	}

	/**
	 * **
	 */
	public static float[] transformMat2d(float[] output, float[] a, float[] m)
	{
		float x = a[0];
		float y = a[1];
		output[0] = m[0] * x + m[2] * y + m[4];
		output[1] = m[1] * x + m[3] * y + m[5];
		return output;
	}

	/**
	 * **
	 */
	public static float[] transformMat3(float[] output, float[] a, float[] m)
	{
		float x = a[0];
		float y = a[1];
		output[0] = m[0] * x + m[3] * y + m[6];
		output[1] = m[1] * x + m[4] * y + m[7];
		return output;
	}

	/**
	 * **
	 */
	public static float[] transformMat4(float[] output, float[] a, float[] m)
	{
		float x = a[0];
		float y = a[1];
		output[0] = m[0] * x + m[4] * y + m[12];
		output[1] = m[1] * x + m[5] * y + m[13];
		return output;
	}

	/**
	 * **
	 * **
	 */
	private final void f()
	{
	}
}
