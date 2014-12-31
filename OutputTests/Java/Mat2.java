// Generated automatically with "cito". Do not edit.
package CitoGlMatrix.lib;

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
	public static float[] adjoint(float[] output, float[] a)
	{
		float a0 = a[0];
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
	 * Copy the values from one mat2 to another
	 * Returns output
	 * @param output the receiving matrix
	 * @param a the source matrix
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
	 * Creates a new identity mat2
	 * Returns a new 2x2 matrix
	 */
	public static float[] create()
	{
		float[] output = new float[4];
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
	public static float determinant(float[] a)
	{
		return a[0] * a[3] - a[2] * a[1];
	}

	/**
	 * Set a mat2 to the identity matrix
	 * Returns output
	 * @param output the receiving matrix
	 */
	public static float[] identity_(float[] output)
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
	public static float[] invert(float[] output, float[] a)
	{
		float a0 = a[0];
		float a1 = a[1];
		float a2 = a[2];
		float a3 = a[3];
		float det = a0 * a3 - a2 * a1;
		if (det == 0) {
			return null;
		}
		float one = 1;
		det = one / det;
		output[0] = a3 * det;
		output[1] = -a1 * det;
		output[2] = -a2 * det;
		output[3] = a0 * det;
		return output;
	}

	/**
	 * Alias for {@link mat2.multiply}
	 */
	public static float[] mul(float[] output, float[] a, float[] b)
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
	public static float[] multiply(float[] output, float[] a, float[] b)
	{
		float a0 = a[0];
		float a1 = a[1];
		float a2 = a[2];
		float a3 = a[3];
		float b0 = b[0];
		float b1 = b[1];
		float b2 = b[2];
		float b3 = b[3];
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
	public static float[] rotate(float[] output, float[] a, float rad)
	{
		float a0 = a[0];
		float a1 = a[1];
		float a2 = a[2];
		float a3 = a[3];
		float s = Platform.sin(rad);
		float c = Platform.cos(rad);
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
	public static float[] scale(float[] output, float[] a, float[] v)
	{
		float a0 = a[0];
		float a1 = a[1];
		float a2 = a[2];
		float a3 = a[3];
		float v0 = v[0];
		float v1 = v[1];
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
	public static float[] transpose(float[] output, float[] a)
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
	private final void f()
	{
	}
}
