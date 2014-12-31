// Generated automatically with "cito". Do not edit.
package CitoGlMatrix.lib;

public class Mat3
{

	/**
	 * **
	 */
	public static float[] adjoint(float[] output, float[] a)
	{
		float a00 = a[0];
		float a01 = a[1];
		float a02 = a[2];
		float a10 = a[3];
		float a11 = a[4];
		float a12 = a[5];
		float a20 = a[6];
		float a21 = a[7];
		float a22 = a[8];
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
	public static float[] cloneIt(float[] a)
	{
		float[] output = new float[9];
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
	public static float[] copy(float[] output, float[] a)
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
	public static float[] create()
	{
		float[] output = new float[9];
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
	public static float determinant(float[] a)
	{
		float a00 = a[0];
		float a01 = a[1];
		float a02 = a[2];
		float a10 = a[3];
		float a11 = a[4];
		float a12 = a[5];
		float a20 = a[6];
		float a21 = a[7];
		float a22 = a[8];
		return a00 * (a22 * a11 - a12 * a21) + a01 * (-a22 * a10 + a12 * a20) + a02 * (a21 * a10 - a11 * a20);
	}

	/**
	 * **
	 */
	public static float[] fromMat2d(float[] output, float[] a)
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
	public static float[] fromMat4(float[] output, float[] a)
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
	public static float[] fromQuat(float[] output, float[] q)
	{
		float x = q[0];
		float y = q[1];
		float z = q[2];
		float w = q[3];
		float x2 = x + x;
		float y2 = y + y;
		float z2 = z + z;
		float xx = x * x2;
		float xy = x * y2;
		float xz = x * z2;
		float yy = y * y2;
		float yz = y * z2;
		float zz = z * z2;
		float wx = w * x2;
		float wy = w * y2;
		float wz = w * z2;
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
	public static float[] identity_(float[] output)
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
	public static float[] invert(float[] output, float[] a)
	{
		float a00 = a[0];
		float a01 = a[1];
		float a02 = a[2];
		float a10 = a[3];
		float a11 = a[4];
		float a12 = a[5];
		float a20 = a[6];
		float a21 = a[7];
		float a22 = a[8];
		float b01 = a22 * a11 - a12 * a21;
		float b11 = -a22 * a10 + a12 * a20;
		float b21 = a21 * a10 - a11 * a20;
		float det = a00 * b01 + a01 * b11 + a02 * b21;
		if (det == 0) {
			return null;
		}
		float one = 1;
		det = one / det;
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
	public static float[] mul(float[] output, float[] a, float[] b)
	{
		return Mat3.multiply(output, a, b);
	}

	/**
	 * **
	 */
	public static float[] multiply(float[] output, float[] a, float[] b)
	{
		float a00 = a[0];
		float a01 = a[1];
		float a02 = a[2];
		float a10 = a[3];
		float a11 = a[4];
		float a12 = a[5];
		float a20 = a[6];
		float a21 = a[7];
		float a22 = a[8];
		float b00 = b[0];
		float b01 = b[1];
		float b02 = b[2];
		float b10 = b[3];
		float b11 = b[4];
		float b12 = b[5];
		float b20 = b[6];
		float b21 = b[7];
		float b22 = b[8];
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
	public static float[] normalFromMat4(float[] output, float[] a)
	{
		float a00 = a[0];
		float a01 = a[1];
		float a02 = a[2];
		float a03 = a[3];
		float a10 = a[4];
		float a11 = a[5];
		float a12 = a[6];
		float a13 = a[7];
		float a20 = a[8];
		float a21 = a[9];
		float a22 = a[10];
		float a23 = a[11];
		float a30 = a[12];
		float a31 = a[13];
		float a32 = a[14];
		float a33 = a[15];
		float b00 = a00 * a11 - a01 * a10;
		float b01 = a00 * a12 - a02 * a10;
		float b02 = a00 * a13 - a03 * a10;
		float b03 = a01 * a12 - a02 * a11;
		float b04 = a01 * a13 - a03 * a11;
		float b05 = a02 * a13 - a03 * a12;
		float b06 = a20 * a31 - a21 * a30;
		float b07 = a20 * a32 - a22 * a30;
		float b08 = a20 * a33 - a23 * a30;
		float b09 = a21 * a32 - a22 * a31;
		float b10 = a21 * a33 - a23 * a31;
		float b11 = a22 * a33 - a23 * a32;
		float det = b00 * b11 - b01 * b10 + b02 * b09 + b03 * b08 - b04 * b07 + b05 * b06;
		if (det == 0) {
			return null;
		}
		float one = 1;
		det = one / det;
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
	public static float[] rotate(float[] output, float[] a, float rad)
	{
		float a00 = a[0];
		float a01 = a[1];
		float a02 = a[2];
		float a10 = a[3];
		float a11 = a[4];
		float a12 = a[5];
		float a20 = a[6];
		float a21 = a[7];
		float a22 = a[8];
		float s = Platform.sin(rad);
		float c = Platform.cos(rad);
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
	public static float[] scale(float[] output, float[] a, float[] v)
	{
		float x = v[0];
		float y = v[1];
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
	public static float[] translate(float[] output, float[] a, float[] v)
	{
		float a00 = a[0];
		float a01 = a[1];
		float a02 = a[2];
		float a10 = a[3];
		float a11 = a[4];
		float a12 = a[5];
		float a20 = a[6];
		float a21 = a[7];
		float a22 = a[8];
		float x = v[0];
		float y = v[1];
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
	public static float[] transpose(float[] output, float[] a)
	{
		if (output == a) {
			float a01 = a[1];
			float a02 = a[2];
			float a12 = a[5];
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
	private final void f()
	{
	}
}
