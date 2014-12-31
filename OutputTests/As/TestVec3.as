// Generated automatically with "cito". Do not edit.
package CitoGlMatrix
{
	import flash.utils.ByteArray;

	public class TestVec3
	{

		private function add() : void
		{
			this.addWithASeparateOutputVector();
			this.addWhenVecAIsTheOutputVector();
			this.addWhenVecBIsTheOutputVector();
		}

		private function addWhenVecAIsTheOutputVector() : void
		{
		}

		private function addWhenVecBIsTheOutputVector() : void
		{
		}

		private function addWithASeparateOutputVector() : void
		{
			var result : Array = Vec3.add(this.output, this.vecA, this.vecB);
			this.assertArrayEqual(this.output, this.arr3(5, 7, 9), 3, "Add should place values into out");
			this.assertArrayEqual(result, this.output, 3, "Add should return out");
			this.assertArrayEqual(this.vecA, this.arr3(1, 2, 3), 3, "Add should not modify vecA");
			this.assertArrayEqual(this.vecB, this.arr3(4, 5, 6), 3, "Add should not modify vecB");
		}

		private function arr16(p : int, p_2 : int, p_3 : int, p_4 : int, p_5 : int, p_6 : int, p_7 : int, p_8 : int, p_9 : int, p_10 : int, p_11 : int, p_12 : int, p_13 : int, p_14 : int, p_15 : int, p_16 : int) : Array
		{
			return this.citoassert.arr16(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9, p_10, p_11, p_12, p_13, p_14, p_15, p_16);
		}

		private function arr3(p : Number, p_2 : Number, p_3 : Number) : Array
		{
			return this.citoassert.arr3(p, p_2, p_3);
		}

		private function arr9(p : int, p_2 : int, p_3 : int, p_4 : int, p_5 : int, p_6 : int, p_7 : int, p_8 : int, p_9 : int) : Array
		{
			return this.citoassert.arr9(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9);
		}

		private function assertArrayEqual(actual : Array, expected : Array, length : int, msg : String) : void
		{
			this.citoassert.assertArrayEqual(actual, expected, length, msg);
		}

		private function assertCloseTo(actual : Number, expected : Number, msg : String) : void
		{
			this.citoassert.assertCloseTo(actual, expected, msg);
		}

		private function assertEqual(actual : Number, expected : Number, msg : String) : void
		{
			this.citoassert.assertEqual(actual, expected, msg);
		}

		private function cloneIt() : void
		{
			var result : Array = Vec3.cloneIt(this.vecA);
			this.assertArrayEqual(result, this.vecA, 3, "Clone should return a 3 element array initialized to the values in vecA");
		}

		private function copy() : void
		{
			var result : Array = Vec3.copy(this.output, this.vecA);
			this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "Copy should place values into out");
			this.assertArrayEqual(result, this.output, 3, "Copy should return output");
		}

		private function create() : void
		{
			var result : Array = Vec3.create();
			this.assertArrayEqual(result, this.arr3(0, 0, 0), 3, "Create should return a 3 element array initialized to 0s");
		}

		private function cross() : void
		{
			this.crossWithASeparateOutputVector();
			this.crossWhenVecAIsTheOutputVector();
			this.crossWhenVecBIsTheOutputVector();
		}

		private function crossWhenVecAIsTheOutputVector() : void
		{
		}

		private function crossWhenVecBIsTheOutputVector() : void
		{
		}

		private function crossWithASeparateOutputVector() : void
		{
		}

		private function distance() : void
		{
			var result : Number = Vec3.distance(this.vecA, this.vecB);
			var r : Number = 5196152;
			r /= 1000000;
			this.assertCloseTo(result, r, "Distance should return the distance");
		}

		private function divide() : void
		{
			this.divideWithASeparateOutputVector();
			this.divideWhenVecAIsTheOutputVector();
			this.divideWhenVecBIsTheOutputVector();
		}

		private function divideWhenVecAIsTheOutputVector() : void
		{
		}

		private function divideWhenVecBIsTheOutputVector() : void
		{
		}

		private function divideWithASeparateOutputVector() : void
		{
		}

		private function dot() : void
		{
			var result : Number = Vec3.dot(this.vecA, this.vecB);
			this.assertEqual(result, 32, "Dot should return the dot product");
			this.assertArrayEqual(this.vecA, this.arr3(1, 2, 3), 3, "Dot should not modify vecA");
			this.assertArrayEqual(this.vecB, this.arr3(4, 5, 6), 3, "Dot should not modify vecB");
		}

		private function forEachDo() : void
		{
		}

		private function fromValues() : void
		{
			var result : Array = Vec3.fromValues(1, 2, 3);
			this.assertArrayEqual(result, this.arr3(1, 2, 3), 3, "FromValues should return a 3 element array initialized to the values passed");
		}

		private function length_() : void
		{
			var result : Number = Vec3.length_(this.vecA);
			var r : Number = 3741657;
			r /= 1000000;
			this.assertCloseTo(result, r, "Length should return the length");
		}

		private function lerp() : void
		{
			this.lerpWithASeparateOutputVector();
			this.lerpWhenVecAIsTheOutputVector();
			this.lerpWhenVecBIsTheOutputVector();
		}

		private function lerpWhenVecAIsTheOutputVector() : void
		{
		}

		private function lerpWhenVecBIsTheOutputVector() : void
		{
		}

		private function lerpWithASeparateOutputVector() : void
		{
		}

		private function max() : void
		{
			this.maxWithASeparateOutputVector();
			this.maxWhenVecAIsTheOutputVector();
			this.maxWhenVecBIsTheOutputVector();
		}

		private function maxWhenVecAIsTheOutputVector() : void
		{
		}

		private function maxWhenVecBIsTheOutputVector() : void
		{
		}

		private function maxWithASeparateOutputVector() : void
		{
		}

		private function min() : void
		{
			this.minWithASeparateOutputVector();
			this.minWhenVecAIsTheOutputVector();
			this.minWhenVecBIsTheOutputVector();
		}

		private function minWhenVecAIsTheOutputVector() : void
		{
		}

		private function minWhenVecBIsTheOutputVector() : void
		{
		}

		private function minWithASeparateOutputVector() : void
		{
		}

		private function multiply() : void
		{
			this.multiplyWithASeparateOutputVector();
			this.multiplyWhenVecAIsTheOutputVector();
			this.multiplyWhenVecBIsTheOutputVector();
		}

		private function multiplyWhenVecAIsTheOutputVector() : void
		{
		}

		private function multiplyWhenVecBIsTheOutputVector() : void
		{
		}

		private function multiplyWithASeparateOutputVector() : void
		{
		}

		private function negate() : void
		{
			this.negateWithASeparateOutputVector();
			this.negateWhenVecAIsTheOutputVector();
		}

		private function negateWhenVecAIsTheOutputVector() : void
		{
			var result : Array = Vec3.negate(this.vecA, this.vecA);
			this.assertArrayEqual(this.vecA, this.arr3(-1, -2, -3), 3, "NegateWhenVecAIsTheOutputVector should place values into vecA");
			this.assertArrayEqual(result, this.vecA, 3, "NegateWhenVecAIsTheOutputVector should return vecA");
		}

		private function negateWithASeparateOutputVector() : void
		{
			var result : Array = Vec3.negate(this.output, this.vecA);
			this.assertArrayEqual(this.output, this.arr3(-1, -2, -3), 3, "NegateWithASeparateOutputVector should place values into out");
			this.assertArrayEqual(result, this.output, 3, "NegateWithASeparateOutputVector should should return out");
			this.assertArrayEqual(this.vecA, this.arr3(1, 2, 3), 3, "NegateWithASeparateOutputVector should not modify vecA");
		}

		private function normalize() : void
		{
			this.normalizeWithASeparateOutputVector();
			this.normalizeWhenVecAIsTheOutputVector();
		}

		private function normalizeWhenVecAIsTheOutputVector() : void
		{
			var vecA1 : Array = this.arr3(5, 0, 0);
			var result : Array = Vec3.normalize(this.vecA, this.vecA);
			this.assertArrayEqual(this.vecA, this.arr3(1, 0, 0), 3, "NormalizeWhenVecAIsTheOutputVector should place values into vecA");
			this.assertArrayEqual(result, this.vecA, 3, "NormalizeWhenVecAIsTheOutputVector should return vecA");
		}

		private function normalizeWithASeparateOutputVector() : void
		{
			this.vecA = this.arr3(5, 0, 0);
			var result : Array = Vec3.normalize(this.output, this.vecA);
			this.assertArrayEqual(this.output, this.arr3(1, 0, 0), 3, "NormalizeWithASeparateOutputVector should place values into out");
			this.assertArrayEqual(result, this.output, 3, "NormalizeWithASeparateOutputVector should return out");
			this.assertArrayEqual(this.vecA, this.arr3(5, 0, 0), 3, "NormalizeWithASeparateOutputVector should not modify vecA");
		}

		private function resetTests() : void
		{
			this.vecA = this.arr3(1, 2, 3);
			this.vecB = this.arr3(4, 5, 6);
			this.output = this.arr3(0, 0, 0);
		}

		private function scale() : void
		{
			this.scaleWithASeparateOutputVector();
			this.scaleWhenVecAIsTheOutputVector();
		}

		private function scaleAndAdd() : void
		{
			this.scaleAndAddWithASeparateOutputVector();
			this.scaleAndAddWhenVecAIsTheOutputVector();
			this.scaleAndAddWhenVecBIsTheOutputVector();
		}

		private function scaleAndAddWhenVecAIsTheOutputVector() : void
		{
		}

		private function scaleAndAddWhenVecBIsTheOutputVector() : void
		{
		}

		private function scaleAndAddWithASeparateOutputVector() : void
		{
		}

		private function scaleWhenVecAIsTheOutputVector() : void
		{
		}

		private function scaleWithASeparateOutputVector() : void
		{
		}

		private function set() : void
		{
			var result : Array = Vec3.set(this.output, 1, 2, 3);
			this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "Set should place values into output");
			this.assertArrayEqual(result, this.output, 3, "Set should return output");
		}

		private function squaredDistance() : void
		{
			var result : Number = Vec3.squaredDistance(this.vecA, this.vecB);
			this.assertEqual(result, 27, "SquaredDistance should return the squared distance");
		}

		private function squaredLength() : void
		{
			var result : Number = Vec3.squaredLength(this.vecA);
			this.assertEqual(result, 14, "SquaredLength should return the squared length");
		}

		private function str() : void
		{
		}

		private function subtract() : void
		{
			this.subtractShouldHaveAnAliasCalledSub();
			this.subtractWithASeparateOutputVector();
			this.subtractWhenVecAIsTheOutputVector();
			this.subtractWhenVecBIsTheOutputVector();
		}

		private function subtractShouldHaveAnAliasCalledSub() : void
		{
		}

		private function subtractWhenVecAIsTheOutputVector() : void
		{
		}

		private function subtractWhenVecBIsTheOutputVector() : void
		{
		}

		private function subtractWithASeparateOutputVector() : void
		{
		}

		public final function test() : void
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

		private function transformMat3With90DegAboutX() : void
		{
			var result : Array = Vec3.transformMat3(this.output, this.arr3(0, 1, 0), this.arr9(1, 0, 0, 0, 0, 1, 0, -1, 0));
			this.assertArrayEqual(this.output, this.arr3(0, 0, 1), 3, "TransformMat3With90DegAboutX should produce correct output");
		}

		private function transformMat3With90DegAboutY() : void
		{
			var result : Array = Vec3.transformMat3(this.output, this.arr3(1, 0, 0), this.arr9(0, 0, -1, 0, 1, 0, 1, 0, 0));
			this.assertArrayEqual(this.output, this.arr3(0, 0, -1), 3, "TransformMat3With90DegAboutU should produce correct output");
		}

		private function transformMat3With90DegAboutZ() : void
		{
			var result : Array = Vec3.transformMat3(this.output, this.arr3(1, 0, 0), this.arr9(0, 1, 0, -1, 0, 0, 0, 0, 1));
			this.assertArrayEqual(this.output, this.arr3(0, 1, 0), 3, "TransformMat3With90DegAboutZ should produce correct output");
		}

		private function transformMat3WithALookAtNormalMatrix() : void
		{
			var matr : Array = Mat4.lookAt(Mat4.create(), this.arr3(5, 6, 7), this.arr3(2, 6, 7), this.arr3(0, 1, 0));
			var n : Array = Mat3.create();
			matr = Mat3.transpose(n, Mat3.invert(n, Mat3.fromMat4(n, matr)));
			var result : Array = Vec3.transformMat3(this.output, this.arr3(1, 0, 0), matr);
			this.assertArrayEqual(this.output, this.arr3(0, 0, 1), 3, "TransformMat3WithALookAtNormalMatrix should rotate the input");
			this.assertArrayEqual(result, this.output, 3, "TransformMat3WithALookAtNormalMatrix should return output");
		}

		private function transformMat3WithAnIdentity() : void
		{
			var matr : Array = this.arr9(1, 0, 0, 0, 1, 0, 0, 0, 1);
			var result : Array = Vec3.transformMat3(this.output, this.vecA, matr);
			this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "TransformMat3WithAnIdentity should produce the input");
			this.assertArrayEqual(result, this.output, 3, "TransformMat3WithAnIdentity should return output");
		}

		private function transformMat4() : void
		{
			this.transformMat4WithAnIdentity();
			this.transformMat4WithALookAt();
			this.transformMat3WithAnIdentity();
			this.transformMat3With90DegAboutX();
			this.transformMat3With90DegAboutY();
			this.transformMat3With90DegAboutZ();
			this.transformMat3WithALookAtNormalMatrix();
		}

		private function transformMat4WithALookAt() : void
		{
			var matr : Array = Mat4.lookAt(Mat4.create(), this.arr3(5, 6, 7), this.arr3(2, 6, 7), this.arr3(0, 1, 0));
			var result : Array = Vec3.transformMat4(this.output, this.vecA, matr);
			this.assertArrayEqual(this.output, this.arr3(4, -4, -4), 3, "TransformMat4WithALookAt should rotate and translate the input");
			this.assertArrayEqual(result, this.output, 3, "TransformMat4WithALookAt should return out");
		}

		private function transformMat4WithAnIdentity() : void
		{
			var matr : Array = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
			var result : Array = Vec3.transformMat4(this.output, this.vecA, matr);
			this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "TransformMat4WithAnIdentity should produce the input");
			this.assertArrayEqual(result, this.output, 3, "TransformMat4WithAnIdentity should return output");
		}
		private var citoassert : CitoAssert;
		private var output : Array;
		private var vecA : Array;
		private var vecB : Array;
	}
}
