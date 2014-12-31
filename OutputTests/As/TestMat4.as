// Generated automatically with "cito". Do not edit.
package CitoGlMatrix
{
	import flash.utils.ByteArray;

	public class TestMat4
	{

		private function adjoint() : void
		{
			this.adjointWithASeparateOutputMatrix();
			this.adjointWhenMatAIsTheOutputMatrix();
		}

		private function adjointWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function adjointWithASeparateOutputMatrix() : void
		{
		}

		private function arr16(p : int, p_2 : int, p_3 : int, p_4 : int, p_5 : int, p_6 : int, p_7 : int, p_8 : int, p_9 : int, p_10 : int, p_11 : int, p_12 : int, p_13 : int, p_14 : int, p_15 : int, p_16 : int) : Array
		{
			var arr : Array = this.citoassert.arr16(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9, p_10, p_11, p_12, p_13, p_14, p_15, p_16);
			arr[0] = arr[0];
			return arr;
		}

		private function arr3(p : Number, p_2 : Number, p_3 : Number) : Array
		{
			var arr : Array = this.citoassert.arr3(p, p_2, p_3);
			arr[0] = arr[0];
			return arr;
		}

		private final function arr9(p : int, p_2 : int, p_3 : int, p_4 : int, p_5 : int, p_6 : int, p_7 : int, p_8 : int, p_9 : int) : Array
		{
			return this.citoassert.arr9(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9);
		}

		private function assertArrayEqual(actual : Array, expected : Array, length : int, msg : String) : void
		{
			this.citoassert.assertArrayEqual(actual, expected, length, msg);
		}

		private final function assertCloseTo(actual : Number, expected : Number, msg : String) : void
		{
			this.citoassert.assertCloseTo(actual, expected, msg);
		}

		private final function assertEqual(actual : Number, expected : Number, msg : String) : void
		{
			this.citoassert.assertEqual(actual, expected, msg);
		}

		private function cloneIt() : void
		{
			var result : Array = Mat4.cloneIt(this.matA);
			this.assertArrayEqual(result, this.matA, 16, "Clone should return a 16 element array initialized to the values in matA");
		}

		private function copy() : void
		{
			var result : Array = Mat4.copy(this.output, this.matA);
			this.assertArrayEqual(this.output, this.matA, 16, "Copy should place values into out");
			this.assertArrayEqual(result, this.output, 16, "Copy should return out");
		}

		private function create() : void
		{
			var result : Array = Mat4.create();
			this.assertArrayEqual(result, this.identity, 16, "Create should return a 16 element array initialized to a 4x4 identity matrix");
		}

		private function determinant() : void
		{
		}

		private function frustum() : void
		{
			var result : Array = Mat4.frustum(this.output, -1, 1, -1, 1, -1, 1);
			this.assertArrayEqual(result, this.arr16(-1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, 1, 0), 16, "Frustum should place values into out");
			this.assertArrayEqual(result, this.output, 16, "Frustum should return out");
		}

		private function identity_() : void
		{
			var result : Array = Mat4.identity_(this.output);
			this.assertArrayEqual(this.output, this.identity, 16, "Copy should place values into out");
			this.assertArrayEqual(result, this.output, 16, "Copy should return out");
		}

		private function invert() : void
		{
			this.invertWithASeparateOutputMatrix();
			this.invertWhenMatAIsTheOutputMatrix();
		}

		private function invertWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function invertWithASeparateOutputMatrix() : void
		{
		}

		private function lookAt() : void
		{
			this.eye = this.arr3(0, 0, 1);
			this.center = this.arr3(0, 0, -1);
			this.up = this.arr3(0, 1, 0);
			this.lookAtLookingDown();
			this.lookAt74();
			this.lookAt3();
		}

		private function lookAt3() : void
		{
		}

		private function lookAt74() : void
		{
			var six : Number = 6;
			Mat4.lookAt(this.output, this.arr3(0, 2, 0), this.arr3(0, six / (10), 0), this.arr3(0, 0, -1));
			var result : Array = Vec3.transformMat4(Vec3.create(), this.arr3(0, 2, -1), this.output);
			this.assertArrayEqual(result, this.arr3(0, 1, 0), 3, "LookAt74 should transform a point 'above' into local +Y");
			result = Vec3.transformMat4(Vec3.create(), this.arr3(1, 2, 0), this.output);
			this.assertArrayEqual(result, this.arr3(1, 0, 0), 3, "LookAt74 should transform a point 'right of' into local +X");
			result = Vec3.transformMat4(Vec3.create(), this.arr3(0, 1, 0), this.output);
			this.assertArrayEqual(result, this.arr3(0, 0, -1), 3, "LookAt74 should transform a point 'in front of' into local -Z");
		}

		private function lookAtLookingDown() : void
		{
			this.view = this.arr3(0, -1, 0);
			this.up = this.arr3(0, 0, -1);
			this.right = this.arr3(1, 0, 0);
			var result : Array = Mat4.lookAt(this.output, this.arr3(0, 0, 0), this.view, this.up);
			result = Vec3.transformMat4(Vec3.create(), this.view, this.output);
			this.assertArrayEqual(result, this.arr3(0, 0, -1), 3, "LookAtLookingDown should transform view into local -Z");
			result = Vec3.transformMat4(Vec3.create(), this.up, this.output);
			this.assertArrayEqual(result, this.arr3(0, 1, 0), 3, "LookAtLookingDownshould transform up into local +Y");
			result = Vec3.transformMat4(Vec3.create(), this.right, this.output);
			this.assertArrayEqual(result, this.arr3(1, 0, 0), 3, "LookAtLookingDownshould transform right into local +X");
			this.assertArrayEqual(result, this.output, 3, "LookAtLookingDown should return out");
		}

		private function multiply() : void
		{
			this.multiplyWithASeparateOutputMatrix();
			this.multiplyWhenMatAIsTheOutputMatrix();
			this.multiplyWhenMatBIsTheOutputMatrix();
		}

		private function multiplyWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function multiplyWhenMatBIsTheOutputMatrix() : void
		{
		}

		private function multiplyWithASeparateOutputMatrix() : void
		{
		}

		private function ortho() : void
		{
			var result : Array = Mat4.ortho(this.output, -1, 1, -1, 1, -1, 1);
			this.assertArrayEqual(result, this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1), 16, "Ortho should place values into out");
			this.assertArrayEqual(result, this.output, 16, "Ortho should return out");
		}

		private function perspective() : void
		{
			this.perspective1();
			this.perspectiveWithNonzeroNear45degFovyAndRealisticAspectRatio();
		}

		private function perspective1() : void
		{
		}

		private function perspectiveWithNonzeroNear45degFovyAndRealisticAspectRatio() : void
		{
		}

		private function resetTests() : void
		{
			this.matA = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 2, 3, 1);
			this.matB = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 4, 5, 6, 1);
			this.output = this.arr16(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
			this.identity = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		}

		private function rotate() : void
		{
			this.rotateWithASeparateOutputMatrix();
			this.rotateWhenMatAIsTheOutputMatrix();
		}

		private function rotateWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function rotateWithASeparateOutputMatrix() : void
		{
		}

		private function rotateX() : void
		{
			this.rotateXWithASeparateOutputMatrix();
			this.rotateXWhenMatAIsTheOutputMatrix();
		}

		private function rotateXWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function rotateXWithASeparateOutputMatrix() : void
		{
		}

		private function rotateY() : void
		{
			this.rotateYWithASeparateOutputMatrix();
			this.rotateYWhenMatAIsTheOutputMatrix();
		}

		private function rotateYWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function rotateYWithASeparateOutputMatrix() : void
		{
		}

		private function rotateZ() : void
		{
			this.rotateZWithASeparateOutputMatrix();
			this.rotateZWhenMatAIsTheOutputMatrix();
		}

		private function rotateZWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function rotateZWithASeparateOutputMatrix() : void
		{
		}

		private function scale() : void
		{
			this.scaleWithASeparateOutputMatrix();
			this.scaleWhenMatAIsTheOutputMatrix();
		}

		private function scaleWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function scaleWithASeparateOutputMatrix() : void
		{
		}

		private function str() : void
		{
		}

		public final function test() : void
		{
			this.citoassert = new CitoAssert();
			this.resetTests();
			this.create();
			this.resetTests();
			this.cloneIt();
			this.resetTests();
			this.copy();
			this.resetTests();
			this.identity_();
			this.resetTests();
			this.transpose();
			this.resetTests();
			this.invert();
			this.resetTests();
			this.adjoint();
			this.resetTests();
			this.determinant();
			this.resetTests();
			this.multiply();
			this.resetTests();
			this.translate();
			this.resetTests();
			this.scale();
			this.resetTests();
			this.rotate();
			this.resetTests();
			this.rotateX();
			this.resetTests();
			this.rotateY();
			this.resetTests();
			this.rotateZ();
			this.resetTests();
			this.frustum();
			this.resetTests();
			this.perspective();
			this.resetTests();
			this.ortho();
			this.resetTests();
			this.lookAt();
			this.resetTests();
			this.str();
			this.resetTests();
		}

		private function translate() : void
		{
			this.translateWithASeparateOutputMatrix();
			this.translateWhenMatAIsTheOutputMatrix();
		}

		private function translateWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function translateWithASeparateOutputMatrix() : void
		{
		}

		private function transpose() : void
		{
			this.transposeWithASeparateOutputMatrix();
			this.transposeWhenMatAIsTheOutputMatrix();
		}

		private function transposeWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function transposeWithASeparateOutputMatrix() : void
		{
		}
		private var center : Array;
		private var citoassert : CitoAssert;
		private var eye : Array;
		private var identity : Array;
		private var matA : Array;
		private var matB : Array;
		private var output : Array;
		private var right : Array;
		private var up : Array;
		private var view : Array;
	}
}
