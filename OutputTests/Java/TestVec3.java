// Generated automatically with "cito". Do not edit.
package CitoGlMatrix.lib;

public class TestVec3
{

	private void add()
	{
		this.addWithASeparateOutputVector();
		this.addWhenVecAIsTheOutputVector();
		this.addWhenVecBIsTheOutputVector();
	}

	private void addWhenVecAIsTheOutputVector()
	{
	}

	private void addWhenVecBIsTheOutputVector()
	{
	}

	private void addWithASeparateOutputVector()
	{
		float[] result = Vec3.add(this.output, this.vecA, this.vecB);
		this.assertArrayEqual(this.output, this.arr3(5, 7, 9), 3, "Add should place values into out");
		this.assertArrayEqual(result, this.output, 3, "Add should return out");
		this.assertArrayEqual(this.vecA, this.arr3(1, 2, 3), 3, "Add should not modify vecA");
		this.assertArrayEqual(this.vecB, this.arr3(4, 5, 6), 3, "Add should not modify vecB");
	}

	private float[] arr16(int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9, int p_10, int p_11, int p_12, int p_13, int p_14, int p_15, int p_16)
	{
		return this.citoassert.arr16(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9, p_10, p_11, p_12, p_13, p_14, p_15, p_16);
	}

	private float[] arr3(float p, float p_2, float p_3)
	{
		return this.citoassert.arr3(p, p_2, p_3);
	}

	private float[] arr9(int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9)
	{
		return this.citoassert.arr9(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9);
	}

	private void assertArrayEqual(float[] actual, float[] expected, int length, String msg)
	{
		this.citoassert.assertArrayEqual(actual, expected, length, msg);
	}

	private void assertCloseTo(float actual, float expected, String msg)
	{
		this.citoassert.assertCloseTo(actual, expected, msg);
	}

	private void assertEqual(float actual, float expected, String msg)
	{
		this.citoassert.assertEqual(actual, expected, msg);
	}

	private void cloneIt()
	{
		float[] result = Vec3.cloneIt(this.vecA);
		this.assertArrayEqual(result, this.vecA, 3, "Clone should return a 3 element array initialized to the values in vecA");
	}

