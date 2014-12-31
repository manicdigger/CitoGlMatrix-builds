// Generated automatically with "cito". Do not edit.
package CitoGlMatrix.lib;

public class CitoAssert
{
	public CitoAssert()
	{
		this.errors = new String[1024];
		this.errorsCount = 0;
		this.testI = 0;
	}

	public final float[] arr16(int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9, int p_10, int p_11, int p_12, int p_13, int p_14, int p_15, int p_16)
	{
		float[] arr = new float[16];
		arr[0] = p;
		arr[1] = p_2;
		arr[2] = p_3;
		arr[3] = p_4;
		arr[4] = p_5;
		arr[5] = p_6;
		arr[6] = p_7;
		arr[7] = p_8;
		arr[8] = p_9;
		arr[9] = p_10;
		arr[10] = p_11;
		arr[11] = p_12;
		arr[12] = p_13;
		arr[13] = p_14;
		arr[14] = p_15;
		arr[15] = p_16;
		return arr;
	}

	public final float[] arr3(float p, float p_2, float p_3)
	{
		float[] arr = new float[3];
		arr[0] = p;
		arr[1] = p_2;
		arr[2] = p_3;
		return arr;
	}

	public final float[] arr9(int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9)
	{
		float[] arr = new float[16];
		arr[0] = p;
		arr[1] = p_2;
		arr[2] = p_3;
		arr[3] = p_4;
		arr[4] = p_5;
		arr[5] = p_6;
		arr[6] = p_7;
		arr[7] = p_8;
		arr[8] = p_9;
		return arr;
	}

	public final void assertArrayEqual(float[] actual, float[] expected, int length, String msg)
	{
		Platform.writeString("Test ");
		Platform.writeInt(this.testI);
		boolean isequal = true;
		for (int i = 0; i < length; i++) {
			if (actual[i] != expected[i]) {
				isequal = false;
			}
		}
		if (!isequal) {
			this.errors[this.errorsCount++] = msg;
			Platform.writeString(" error: ");
			Platform.writeString(msg);
		}
		else {
			Platform.writeString(" ok");
		}
		Platform.writeString("\n");
		this.testI++;
	}

	public final void assertCloseTo(float actual, float expected, String msg)
	{
		Platform.writeString("Test ");
		Platform.writeInt(this.testI);
		if (GlMatrixMath.abs(actual - expected) > GlMatrixMath.gLMAT_EPSILON()) {
			this.errors[this.errorsCount++] = msg;
			Platform.writeString(" error: ");
			Platform.writeString(msg);
		}
		else {
			Platform.writeString(" ok");
		}
		Platform.writeString("\n");
		this.testI++;
	}

	public final void assertEqual(float actual, float expected, String msg)
	{
		Platform.writeString("Test ");
		Platform.writeInt(this.testI);
		if (actual != expected) {
			this.errors[this.errorsCount++] = msg;
			Platform.writeString(" error: ");
			Platform.writeString(msg);
		}
		else {
			Platform.writeString(" ok");
		}
		Platform.writeString("\n");
		this.testI++;
	}
	private String[] errors;
	private int errorsCount;
	private int testI;
}
