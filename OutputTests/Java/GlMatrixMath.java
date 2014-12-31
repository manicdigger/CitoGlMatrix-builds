// Generated automatically with "cito". Do not edit.
package CitoGlMatrix.lib;

public class GlMatrixMath
{

	public static float abs(float len)
	{
		if (len < 0) {
			return -len;
		}
		else {
			return len;
		}
	}

	public static float gLMAT_EPSILON()
	{
		float one = 1;
		return one / 1000000;
	}

	public static float pI()
	{
		float a = 3141592;
		return a / 1000000;
	}

	public static float max(float a, float b)
	{
		if (a > b) {
			return a;
		}
		else {
			return b;
		}
	}

	public static float min(float a, float b)
	{
		if (a < b) {
			return a;
		}
		else {
			return b;
		}
	}
}