	private void copy()
	{
		float[] result = Vec3.copy(this.output, this.vecA);
		this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "Copy should place values into out");
		this.assertArrayEqual(result, this.output, 3, "Copy should return output");
	}

	private void create()
	{
		float[] result = Vec3.create();
		this.assertArrayEqual(result, this.arr3(0, 0, 0), 3, "Create should return a 3 element array initialized to 0s");
	}

	private void cross()
	{
		this.crossWithASeparateOutputVector();
		this.crossWhenVecAIsTheOutputVector();
		this.crossWhenVecBIsTheOutputVector();
	}

	private void crossWhenVecAIsTheOutputVector()
	{
	}

	private void crossWhenVecBIsTheOutputVector()
	{
	}

	private void crossWithASeparateOutputVector()
	{
	}

	private void distance()
	{
		float result = Vec3.distance(this.vecA, this.vecB);
		float r = 5196152;
		r /= 1000000;
		this.assertCloseTo(result, r, "Distance should return the distance");
	}

	private void divide()
	{
		this.divideWithASeparateOutputVector();
		this.divideWhenVecAIsTheOutputVector();
		this.divideWhenVecBIsTheOutputVector();
	}

	private void divideWhenVecAIsTheOutputVector()
	{
	}

	private void divideWhenVecBIsTheOutputVector()
	{
	}

	private void divideWithASeparateOutputVector()
	{
	}

	private void dot()
	{
		float result = Vec3.dot(this.vecA, this.vecB);
		this.assertEqual(result, 32, "Dot should return the dot product");
		this.assertArrayEqual(this.vecA, this.arr3(1, 2, 3), 3, "Dot should not modify vecA");
		this.assertArrayEqual(this.vecB, this.arr3(4, 5, 6), 3, "Dot should not modify vecB");
	}

	private void forEachDo()
	{
	}

	private void fromValues()
	{
		float[] result = Vec3.fromValues(1, 2, 3);
		this.assertArrayEqual(result, this.arr3(1, 2, 3), 3, "FromValues should return a 3 element array initialized to the values passed");
	}

	private void length_()
	{
		float result = Vec3.length_(this.vecA);
		float r = 3741657;
		r /= 1000000;
		this.assertCloseTo(result, r, "Length should return the length");
	}

	private void lerp()
	{
		this.lerpWithASeparateOutputVector();
		this.lerpWhenVecAIsTheOutputVector();
		this.lerpWhenVecBIsTheOutputVector();
	}

	private void lerpWhenVecAIsTheOutputVector()
	{
	}

	private void lerpWhenVecBIsTheOutputVector()
	{
	}

	private void lerpWithASeparateOutputVector()
	{
	}

	private void max()
	{
		this.maxWithASeparateOutputVector();
		this.maxWhenVecAIsTheOutputVector();
		this.maxWhenVecBIsTheOutputVector();
	}

	private void maxWhenVecAIsTheOutputVector()
	{
	}

	private void maxWhenVecBIsTheOutputVector()
	{
	}

	private void maxWithASeparateOutputVector()
	{
	}

	private void min()
	{
		this.minWithASeparateOutputVector();
		this.minWhenVecAIsTheOutputVector();
		this.minWhenVecBIsTheOutputVector();
	}

	private void minWhenVecAIsTheOutputVector()
	{
	}

	private void minWhenVecBIsTheOutputVector()
	{
	}

	private void minWithASeparateOutputVector()
	{
	}

	private void multiply()
	{
		this.multiplyWithASeparateOutputVector();
		this.multiplyWhenVecAIsTheOutputVector();
		this.multiplyWhenVecBIsTheOutputVector();
	}

	private void multiplyWhenVecAIsTheOutputVector()
	{
	}

	private void multiplyWhenVecBIsTheOutputVector()
	{
	}

	private void multiplyWithASeparateOutputVector()
	{
	}

	private void negate()
	{
		this.negateWithASeparateOutputVector();
		this.negateWhenVecAIsTheOutputVector();
	}

	private void negateWhenVecAIsTheOutputVector()
	{
		float[] result = Vec3.negate(this.vecA, this.vecA);
		this.assertArrayEqual(this.vecA, this.arr3(-1, -2, -3), 3, "NegateWhenVecAIsTheOutputVector should place values into vecA");
		this.assertArrayEqual(result, this.vecA, 3, "NegateWhenVecAIsTheOutputVector should return vecA");
	}

	private void negateWithASeparateOutputVector()
	{
		float[] result = Vec3.negate(this.output, this.vecA);
		this.assertArrayEqual(this.output, this.arr3(-1, -2, -3), 3, "NegateWithASeparateOutputVector should place values into out");
		this.assertArrayEqual(result, this.output, 3, "NegateWithASeparateOutputVector should should return out");
		this.assertArrayEqual(this.vecA, this.arr3(1, 2, 3), 3, "NegateWithASeparateOutputVector should not modify vecA");
	}

	private void normalize()
	{
		this.normalizeWithASeparateOutputVector();
		this.normalizeWhenVecAIsTheOutputVector();
	}

	private void normalizeWhenVecAIsTheOutputVector()
	{
		float[] vecA1 = this.arr3(5, 0, 0);
		float[] result = Vec3.normalize(this.vecA, this.vecA);
		this.assertArrayEqual(this.vecA, this.arr3(1, 0, 0), 3, "NormalizeWhenVecAIsTheOutputVector should place values into vecA");
		this.assertArrayEqual(result, this.vecA, 3, "NormalizeWhenVecAIsTheOutputVector should return vecA");
	}

	private void normalizeWithASeparateOutputVector()
	{
		this.vecA = this.arr3(5, 0, 0);
		float[] result = Vec3.normalize(this.output, this.vecA);
		this.assertArrayEqual(this.output, this.arr3(1, 0, 0), 3, "NormalizeWithASeparateOutputVector should place values into out");
		this.assertArrayEqual(result, this.output, 3, "NormalizeWithASeparateOutputVector should return out");
		this.assertArrayEqual(this.vecA, this.arr3(5, 0, 0), 3, "NormalizeWithASeparateOutputVector should not modify vecA");
	}

	private void resetTests()
	{
		this.vecA = this.arr3(1, 2, 3);
		this.vecB = this.arr3(4, 5, 6);
		this.output = this.arr3(0, 0, 0);
	}

	private void scale()
	{
		this.scaleWithASeparateOutputVector();
		this.scaleWhenVecAIsTheOutputVector();
	}

	private void scaleAndAdd()
	{
		this.scaleAndAddWithASeparateOutputVector();
		this.scaleAndAddWhenVecAIsTheOutputVector();
		this.scaleAndAddWhenVecBIsTheOutputVector();
	}

	private void scaleAndAddWhenVecAIsTheOutputVector()
	{
	}

	private void scaleAndAddWhenVecBIsTheOutputVector()
	{
	}

	private void scaleAndAddWithASeparateOutputVector()
	{
	}

	private void scaleWhenVecAIsTheOutputVector()
	{
	}

	private void scaleWithASeparateOutputVector()
	{
	}

	private void set()
	{
		float[] result = Vec3.set(this.output, 1, 2, 3);
		this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "Set should place values into output");
		this.assertArrayEqual(result, this.output, 3, "Set should return output");
	}

	private void squaredDistance()
	{
		float result = Vec3.squaredDistance(this.vecA, this.vecB);
		this.assertEqual(result, 27, "SquaredDistance should return the squared distance");
	}

	private void squaredLength()
	{
		float result = Vec3.squaredLength(this.vecA);
		this.assertEqual(result, 14, "SquaredLength should return the squared length");
	}

	private void str()
	{
	}

	private void subtract()
	{
		this.subtractShouldHaveAnAliasCalledSub();
		this.subtractWithASeparateOutputVector();
		this.subtractWhenVecAIsTheOutputVector();
		this.subtractWhenVecBIsTheOutputVector();
	}

	private void subtractShouldHaveAnAliasCalledSub()
	{
	}

	private void subtractWhenVecAIsTheOutputVector()
	{
	}

	private void subtractWhenVecBIsTheOutputVector()
	{
	}

	private void subtractWithASeparateOutputVector()
	{
	}

	public final void test()
	{
		this.citoassert = new CitoAssert();
		this.resetTests();
		this.transformMat4();
		this.resetTests();
		this.create();
		this.resetTests();
		this.cloneIt();
		this.resetTests();
		this.fromValues();
		this.resetTests();
		this.copy();
		this.resetTests();
		this.set();
		this.resetTests();
		this.add();
		this.resetTests();
		this.subtract();
		this.resetTests();
		this.multiply();
		this.resetTests();
		this.divide();
		this.resetTests();
		this.min();
		this.resetTests();
		this.max();
		this.resetTests();
		this.scale();
		this.resetTests();
		this.scaleAndAdd();
		this.resetTests();
		this.distance();
		this.resetTests();
		this.squaredDistance();
		this.resetTests();
		this.length_();
		this.resetTests();
		this.squaredLength();
		this.resetTests();
		this.negate();
		this.resetTests();
		this.normalize();
		this.resetTests();
		this.dot();
		this.resetTests();
		this.cross();
		this.resetTests();
		this.lerp();
		this.resetTests();
		this.forEachDo();
		this.resetTests();
		this.str();
		this.resetTests();
	}

	private void transformMat3With90DegAboutX()
	{
		float[] result = Vec3.transformMat3(this.output, this.arr3(0, 1, 0), this.arr9(1, 0, 0, 0, 0, 1, 0, -1, 0));
		this.assertArrayEqual(this.output, this.arr3(0, 0, 1), 3, "TransformMat3With90DegAboutX should produce correct output");
	}

	private void transformMat3With90DegAboutY()
	{
		float[] result = Vec3.transformMat3(this.output, this.arr3(1, 0, 0), this.arr9(0, 0, -1, 0, 1, 0, 1, 0, 0));
		this.assertArrayEqual(this.output, this.arr3(0, 0, -1), 3, "TransformMat3With90DegAboutU should produce correct output");
	}

	private void transformMat3With90DegAboutZ()
	{
		float[] result = Vec3.transformMat3(this.output, this.arr3(1, 0, 0), this.arr9(0, 1, 0, -1, 0, 0, 0, 0, 1));
		this.assertArrayEqual(this.output, this.arr3(0, 1, 0), 3, "TransformMat3With90DegAboutZ should produce correct output");
	}

	private void transformMat3WithALookAtNormalMatrix()
	{
		float[] matr = Mat4.lookAt(Mat4.create(), this.arr3(5, 6, 7), this.arr3(2, 6, 7), this.arr3(0, 1, 0));
		float[] n = Mat3.create();
		matr = Mat3.transpose(n, Mat3.invert(n, Mat3.fromMat4(n, matr)));
		float[] result = Vec3.transformMat3(this.output, this.arr3(1, 0, 0), matr);
		this.assertArrayEqual(this.output, this.arr3(0, 0, 1), 3, "TransformMat3WithALookAtNormalMatrix should rotate the input");
		this.assertArrayEqual(result, this.output, 3, "TransformMat3WithALookAtNormalMatrix should return output");
	}

	private void transformMat3WithAnIdentity()
	{
		float[] matr = this.arr9(1, 0, 0, 0, 1, 0, 0, 0, 1);
		float[] result = Vec3.transformMat3(this.output, this.vecA, matr);
		this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "TransformMat3WithAnIdentity should produce the input");
		this.assertArrayEqual(result, this.output, 3, "TransformMat3WithAnIdentity should return output");
	}

	private void transformMat4()
	{
		this.transformMat4WithAnIdentity();
		this.transformMat4WithALookAt();
		this.transformMat3WithAnIdentity();
		this.transformMat3With90DegAboutX();
		this.transformMat3With90DegAboutY();
		this.transformMat3With90DegAboutZ();
		this.transformMat3WithALookAtNormalMatrix();
	}

	private void transformMat4WithALookAt()
	{
		float[] matr = Mat4.lookAt(Mat4.create(), this.arr3(5, 6, 7), this.arr3(2, 6, 7), this.arr3(0, 1, 0));
		float[] result = Vec3.transformMat4(this.output, this.vecA, matr);
		this.assertArrayEqual(this.output, this.arr3(4, -4, -4), 3, "TransformMat4WithALookAt should rotate and translate the input");
		this.assertArrayEqual(result, this.output, 3, "TransformMat4WithALookAt should return out");
	}

	private void transformMat4WithAnIdentity()
	{
		float[] matr = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		float[] result = Vec3.transformMat4(this.output, this.vecA, matr);
		this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "TransformMat4WithAnIdentity should produce the input");
		this.assertArrayEqual(result, this.output, 3, "TransformMat4WithAnIdentity should return output");
	}
	private CitoAssert citoassert;
	private float[] output;
	private float[] vecA;
	private float[] vecB;
}
