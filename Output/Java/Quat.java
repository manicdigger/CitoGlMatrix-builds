// Generated automatically with "cito". Do not edit.
package CitoGlMatrix.lib;

public class Quat
{

	/**
	 * **
	 */
	public static float[] add(float[] output, float[] a, float[] b)
	{
		return Vec4.add(output, a, b);
	}

	/**
	 * **
	 */
	public static float[] calculateW(float[] output, float[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		output[0] = x;
		output[1] = y;
		output[2] = z;
		float one = 1;
		output[3] = -Platform.sqrt(GlMatrixMath.abs(one - x * x - y * y - z * z));
		return output;
	}

	/**
	 * **
	 */
	public static float[] cloneIt(float[] a)
	{
		return Vec4.cloneIt(a);
	}

	/**
	 * **
	 */
	public final float[] conjugate(float[] output, float[] a)
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
	public static float[] copy(float[] output, float[] a)
	{
		return Vec4.copy(output, a);
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
		output[3] = 1;
		return output;
	}

	/**
	 * **
	 */
	public static float dot(float[] a, float[] b)
	{
		return Vec4.dot(a, b);
	}

	/**
	 * **
	 */
	public static float[] fromMat3(float[] output, float[] m)
	{
		float fTrace = m[0] + m[4] + m[8];
		float fRoot;
		float zero = 0;
		float one = 1;
		float half = one / 2;
		if (fTrace > zero) {
			fRoot = Platform.sqrt(fTrace + one);
			output[3] = half * fRoot;
			fRoot = half / fRoot;
			output[0] = (m[7] - m[5]) * fRoot;
			output[1] = (m[2] - m[6]) * fRoot;
			output[2] = (m[3] - m[1]) * fRoot;
		}
		else {
			int i = 0;
			if (m[4] > m[0])
				i = 1;
			if (m[8] > m[i * 3 + i])
				i = 2;
			int j = (i + 1) % 3;
			int k = (i + 2) % 3;
			fRoot = Platform.sqrt(m[i * 3 + i] - m[j * 3 + j] - m[k * 3 + k] + one);
			output[i] = half * fRoot;
			fRoot = half / fRoot;
			output[3] = (m[k * 3 + j] - m[j * 3 + k]) * fRoot;
			output[j] = (m[j * 3 + i] + m[i * 3 + j]) * fRoot;
			output[k] = (m[k * 3 + i] + m[i * 3 + k]) * fRoot;
		}
		return output;
	}

	/**
	 * **
	 */
	public static float[] fromValues(float x, float y, float z, float w)
	{
		return Vec4.fromValues(x, y, z, w);
	}

	/**
	 * **
	 */
	public static float[] identity_(float[] output)
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
	public final float[] invert(float[] output, float[] a)
	{
		float a0 = a[0];
		float a1 = a[1];
		float a2 = a[2];
		float a3 = a[3];
		float dot = a0 * a0 + a1 * a1 + a2 * a2 + a3 * a3;
		float one = 1;
		float invDot = dot != 0 ? one / dot : 0;
		output[0] = -a0 * invDot;
		output[1] = -a1 * invDot;
		output[2] = -a2 * invDot;
		output[3] = a3 * invDot;
		return output;
	}

	/**
	 * **
	 */
	public static float len(float[] a)
	{
		return Quat.length_(a);
	}

	/**
	 * **
	 */
	public static float length_(float[] a)
	{
		return Vec4.length_(a);
	}

	/**
	 * **
	 */
	public static float[] lerp(float[] output, float[] a, float[] b, float t)
	{
		return Vec4.lerp(output, a, b, t);
	}

	/**
	 * **
	 */
	public static float[] mul(float[] output, float[] a, float[] b)
	{
		return Quat.multiply(output, a, b);
	}

	/**
	 * **
	 */
	public static float[] multiply(float[] output, float[] a, float[] b)
	{
		float ax = a[0];
		float ay = a[1];
		float az = a[2];
		float aw = a[3];
		float bx = b[0];
		float by = b[1];
		float bz = b[2];
		float bw = b[3];
		output[0] = ax * bw + aw * bx + ay * bz - az * by;
		output[1] = ay * bw + aw * by + az * bx - ax * bz;
		output[2] = az * bw + aw * bz + ax * by - ay * bx;
		output[3] = aw * bw - ax * bx - ay * by - az * bz;
		return output;
	}

	/**
	 * **
	 */
	public static float[] normalize(float[] output, float[] a)
	{
		return Vec4.normalize(output, a);
	}

	/**
	 * **
	 */
	public static float[] rotateX(float[] output, float[] a, float rad)
	{
		rad /= 2;
		float ax = a[0];
		float ay = a[1];
		float az = a[2];
		float aw = a[3];
		float bx = Platform.sin(rad);
		float bw = Platform.cos(rad);
		output[0] = ax * bw + aw * bx;
		output[1] = ay * bw + az * bx;
		output[2] = az * bw - ay * bx;
		output[3] = aw * bw - ax * bx;
		return output;
	}

	/**
	 * **
	 */
	public static float[] rotateY(float[] output, float[] a, float rad)
	{
		rad /= 2;
		float ax = a[0];
		float ay = a[1];
		float az = a[2];
		float aw = a[3];
		float by = Platform.sin(rad);
		float bw = Platform.cos(rad);
		output[0] = ax * bw - az * by;
		output[1] = ay * bw + aw * by;
		output[2] = az * bw + ax * by;
		output[3] = aw * bw - ay * by;
		return output;
	}

	/**
	 * **
	 */
	public static float[] rotateZ(float[] output, float[] a, float rad)
	{
		rad /= 2;
		float ax = a[0];
		float ay = a[1];
		float az = a[2];
		float aw = a[3];
		float bz = Platform.sin(rad);
		float bw = Platform.cos(rad);
		output[0] = ax * bw + ay * bz;
		output[1] = ay * bw - ax * bz;
		output[2] = az * bw + aw * bz;
		output[3] = aw * bw - az * bz;
		return output;
	}

	/**
	 * **
	 */
	public static float[] rotationTo(float[] output, float[] a, float[] b)
	{
		float[] tmpvec3 = Vec3.create();
		float[] xUnitVec3 = Vec3.fromValues(1, 0, 0);
		float[] yUnitVec3 = Vec3.fromValues(0, 1, 0);
		float dot = Vec3.dot(a, b);
		float nines = 999999;
		nines /= 1000000;
		float epsilon = 1;
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
	public static float[] scale(float[] output, float[] a, float b)
	{
		return Vec4.scale(output, a, b);
	}

	/**
	 * **
	 */
	public static float[] set(float[] output, float x, float y, float z, float w)
	{
		return Vec4.set(output, x, y, z, w);
	}

	/**
	 * **
	 */
	public static float[] setAxes(float[] output, float[] view, float[] right, float[] up)
	{
		float[] matr = Mat3.create();
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
	public static float[] setAxisAngle(float[] output, float[] axis, float rad)
	{
		rad = rad / 2;
		float s = Platform.sin(rad);
		output[0] = s * axis[0];
		output[1] = s * axis[1];
		output[2] = s * axis[2];
		output[3] = Platform.cos(rad);
		return output;
	}

	/**
	 * **
	 */
	public static float[] slerp(float[] output, float[] a, float[] b, float t)
	{
		float ax = a[0];
		float ay = a[1];
		float az = a[2];
		float aw = a[3];
		float bx = b[0];
		float by = b[1];
		float bz = b[2];
		float bw = b[3];
		float omega;
		float cosom;
		float sinom;
		float scale0;
		float scale1;
		cosom = ax * bx + ay * by + az * bz + aw * bw;
		if (cosom < 0) {
			cosom = -cosom;
			bx = -bx;
			by = -by;
			bz = -bz;
			bw = -bw;
		}
		float one = 1;
		float epsilon = one / 1000000;
		if (one - cosom > epsilon) {
			omega = Platform.acos(cosom);
			sinom = Platform.sin(omega);
			scale0 = Platform.sin((one - t) * omega) / sinom;
			scale1 = Platform.sin(t * omega) / sinom;
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
	public static float sqrLen(float[] a)
	{
		return Quat.squaredLength(a);
	}

	/**
	 * **
	 */
	public static float squaredLength(float[] a)
	{
		return Vec4.squaredLength(a);
	}

	/**
	 * **
	 */
	private final void f()
	{
	}
}
