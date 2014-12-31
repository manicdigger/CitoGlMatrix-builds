// Generated automatically with "cito". Do not edit.

function CitoAssert()
{
	this.errors = null;
	this.errorsCount = 0;
	this.testI = 0;
	this.errors = new Array(1024);
	this.errorsCount = 0;
	this.testI = 0;
}

CitoAssert.prototype.arr16 = function(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9, p_10, p_11, p_12, p_13, p_14, p_15, p_16) {
	var arr = new Array(16);
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

CitoAssert.prototype.arr3 = function(p, p_2, p_3) {
	var arr = new Array(3);
	arr[0] = p;
	arr[1] = p_2;
	arr[2] = p_3;
	return arr;
}

CitoAssert.prototype.arr9 = function(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9) {
	var arr = new Array(16);
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

CitoAssert.prototype.assertArrayEqual = function(actual, expected, length, msg) {
	Platform.writeString("Test ");
	Platform.writeInt(this.testI);
	var isequal = true;
	for (var i = 0; i < length; i++) {
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

CitoAssert.prototype.assertCloseTo = function(actual, expected, msg) {
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

CitoAssert.prototype.assertEqual = function(actual, expected, msg) {
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

function GlMatrixMath()
{
}

GlMatrixMath.abs = function(len) {
	if (len < 0) {
		return -len;
	}
	else {
		return len;
	}
}

GlMatrixMath.gLMAT_EPSILON = function() {
	var one = 1;
	return one / (1000000);
}

GlMatrixMath.pI = function() {
	var a = 3141592;
	return a / (1000000);
}

GlMatrixMath.max = function(a, b) {
	if (a > b) {
		return a;
	}
	else {
		return b;
	}
}

GlMatrixMath.min = function(a, b) {
	if (a < b) {
		return a;
	}
	else {
		return b;
	}
}

function Mat2()
{
}

Mat2.adjoint = function(output, a) {
	var a0 = a[0];
	output[0] = a[3];
	output[1] = -a[1];
	output[2] = -a[2];
	output[3] = a0;
	return output;
}

Mat2.cloneIt = function(a) {
	var output = new Array(4);
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	return output;
}

Mat2.copy = function(output, a) {
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	return output;
}

Mat2.create = function() {
	var output = new Array(4);
	output[0] = 1;
	output[1] = 0;
	output[2] = 0;
	output[3] = 1;
	return output;
}

Mat2.determinant = function(a) {
	return a[0] * a[3] - a[2] * a[1];
}

Mat2.identity_ = function(output) {
	output[0] = 1;
	output[1] = 0;
	output[2] = 0;
	output[3] = 1;
	return output;
}

Mat2.invert = function(output, a) {
	var a0 = a[0];
	var a1 = a[1];
	var a2 = a[2];
	var a3 = a[3];
	var det = a0 * a3 - a2 * a1;
	if (det == 0) {
		return null;
	}
	var one = 1;
	det = one / (det);
	output[0] = a3 * det;
	output[1] = -a1 * det;
	output[2] = -a2 * det;
	output[3] = a0 * det;
	return output;
}

Mat2.mul = function(output, a, b) {
	return Mat2.multiply(output, a, b);
}

Mat2.multiply = function(output, a, b) {
	var a0 = a[0];
	var a1 = a[1];
	var a2 = a[2];
	var a3 = a[3];
	var b0 = b[0];
	var b1 = b[1];
	var b2 = b[2];
	var b3 = b[3];
	output[0] = a0 * b0 + a1 * b2;
	output[1] = a0 * b1 + a1 * b3;
	output[2] = a2 * b0 + a3 * b2;
	output[3] = a2 * b1 + a3 * b3;
	return output;
}

Mat2.rotate = function(output, a, rad) {
	var a0 = a[0];
	var a1 = a[1];
	var a2 = a[2];
	var a3 = a[3];
	var s = Platform.sin(rad);
	var c = Platform.cos(rad);
	output[0] = a0 * c + a1 * s;
	output[1] = a0 * -s + a1 * c;
	output[2] = a2 * c + a3 * s;
	output[3] = a2 * -s + a3 * c;
	return output;
}

Mat2.scale = function(output, a, v) {
	var a0 = a[0];
	var a1 = a[1];
	var a2 = a[2];
	var a3 = a[3];
	var v0 = v[0];
	var v1 = v[1];
	output[0] = a0 * v0;
	output[1] = a1 * v1;
	output[2] = a2 * v0;
	output[3] = a3 * v1;
	return output;
}

Mat2.transpose = function(output, a) {
	output[0] = a[0];
	output[1] = a[2];
	output[2] = a[1];
	output[3] = a[3];
	return output;
}

Mat2.prototype.f = function() {
}

function Mat2d()
{
}

Mat2d.cloneIt = function(a) {
	var output = new Array(6);
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	output[4] = a[4];
	output[5] = a[5];
	return output;
}

Mat2d.copy = function(output, a) {
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	output[4] = a[4];
	output[5] = a[5];
	return output;
}

Mat2d.create = function() {
	var output = new Array(6);
	output[0] = 1;
	output[1] = 0;
	output[2] = 0;
	output[3] = 1;
	output[4] = 0;
	output[5] = 0;
	return output;
}

Mat2d.determinant = function(a) {
	return a[0] * a[3] - a[1] * a[2];
}

Mat2d.identity_ = function(output) {
	output[0] = 1;
	output[1] = 0;
	output[2] = 0;
	output[3] = 1;
	output[4] = 0;
	output[5] = 0;
	return output;
}

Mat2d.invert = function(output, a) {
	var aa = a[0];
	var ab = a[1];
	var ac = a[2];
	var ad = a[3];
	var atx = a[4];
	var aty = a[5];
	var det = aa * ad - ab * ac;
	if (det == 0) {
		return null;
	}
	var one = 1;
	det = one / (det);
	output[0] = ad * det;
	output[1] = -ab * det;
	output[2] = -ac * det;
	output[3] = aa * det;
	output[4] = (ac * aty - ad * atx) * det;
	output[5] = (ab * atx - aa * aty) * det;
	return output;
}

Mat2d.mul = function(output, a, b) {
	return Mat2d.multiply(output, a, b);
}

Mat2d.multiply = function(output, a, b) {
	var aa = a[0];
	var ab = a[1];
	var ac = a[2];
	var ad = a[3];
	var atx = a[4];
	var aty = a[5];
	var ba = b[0];
	var bb = b[1];
	var bc = b[2];
	var bd = b[3];
	var btx = b[4];
	var bty = b[5];
	output[0] = aa * ba + ab * bc;
	output[1] = aa * bb + ab * bd;
	output[2] = ac * ba + ad * bc;
	output[3] = ac * bb + ad * bd;
	output[4] = ba * atx + bc * aty + btx;
	output[5] = bb * atx + bd * aty + bty;
	return output;
}

Mat2d.rotate = function(output, a, rad) {
	var aa = a[0];
	var ab = a[1];
	var ac = a[2];
	var ad = a[3];
	var atx = a[4];
	var aty = a[5];
	var st = Platform.sin(rad);
	var ct = Platform.cos(rad);
	output[0] = aa * ct + ab * st;
	output[1] = -aa * st + ab * ct;
	output[2] = ac * ct + ad * st;
	output[3] = -ac * st + ct * ad;
	output[4] = ct * atx + st * aty;
	output[5] = ct * aty - st * atx;
	return output;
}

Mat2d.scale = function(output, a, v) {
	var vx = v[0];
	var vy = v[1];
	output[0] = a[0] * vx;
	output[1] = a[1] * vy;
	output[2] = a[2] * vx;
	output[3] = a[3] * vy;
	output[4] = a[4] * vx;
	output[5] = a[5] * vy;
	return output;
}

Mat2d.translate = function(output, a, v) {
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	output[4] = a[4] + v[0];
	output[5] = a[5] + v[1];
	return output;
}

Mat2d.prototype.f = function() {
}

function Mat3()
{
}

Mat3.adjoint = function(output, a) {
	var a00 = a[0];
	var a01 = a[1];
	var a02 = a[2];
	var a10 = a[3];
	var a11 = a[4];
	var a12 = a[5];
	var a20 = a[6];
	var a21 = a[7];
	var a22 = a[8];
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

Mat3.cloneIt = function(a) {
	var output = new Array(9);
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

Mat3.copy = function(output, a) {
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

Mat3.create = function() {
	var output = new Array(9);
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

Mat3.determinant = function(a) {
	var a00 = a[0];
	var a01 = a[1];
	var a02 = a[2];
	var a10 = a[3];
	var a11 = a[4];
	var a12 = a[5];
	var a20 = a[6];
	var a21 = a[7];
	var a22 = a[8];
	return a00 * (a22 * a11 - a12 * a21) + a01 * (-a22 * a10 + a12 * a20) + a02 * (a21 * a10 - a11 * a20);
}

Mat3.fromMat2d = function(output, a) {
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

Mat3.fromMat4 = function(output, a) {
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

Mat3.fromQuat = function(output, q) {
	var x = q[0];
	var y = q[1];
	var z = q[2];
	var w = q[3];
	var x2 = x + x;
	var y2 = y + y;
	var z2 = z + z;
	var xx = x * x2;
	var xy = x * y2;
	var xz = x * z2;
	var yy = y * y2;
	var yz = y * z2;
	var zz = z * z2;
	var wx = w * x2;
	var wy = w * y2;
	var wz = w * z2;
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

Mat3.identity_ = function(output) {
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

Mat3.invert = function(output, a) {
	var a00 = a[0];
	var a01 = a[1];
	var a02 = a[2];
	var a10 = a[3];
	var a11 = a[4];
	var a12 = a[5];
	var a20 = a[6];
	var a21 = a[7];
	var a22 = a[8];
	var b01 = a22 * a11 - a12 * a21;
	var b11 = -a22 * a10 + a12 * a20;
	var b21 = a21 * a10 - a11 * a20;
	var det = a00 * b01 + a01 * b11 + a02 * b21;
	if (det == 0) {
		return null;
	}
	var one = 1;
	det = one / (det);
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

Mat3.mul = function(output, a, b) {
	return Mat3.multiply(output, a, b);
}

Mat3.multiply = function(output, a, b) {
	var a00 = a[0];
	var a01 = a[1];
	var a02 = a[2];
	var a10 = a[3];
	var a11 = a[4];
	var a12 = a[5];
	var a20 = a[6];
	var a21 = a[7];
	var a22 = a[8];
	var b00 = b[0];
	var b01 = b[1];
	var b02 = b[2];
	var b10 = b[3];
	var b11 = b[4];
	var b12 = b[5];
	var b20 = b[6];
	var b21 = b[7];
	var b22 = b[8];
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

Mat3.normalFromMat4 = function(output, a) {
	var a00 = a[0];
	var a01 = a[1];
	var a02 = a[2];
	var a03 = a[3];
	var a10 = a[4];
	var a11 = a[5];
	var a12 = a[6];
	var a13 = a[7];
	var a20 = a[8];
	var a21 = a[9];
	var a22 = a[10];
	var a23 = a[11];
	var a30 = a[12];
	var a31 = a[13];
	var a32 = a[14];
	var a33 = a[15];
	var b00 = a00 * a11 - a01 * a10;
	var b01 = a00 * a12 - a02 * a10;
	var b02 = a00 * a13 - a03 * a10;
	var b03 = a01 * a12 - a02 * a11;
	var b04 = a01 * a13 - a03 * a11;
	var b05 = a02 * a13 - a03 * a12;
	var b06 = a20 * a31 - a21 * a30;
	var b07 = a20 * a32 - a22 * a30;
	var b08 = a20 * a33 - a23 * a30;
	var b09 = a21 * a32 - a22 * a31;
	var b10 = a21 * a33 - a23 * a31;
	var b11 = a22 * a33 - a23 * a32;
	var det = b00 * b11 - b01 * b10 + b02 * b09 + b03 * b08 - b04 * b07 + b05 * b06;
	if (det == 0) {
		return null;
	}
	var one = 1;
	det = one / (det);
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

Mat3.rotate = function(output, a, rad) {
	var a00 = a[0];
	var a01 = a[1];
	var a02 = a[2];
	var a10 = a[3];
	var a11 = a[4];
	var a12 = a[5];
	var a20 = a[6];
	var a21 = a[7];
	var a22 = a[8];
	var s = Platform.sin(rad);
	var c = Platform.cos(rad);
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

Mat3.scale = function(output, a, v) {
	var x = v[0];
	var y = v[1];
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

Mat3.translate = function(output, a, v) {
	var a00 = a[0];
	var a01 = a[1];
	var a02 = a[2];
	var a10 = a[3];
	var a11 = a[4];
	var a12 = a[5];
	var a20 = a[6];
	var a21 = a[7];
	var a22 = a[8];
	var x = v[0];
	var y = v[1];
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

Mat3.transpose = function(output, a) {
	if (output == a) {
		var a01 = a[1];
		var a02 = a[2];
		var a12 = a[5];
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

Mat3.prototype.f = function() {
}

function Mat4()
{
}

Mat4.adjoint = function(output, a) {
	var a00 = a[0];
	var a01 = a[1];
	var a02 = a[2];
	var a03 = a[3];
	var a10 = a[4];
	var a11 = a[5];
	var a12 = a[6];
	var a13 = a[7];
	var a20 = a[8];
	var a21 = a[9];
	var a22 = a[10];
	var a23 = a[11];
	var a30 = a[12];
	var a31 = a[13];
	var a32 = a[14];
	var a33 = a[15];
	output[0] = a11 * (a22 * a33 - a23 * a32) - a21 * (a12 * a33 - a13 * a32) + a31 * (a12 * a23 - a13 * a22);
	output[1] = -(a01 * (a22 * a33 - a23 * a32) - a21 * (a02 * a33 - a03 * a32) + a31 * (a02 * a23 - a03 * a22));
	output[2] = a01 * (a12 * a33 - a13 * a32) - a11 * (a02 * a33 - a03 * a32) + a31 * (a02 * a13 - a03 * a12);
	output[3] = -(a01 * (a12 * a23 - a13 * a22) - a11 * (a02 * a23 - a03 * a22) + a21 * (a02 * a13 - a03 * a12));
	output[4] = -(a10 * (a22 * a33 - a23 * a32) - a20 * (a12 * a33 - a13 * a32) + a30 * (a12 * a23 - a13 * a22));
	output[5] = a00 * (a22 * a33 - a23 * a32) - a20 * (a02 * a33 - a03 * a32) + a30 * (a02 * a23 - a03 * a22);
	output[6] = -(a00 * (a12 * a33 - a13 * a32) - a10 * (a02 * a33 - a03 * a32) + a30 * (a02 * a13 - a03 * a12));
	output[7] = a00 * (a12 * a23 - a13 * a22) - a10 * (a02 * a23 - a03 * a22) + a20 * (a02 * a13 - a03 * a12);
	output[8] = a10 * (a21 * a33 - a23 * a31) - a20 * (a11 * a33 - a13 * a31) + a30 * (a11 * a23 - a13 * a21);
	output[9] = -(a00 * (a21 * a33 - a23 * a31) - a20 * (a01 * a33 - a03 * a31) + a30 * (a01 * a23 - a03 * a21));
	output[10] = a00 * (a11 * a33 - a13 * a31) - a10 * (a01 * a33 - a03 * a31) + a30 * (a01 * a13 - a03 * a11);
	output[11] = -(a00 * (a11 * a23 - a13 * a21) - a10 * (a01 * a23 - a03 * a21) + a20 * (a01 * a13 - a03 * a11));
	output[12] = -(a10 * (a21 * a32 - a22 * a31) - a20 * (a11 * a32 - a12 * a31) + a30 * (a11 * a22 - a12 * a21));
	output[13] = a00 * (a21 * a32 - a22 * a31) - a20 * (a01 * a32 - a02 * a31) + a30 * (a01 * a22 - a02 * a21);
	output[14] = -(a00 * (a11 * a32 - a12 * a31) - a10 * (a01 * a32 - a02 * a31) + a30 * (a01 * a12 - a02 * a11));
	output[15] = a00 * (a11 * a22 - a12 * a21) - a10 * (a01 * a22 - a02 * a21) + a20 * (a01 * a12 - a02 * a11);
	return output;
}

Mat4.cloneIt = function(a) {
	var output = new Array(16);
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	output[4] = a[4];
	output[5] = a[5];
	output[6] = a[6];
	output[7] = a[7];
	output[8] = a[8];
	output[9] = a[9];
	output[10] = a[10];
	output[11] = a[11];
	output[12] = a[12];
	output[13] = a[13];
	output[14] = a[14];
	output[15] = a[15];
	return output;
}

Mat4.copy = function(output, a) {
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	output[4] = a[4];
	output[5] = a[5];
	output[6] = a[6];
	output[7] = a[7];
	output[8] = a[8];
	output[9] = a[9];
	output[10] = a[10];
	output[11] = a[11];
	output[12] = a[12];
	output[13] = a[13];
	output[14] = a[14];
	output[15] = a[15];
	return output;
}

Mat4.create = function() {
	var output = new Array(16);
	output[0] = 1;
	output[1] = 0;
	output[2] = 0;
	output[3] = 0;
	output[4] = 0;
	output[5] = 1;
	output[6] = 0;
	output[7] = 0;
	output[8] = 0;
	output[9] = 0;
	output[10] = 1;
	output[11] = 0;
	output[12] = 0;
	output[13] = 0;
	output[14] = 0;
	output[15] = 1;
	return output;
}

Mat4.determinant = function(a) {
	var a00 = a[0];
	var a01 = a[1];
	var a02 = a[2];
	var a03 = a[3];
	var a10 = a[4];
	var a11 = a[5];
	var a12 = a[6];
	var a13 = a[7];
	var a20 = a[8];
	var a21 = a[9];
	var a22 = a[10];
	var a23 = a[11];
	var a30 = a[12];
	var a31 = a[13];
	var a32 = a[14];
	var a33 = a[15];
	var b00 = a00 * a11 - a01 * a10;
	var b01 = a00 * a12 - a02 * a10;
	var b02 = a00 * a13 - a03 * a10;
	var b03 = a01 * a12 - a02 * a11;
	var b04 = a01 * a13 - a03 * a11;
	var b05 = a02 * a13 - a03 * a12;
	var b06 = a20 * a31 - a21 * a30;
	var b07 = a20 * a32 - a22 * a30;
	var b08 = a20 * a33 - a23 * a30;
	var b09 = a21 * a32 - a22 * a31;
	var b10 = a21 * a33 - a23 * a31;
	var b11 = a22 * a33 - a23 * a32;
	return b00 * b11 - b01 * b10 + b02 * b09 + b03 * b08 - b04 * b07 + b05 * b06;
}

Mat4.fromQuat = function(output, q) {
	var x = q[0];
	var y = q[1];
	var z = q[2];
	var w = q[3];
	var x2 = x + x;
	var y2 = y + y;
	var z2 = z + z;
	var xx = x * x2;
	var xy = x * y2;
	var xz = x * z2;
	var yy = y * y2;
	var yz = y * z2;
	var zz = z * z2;
	var wx = w * x2;
	var wy = w * y2;
	var wz = w * z2;
	output[0] = 1 - (yy + zz);
	output[1] = xy + wz;
	output[2] = xz - wy;
	output[3] = 0;
	output[4] = xy - wz;
	output[5] = 1 - (xx + zz);
	output[6] = yz + wx;
	output[7] = 0;
	output[8] = xz + wy;
	output[9] = yz - wx;
	output[10] = 1 - (xx + yy);
	output[11] = 0;
	output[12] = 0;
	output[13] = 0;
	output[14] = 0;
	output[15] = 1;
	return output;
}

Mat4.fromRotationTranslation = function(output, q, v) {
	var x = q[0];
	var y = q[1];
	var z = q[2];
	var w = q[3];
	var x2 = x + x;
	var y2 = y + y;
	var z2 = z + z;
	var xx = x * x2;
	var xy = x * y2;
	var xz = x * z2;
	var yy = y * y2;
	var yz = y * z2;
	var zz = z * z2;
	var wx = w * x2;
	var wy = w * y2;
	var wz = w * z2;
	output[0] = 1 - (yy + zz);
	output[1] = xy + wz;
	output[2] = xz - wy;
	output[3] = 0;
	output[4] = xy - wz;
	output[5] = 1 - (xx + zz);
	output[6] = yz + wx;
	output[7] = 0;
	output[8] = xz + wy;
	output[9] = yz - wx;
	output[10] = 1 - (xx + yy);
	output[11] = 0;
	output[12] = v[0];
	output[13] = v[1];
	output[14] = v[2];
	output[15] = 1;
	return output;
}

Mat4.frustum = function(output, left, right, bottom, top, near, far) {
	var rl = 1 / (right - left);
	var tb = 1 / (top - bottom);
	var nf = 1 / (near - far);
	output[0] = near * 2 * rl;
	output[1] = 0;
	output[2] = 0;
	output[3] = 0;
	output[4] = 0;
	output[5] = near * 2 * tb;
	output[6] = 0;
	output[7] = 0;
	output[8] = (right + left) * rl;
	output[9] = (top + bottom) * tb;
	output[10] = (far + near) * nf;
	output[11] = -1;
	output[12] = 0;
	output[13] = 0;
	output[14] = far * near * 2 * nf;
	output[15] = 0;
	return output;
}

Mat4.identity_ = function(output) {
	output[0] = 1;
	output[1] = 0;
	output[2] = 0;
	output[3] = 0;
	output[4] = 0;
	output[5] = 1;
	output[6] = 0;
	output[7] = 0;
	output[8] = 0;
	output[9] = 0;
	output[10] = 1;
	output[11] = 0;
	output[12] = 0;
	output[13] = 0;
	output[14] = 0;
	output[15] = 1;
	return output;
}

Mat4.invert = function(output, a) {
	var a00 = a[0];
	var a01 = a[1];
	var a02 = a[2];
	var a03 = a[3];
	var a10 = a[4];
	var a11 = a[5];
	var a12 = a[6];
	var a13 = a[7];
	var a20 = a[8];
	var a21 = a[9];
	var a22 = a[10];
	var a23 = a[11];
	var a30 = a[12];
	var a31 = a[13];
	var a32 = a[14];
	var a33 = a[15];
	var b00 = a00 * a11 - a01 * a10;
	var b01 = a00 * a12 - a02 * a10;
	var b02 = a00 * a13 - a03 * a10;
	var b03 = a01 * a12 - a02 * a11;
	var b04 = a01 * a13 - a03 * a11;
	var b05 = a02 * a13 - a03 * a12;
	var b06 = a20 * a31 - a21 * a30;
	var b07 = a20 * a32 - a22 * a30;
	var b08 = a20 * a33 - a23 * a30;
	var b09 = a21 * a32 - a22 * a31;
	var b10 = a21 * a33 - a23 * a31;
	var b11 = a22 * a33 - a23 * a32;
	var det = b00 * b11 - b01 * b10 + b02 * b09 + b03 * b08 - b04 * b07 + b05 * b06;
	if (det == 0) {
		return null;
	}
	var one = 1;
	det = one / (det);
	output[0] = (a11 * b11 - a12 * b10 + a13 * b09) * det;
	output[1] = (a02 * b10 - a01 * b11 - a03 * b09) * det;
	output[2] = (a31 * b05 - a32 * b04 + a33 * b03) * det;
	output[3] = (a22 * b04 - a21 * b05 - a23 * b03) * det;
	output[4] = (a12 * b08 - a10 * b11 - a13 * b07) * det;
	output[5] = (a00 * b11 - a02 * b08 + a03 * b07) * det;
	output[6] = (a32 * b02 - a30 * b05 - a33 * b01) * det;
	output[7] = (a20 * b05 - a22 * b02 + a23 * b01) * det;
	output[8] = (a10 * b10 - a11 * b08 + a13 * b06) * det;
	output[9] = (a01 * b08 - a00 * b10 - a03 * b06) * det;
	output[10] = (a30 * b04 - a31 * b02 + a33 * b00) * det;
	output[11] = (a21 * b02 - a20 * b04 - a23 * b00) * det;
	output[12] = (a11 * b07 - a10 * b09 - a12 * b06) * det;
	output[13] = (a00 * b09 - a01 * b07 + a02 * b06) * det;
	output[14] = (a31 * b01 - a30 * b03 - a32 * b00) * det;
	output[15] = (a20 * b03 - a21 * b01 + a22 * b00) * det;
	return output;
}

Mat4.lookAt = function(output, eye, center, up) {
	var x0;
	var x1;
	var x2;
	var y0;
	var y1;
	var y2;
	var z0;
	var z1;
	var z2;
	var len;
	var eyex = eye[0];
	var eyey = eye[1];
	var eyez = eye[2];
	var upx = up[0];
	var upy = up[1];
	var upz = up[2];
	var centerx = center[0];
	var centery = center[1];
	var centerz = center[2];
	if (GlMatrixMath.abs(eyex - centerx) < GlMatrixMath.gLMAT_EPSILON() && GlMatrixMath.abs(eyey - centery) < GlMatrixMath.gLMAT_EPSILON() && GlMatrixMath.abs(eyez - centerz) < GlMatrixMath.gLMAT_EPSILON()) {
		return Mat4.identity_(output);
	}
	z0 = eyex - centerx;
	z1 = eyey - centery;
	z2 = eyez - centerz;
	len = 1 / (Platform.sqrt(z0 * z0 + z1 * z1 + z2 * z2));
	z0 *= len;
	z1 *= len;
	z2 *= len;
	x0 = upy * z2 - upz * z1;
	x1 = upz * z0 - upx * z2;
	x2 = upx * z1 - upy * z0;
	len = Platform.sqrt(x0 * x0 + x1 * x1 + x2 * x2);
	if (len == 0) {
		x0 = 0;
		x1 = 0;
		x2 = 0;
	}
	else {
		len = 1 / (len);
		x0 *= len;
		x1 *= len;
		x2 *= len;
	}
	y0 = z1 * x2 - z2 * x1;
	y1 = z2 * x0 - z0 * x2;
	y2 = z0 * x1 - z1 * x0;
	len = Platform.sqrt(y0 * y0 + y1 * y1 + y2 * y2);
	if (len == 0) {
		y0 = 0;
		y1 = 0;
		y2 = 0;
	}
	else {
		len = 1 / (len);
		y0 *= len;
		y1 *= len;
		y2 *= len;
	}
	output[0] = x0;
	output[1] = y0;
	output[2] = z0;
	output[3] = 0;
	output[4] = x1;
	output[5] = y1;
	output[6] = z1;
	output[7] = 0;
	output[8] = x2;
	output[9] = y2;
	output[10] = z2;
	output[11] = 0;
	output[12] = -(x0 * eyex + x1 * eyey + x2 * eyez);
	output[13] = -(y0 * eyex + y1 * eyey + y2 * eyez);
	output[14] = -(z0 * eyex + z1 * eyey + z2 * eyez);
	output[15] = 1;
	return output;
}

Mat4.mul = function(output, a, b) {
	return Mat4.multiply(output, a, b);
}

Mat4.multiply = function(output, a, b) {
	var a00 = a[0];
	var a01 = a[1];
	var a02 = a[2];
	var a03 = a[3];
	var a10 = a[4];
	var a11 = a[5];
	var a12 = a[6];
	var a13 = a[7];
	var a20 = a[8];
	var a21 = a[9];
	var a22 = a[10];
	var a23 = a[11];
	var a30 = a[12];
	var a31 = a[13];
	var a32 = a[14];
	var a33 = a[15];
	var b0 = b[0];
	var b1 = b[1];
	var b2 = b[2];
	var b3 = b[3];
	output[0] = b0 * a00 + b1 * a10 + b2 * a20 + b3 * a30;
	output[1] = b0 * a01 + b1 * a11 + b2 * a21 + b3 * a31;
	output[2] = b0 * a02 + b1 * a12 + b2 * a22 + b3 * a32;
	output[3] = b0 * a03 + b1 * a13 + b2 * a23 + b3 * a33;
	b0 = b[4];
	b1 = b[5];
	b2 = b[6];
	b3 = b[7];
	output[4] = b0 * a00 + b1 * a10 + b2 * a20 + b3 * a30;
	output[5] = b0 * a01 + b1 * a11 + b2 * a21 + b3 * a31;
	output[6] = b0 * a02 + b1 * a12 + b2 * a22 + b3 * a32;
	output[7] = b0 * a03 + b1 * a13 + b2 * a23 + b3 * a33;
	b0 = b[8];
	b1 = b[9];
	b2 = b[10];
	b3 = b[11];
	output[8] = b0 * a00 + b1 * a10 + b2 * a20 + b3 * a30;
	output[9] = b0 * a01 + b1 * a11 + b2 * a21 + b3 * a31;
	output[10] = b0 * a02 + b1 * a12 + b2 * a22 + b3 * a32;
	output[11] = b0 * a03 + b1 * a13 + b2 * a23 + b3 * a33;
	b0 = b[12];
	b1 = b[13];
	b2 = b[14];
	b3 = b[15];
	output[12] = b0 * a00 + b1 * a10 + b2 * a20 + b3 * a30;
	output[13] = b0 * a01 + b1 * a11 + b2 * a21 + b3 * a31;
	output[14] = b0 * a02 + b1 * a12 + b2 * a22 + b3 * a32;
	output[15] = b0 * a03 + b1 * a13 + b2 * a23 + b3 * a33;
	return output;
}

Mat4.ortho = function(output, left, right, bottom, top, near, far) {
	var lr = 1 / (left - right);
	var bt = 1 / (bottom - top);
	var nf = 1 / (near - far);
	output[0] = -2 * lr;
	output[1] = 0;
	output[2] = 0;
	output[3] = 0;
	output[4] = 0;
	output[5] = -2 * bt;
	output[6] = 0;
	output[7] = 0;
	output[8] = 0;
	output[9] = 0;
	output[10] = 2 * nf;
	output[11] = 0;
	output[12] = (left + right) * lr;
	output[13] = (top + bottom) * bt;
	output[14] = (far + near) * nf;
	output[15] = 1;
	return output;
}

Mat4.perspective = function(output, fovy, aspect, near, far) {
	var one = 1;
	var f = one / (Platform.tan(fovy / (2)));
	var nf = 1 / (near - far);
	output[0] = f / (aspect);
	output[1] = 0;
	output[2] = 0;
	output[3] = 0;
	output[4] = 0;
	output[5] = f;
	output[6] = 0;
	output[7] = 0;
	output[8] = 0;
	output[9] = 0;
	output[10] = (far + near) * nf;
	output[11] = -1;
	output[12] = 0;
	output[13] = 0;
	output[14] = 2 * far * near * nf;
	output[15] = 0;
	return output;
}

Mat4.rotate = function(output, a, rad, axis) {
	var x = axis[0];
	var y = axis[1];
	var z = axis[2];
	var len = Platform.sqrt(x * x + y * y + z * z);
	var s;
	var c;
	var t;
	var a00;
	var a01;
	var a02;
	var a03;
	var a10;
	var a11;
	var a12;
	var a13;
	var a20;
	var a21;
	var a22;
	var a23;
	var b00;
	var b01;
	var b02;
	var b10;
	var b11;
	var b12;
	var b20;
	var b21;
	var b22;
	if (GlMatrixMath.abs(len) < GlMatrixMath.gLMAT_EPSILON()) {
		return null;
	}
	len = 1 / (len);
	x *= len;
	y *= len;
	z *= len;
	s = Platform.sin(rad);
	c = Platform.cos(rad);
	t = 1 - c;
	a00 = a[0];
	a01 = a[1];
	a02 = a[2];
	a03 = a[3];
	a10 = a[4];
	a11 = a[5];
	a12 = a[6];
	a13 = a[7];
	a20 = a[8];
	a21 = a[9];
	a22 = a[10];
	a23 = a[11];
	b00 = x * x * t + c;
	b01 = y * x * t + z * s;
	b02 = z * x * t - y * s;
	b10 = x * y * t - z * s;
	b11 = y * y * t + c;
	b12 = z * y * t + x * s;
	b20 = x * z * t + y * s;
	b21 = y * z * t - x * s;
	b22 = z * z * t + c;
	output[0] = a00 * b00 + a10 * b01 + a20 * b02;
	output[1] = a01 * b00 + a11 * b01 + a21 * b02;
	output[2] = a02 * b00 + a12 * b01 + a22 * b02;
	output[3] = a03 * b00 + a13 * b01 + a23 * b02;
	output[4] = a00 * b10 + a10 * b11 + a20 * b12;
	output[5] = a01 * b10 + a11 * b11 + a21 * b12;
	output[6] = a02 * b10 + a12 * b11 + a22 * b12;
	output[7] = a03 * b10 + a13 * b11 + a23 * b12;
	output[8] = a00 * b20 + a10 * b21 + a20 * b22;
	output[9] = a01 * b20 + a11 * b21 + a21 * b22;
	output[10] = a02 * b20 + a12 * b21 + a22 * b22;
	output[11] = a03 * b20 + a13 * b21 + a23 * b22;
	if (a != output) {
		output[12] = a[12];
		output[13] = a[13];
		output[14] = a[14];
		output[15] = a[15];
	}
	return output;
}

Mat4.rotateX = function(output, a, rad) {
	var s = Platform.sin(rad);
	var c = Platform.cos(rad);
	var a10 = a[4];
	var a11 = a[5];
	var a12 = a[6];
	var a13 = a[7];
	var a20 = a[8];
	var a21 = a[9];
	var a22 = a[10];
	var a23 = a[11];
	if (a != output) {
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		output[3] = a[3];
		output[12] = a[12];
		output[13] = a[13];
		output[14] = a[14];
		output[15] = a[15];
	}
	output[4] = a10 * c + a20 * s;
	output[5] = a11 * c + a21 * s;
	output[6] = a12 * c + a22 * s;
	output[7] = a13 * c + a23 * s;
	output[8] = a20 * c - a10 * s;
	output[9] = a21 * c - a11 * s;
	output[10] = a22 * c - a12 * s;
	output[11] = a23 * c - a13 * s;
	return output;
}

Mat4.rotateY = function(output, a, rad) {
	var s = Platform.sin(rad);
	var c = Platform.cos(rad);
	var a00 = a[0];
	var a01 = a[1];
	var a02 = a[2];
	var a03 = a[3];
	var a20 = a[8];
	var a21 = a[9];
	var a22 = a[10];
	var a23 = a[11];
	if (a != output) {
		output[4] = a[4];
		output[5] = a[5];
		output[6] = a[6];
		output[7] = a[7];
		output[12] = a[12];
		output[13] = a[13];
		output[14] = a[14];
		output[15] = a[15];
	}
	output[0] = a00 * c - a20 * s;
	output[1] = a01 * c - a21 * s;
	output[2] = a02 * c - a22 * s;
	output[3] = a03 * c - a23 * s;
	output[8] = a00 * s + a20 * c;
	output[9] = a01 * s + a21 * c;
	output[10] = a02 * s + a22 * c;
	output[11] = a03 * s + a23 * c;
	return output;
}

Mat4.rotateZ = function(output, a, rad) {
	var s = Platform.sin(rad);
	var c = Platform.cos(rad);
	var a00 = a[0];
	var a01 = a[1];
	var a02 = a[2];
	var a03 = a[3];
	var a10 = a[4];
	var a11 = a[5];
	var a12 = a[6];
	var a13 = a[7];
	if (a != output) {
		output[8] = a[8];
		output[9] = a[9];
		output[10] = a[10];
		output[11] = a[11];
		output[12] = a[12];
		output[13] = a[13];
		output[14] = a[14];
		output[15] = a[15];
	}
	output[0] = a00 * c + a10 * s;
	output[1] = a01 * c + a11 * s;
	output[2] = a02 * c + a12 * s;
	output[3] = a03 * c + a13 * s;
	output[4] = a10 * c - a00 * s;
	output[5] = a11 * c - a01 * s;
	output[6] = a12 * c - a02 * s;
	output[7] = a13 * c - a03 * s;
	return output;
}

Mat4.scale = function(output, a, v) {
	var x = v[0];
	var y = v[1];
	var z = v[2];
	output[0] = a[0] * x;
	output[1] = a[1] * x;
	output[2] = a[2] * x;
	output[3] = a[3] * x;
	output[4] = a[4] * y;
	output[5] = a[5] * y;
	output[6] = a[6] * y;
	output[7] = a[7] * y;
	output[8] = a[8] * z;
	output[9] = a[9] * z;
	output[10] = a[10] * z;
	output[11] = a[11] * z;
	output[12] = a[12];
	output[13] = a[13];
	output[14] = a[14];
	output[15] = a[15];
	return output;
}

Mat4.translate = function(output, a, v) {
	var x = v[0];
	var y = v[1];
	var z = v[2];
	var a00;
	var a01;
	var a02;
	var a03;
	var a10;
	var a11;
	var a12;
	var a13;
	var a20;
	var a21;
	var a22;
	var a23;
	if (a == output) {
		output[12] = a[0] * x + a[4] * y + a[8] * z + a[12];
		output[13] = a[1] * x + a[5] * y + a[9] * z + a[13];
		output[14] = a[2] * x + a[6] * y + a[10] * z + a[14];
		output[15] = a[3] * x + a[7] * y + a[11] * z + a[15];
	}
	else {
		a00 = a[0];
		a01 = a[1];
		a02 = a[2];
		a03 = a[3];
		a10 = a[4];
		a11 = a[5];
		a12 = a[6];
		a13 = a[7];
		a20 = a[8];
		a21 = a[9];
		a22 = a[10];
		a23 = a[11];
		output[0] = a00;
		output[1] = a01;
		output[2] = a02;
		output[3] = a03;
		output[4] = a10;
		output[5] = a11;
		output[6] = a12;
		output[7] = a13;
		output[8] = a20;
		output[9] = a21;
		output[10] = a22;
		output[11] = a23;
		output[12] = a00 * x + a10 * y + a20 * z + a[12];
		output[13] = a01 * x + a11 * y + a21 * z + a[13];
		output[14] = a02 * x + a12 * y + a22 * z + a[14];
		output[15] = a03 * x + a13 * y + a23 * z + a[15];
	}
	return output;
}

Mat4.transpose = function(output, a) {
	if (output == a) {
		var a01 = a[1];
		var a02 = a[2];
		var a03 = a[3];
		var a12 = a[6];
		var a13 = a[7];
		var a23 = a[11];
		output[1] = a[4];
		output[2] = a[8];
		output[3] = a[12];
		output[4] = a01;
		output[6] = a[9];
		output[7] = a[13];
		output[8] = a02;
		output[9] = a12;
		output[11] = a[14];
		output[12] = a03;
		output[13] = a13;
		output[14] = a23;
	}
	else {
		output[0] = a[0];
		output[1] = a[4];
		output[2] = a[8];
		output[3] = a[12];
		output[4] = a[1];
		output[5] = a[5];
		output[6] = a[9];
		output[7] = a[13];
		output[8] = a[2];
		output[9] = a[6];
		output[10] = a[10];
		output[11] = a[14];
		output[12] = a[3];
		output[13] = a[7];
		output[14] = a[11];
		output[15] = a[15];
	}
	return output;
}

Mat4.prototype.f = function() {
}

function Platform()
{
}

Platform.acos = function(a) {
	
            return Math.acos(a);
        return 0;
}

Platform.cos = function(a) {
	
            return Math.cos(a);
        return 0;
}

Platform.sin = function(a) {
	
            return Math.sin(a);
        return 0;
}

Platform.sqrt = function(a) {
	
            return Math.sqrt(a);
        return 0;
}

Platform.tan = function(a) {
	
            return Math.tan(a);
        return 0;
}

Platform.writeInt = function(a) {
	
            console.log(a);
        }

Platform.writeString = function(a) {
	
            console.log(a);
        }

function Quat()
{
}

Quat.add = function(output, a, b) {
	return Vec4.add(output, a, b);
}

Quat.calculateW = function(output, a) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	output[0] = x;
	output[1] = y;
	output[2] = z;
	var one = 1;
	output[3] = -Platform.sqrt(GlMatrixMath.abs(one - x * x - y * y - z * z));
	return output;
}

Quat.cloneIt = function(a) {
	return Vec4.cloneIt(a);
}

Quat.prototype.conjugate = function(output, a) {
	output[0] = -a[0];
	output[1] = -a[1];
	output[2] = -a[2];
	output[3] = a[3];
	return output;
}

Quat.copy = function(output, a) {
	return Vec4.copy(output, a);
}

Quat.create = function() {
	var output = new Array(4);
	output[0] = 0;
	output[1] = 0;
	output[2] = 0;
	output[3] = 1;
	return output;
}

Quat.dot = function(a, b) {
	return Vec4.dot(a, b);
}

Quat.fromMat3 = function(output, m) {
	var fTrace = m[0] + m[4] + m[8];
	var fRoot;
	var zero = 0;
	var one = 1;
	var half = one / (2);
	if (fTrace > zero) {
		fRoot = Platform.sqrt(fTrace + one);
		output[3] = half * fRoot;
		fRoot = half / (fRoot);
		output[0] = (m[7] - m[5]) * fRoot;
		output[1] = (m[2] - m[6]) * fRoot;
		output[2] = (m[3] - m[1]) * fRoot;
	}
	else {
		var i = 0;
		if (m[4] > m[0])
			i = 1;
		if (m[8] > m[i * 3 + i])
			i = 2;
		var j = (i + 1) % 3;
		var k = (i + 2) % 3;
		fRoot = Platform.sqrt(m[i * 3 + i] - m[j * 3 + j] - m[k * 3 + k] + one);
		output[i] = half * fRoot;
		fRoot = half / (fRoot);
		output[3] = (m[k * 3 + j] - m[j * 3 + k]) * fRoot;
		output[j] = (m[j * 3 + i] + m[i * 3 + j]) * fRoot;
		output[k] = (m[k * 3 + i] + m[i * 3 + k]) * fRoot;
	}
	return output;
}

Quat.fromValues = function(x, y, z, w) {
	return Vec4.fromValues(x, y, z, w);
}

Quat.identity_ = function(output) {
	output[0] = 0;
	output[1] = 0;
	output[2] = 0;
	output[3] = 1;
	return output;
}

Quat.prototype.invert = function(output, a) {
	var a0 = a[0];
	var a1 = a[1];
	var a2 = a[2];
	var a3 = a[3];
	var dot = a0 * a0 + a1 * a1 + a2 * a2 + a3 * a3;
	var one = 1;
	var invDot = dot != 0 ? one / (dot) : 0;
	output[0] = -a0 * invDot;
	output[1] = -a1 * invDot;
	output[2] = -a2 * invDot;
	output[3] = a3 * invDot;
	return output;
}

Quat.len = function(a) {
	return Quat.length_(a);
}

Quat.length_ = function(a) {
	return Vec4.length_(a);
}

Quat.lerp = function(output, a, b, t) {
	return Vec4.lerp(output, a, b, t);
}

Quat.mul = function(output, a, b) {
	return Quat.multiply(output, a, b);
}

Quat.multiply = function(output, a, b) {
	var ax = a[0];
	var ay = a[1];
	var az = a[2];
	var aw = a[3];
	var bx = b[0];
	var by = b[1];
	var bz = b[2];
	var bw = b[3];
	output[0] = ax * bw + aw * bx + ay * bz - az * by;
	output[1] = ay * bw + aw * by + az * bx - ax * bz;
	output[2] = az * bw + aw * bz + ax * by - ay * bx;
	output[3] = aw * bw - ax * bx - ay * by - az * bz;
	return output;
}

Quat.normalize = function(output, a) {
	return Vec4.normalize(output, a);
}

Quat.rotateX = function(output, a, rad) {
	rad /= 2;
	var ax = a[0];
	var ay = a[1];
	var az = a[2];
	var aw = a[3];
	var bx = Platform.sin(rad);
	var bw = Platform.cos(rad);
	output[0] = ax * bw + aw * bx;
	output[1] = ay * bw + az * bx;
	output[2] = az * bw - ay * bx;
	output[3] = aw * bw - ax * bx;
	return output;
}

Quat.rotateY = function(output, a, rad) {
	rad /= 2;
	var ax = a[0];
	var ay = a[1];
	var az = a[2];
	var aw = a[3];
	var by = Platform.sin(rad);
	var bw = Platform.cos(rad);
	output[0] = ax * bw - az * by;
	output[1] = ay * bw + aw * by;
	output[2] = az * bw + ax * by;
	output[3] = aw * bw - ay * by;
	return output;
}

Quat.rotateZ = function(output, a, rad) {
	rad /= 2;
	var ax = a[0];
	var ay = a[1];
	var az = a[2];
	var aw = a[3];
	var bz = Platform.sin(rad);
	var bw = Platform.cos(rad);
	output[0] = ax * bw + ay * bz;
	output[1] = ay * bw - ax * bz;
	output[2] = az * bw + aw * bz;
	output[3] = aw * bw - az * bz;
	return output;
}

Quat.rotationTo = function(output, a, b) {
	var tmpvec3 = Vec3.create();
	var xUnitVec3 = Vec3.fromValues(1, 0, 0);
	var yUnitVec3 = Vec3.fromValues(0, 1, 0);
	var dot = Vec3.dot(a, b);
	var nines = 999999;
	nines /= 1000000;
	var epsilon = 1;
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

Quat.scale = function(output, a, b) {
	return Vec4.scale(output, a, b);
}

Quat.set = function(output, x, y, z, w) {
	return Vec4.set(output, x, y, z, w);
}

Quat.setAxes = function(output, view, right, up) {
	var matr = Mat3.create();
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

Quat.setAxisAngle = function(output, axis, rad) {
	rad = rad / (2);
	var s = Platform.sin(rad);
	output[0] = s * axis[0];
	output[1] = s * axis[1];
	output[2] = s * axis[2];
	output[3] = Platform.cos(rad);
	return output;
}

Quat.slerp = function(output, a, b, t) {
	var ax = a[0];
	var ay = a[1];
	var az = a[2];
	var aw = a[3];
	var bx = b[0];
	var by = b[1];
	var bz = b[2];
	var bw = b[3];
	var omega;
	var cosom;
	var sinom;
	var scale0;
	var scale1;
	cosom = ax * bx + ay * by + az * bz + aw * bw;
	if (cosom < 0) {
		cosom = -cosom;
		bx = -bx;
		by = -by;
		bz = -bz;
		bw = -bw;
	}
	var one = 1;
	var epsilon = one / (1000000);
	if (one - cosom > epsilon) {
		omega = Platform.acos(cosom);
		sinom = Platform.sin(omega);
		scale0 = Platform.sin((one - t) * omega) / (sinom);
		scale1 = Platform.sin(t * omega) / (sinom);
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

Quat.sqrLen = function(a) {
	return Quat.squaredLength(a);
}

Quat.squaredLength = function(a) {
	return Vec4.squaredLength(a);
}

Quat.prototype.f = function() {
}

function TestMat4()
{
	this.center = null;
	this.citoassert = null;
	this.eye = null;
	this.identity = null;
	this.matA = null;
	this.matB = null;
	this.output = null;
	this.right = null;
	this.up = null;
	this.view = null;
}

TestMat4.prototype.adjoint = function() {
	this.adjointWithASeparateOutputMatrix();
	this.adjointWhenMatAIsTheOutputMatrix();
}

TestMat4.prototype.adjointWhenMatAIsTheOutputMatrix = function() {
}

TestMat4.prototype.adjointWithASeparateOutputMatrix = function() {
}

TestMat4.prototype.arr16 = function(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9, p_10, p_11, p_12, p_13, p_14, p_15, p_16) {
	var arr = this.citoassert.arr16(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9, p_10, p_11, p_12, p_13, p_14, p_15, p_16);
	arr[0] = arr[0];
	return arr;
}

TestMat4.prototype.arr3 = function(p, p_2, p_3) {
	var arr = this.citoassert.arr3(p, p_2, p_3);
	arr[0] = arr[0];
	return arr;
}

TestMat4.prototype.arr9 = function(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9) {
	return this.citoassert.arr9(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9);
}

TestMat4.prototype.assertArrayEqual = function(actual, expected, length, msg) {
	this.citoassert.assertArrayEqual(actual, expected, length, msg);
}

TestMat4.prototype.assertCloseTo = function(actual, expected, msg) {
	this.citoassert.assertCloseTo(actual, expected, msg);
}

TestMat4.prototype.assertEqual = function(actual, expected, msg) {
	this.citoassert.assertEqual(actual, expected, msg);
}

TestMat4.prototype.cloneIt = function() {
	var result = Mat4.cloneIt(this.matA);
	this.assertArrayEqual(result, this.matA, 16, "Clone should return a 16 element array initialized to the values in matA");
}

TestMat4.prototype.copy = function() {
	var result = Mat4.copy(this.output, this.matA);
	this.assertArrayEqual(this.output, this.matA, 16, "Copy should place values into out");
	this.assertArrayEqual(result, this.output, 16, "Copy should return out");
}

TestMat4.prototype.create = function() {
	var result = Mat4.create();
	this.assertArrayEqual(result, this.identity, 16, "Create should return a 16 element array initialized to a 4x4 identity matrix");
}

TestMat4.prototype.determinant = function() {
}

TestMat4.prototype.frustum = function() {
	var result = Mat4.frustum(this.output, -1, 1, -1, 1, -1, 1);
	this.assertArrayEqual(result, this.arr16(-1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, 1, 0), 16, "Frustum should place values into out");
	this.assertArrayEqual(result, this.output, 16, "Frustum should return out");
}

TestMat4.prototype.identity_ = function() {
	var result = Mat4.identity_(this.output);
	this.assertArrayEqual(this.output, this.identity, 16, "Copy should place values into out");
	this.assertArrayEqual(result, this.output, 16, "Copy should return out");
}

TestMat4.prototype.invert = function() {
	this.invertWithASeparateOutputMatrix();
	this.invertWhenMatAIsTheOutputMatrix();
}

TestMat4.prototype.invertWhenMatAIsTheOutputMatrix = function() {
}

TestMat4.prototype.invertWithASeparateOutputMatrix = function() {
}

TestMat4.prototype.lookAt = function() {
	this.eye = this.arr3(0, 0, 1);
	this.center = this.arr3(0, 0, -1);
	this.up = this.arr3(0, 1, 0);
	this.lookAtLookingDown();
	this.lookAt74();
	this.lookAt3();
}

TestMat4.prototype.lookAt3 = function() {
}

TestMat4.prototype.lookAt74 = function() {
	var six = 6;
	Mat4.lookAt(this.output, this.arr3(0, 2, 0), this.arr3(0, six / (10), 0), this.arr3(0, 0, -1));
	var result = Vec3.transformMat4(Vec3.create(), this.arr3(0, 2, -1), this.output);
	this.assertArrayEqual(result, this.arr3(0, 1, 0), 3, "LookAt74 should transform a point 'above' into local +Y");
	result = Vec3.transformMat4(Vec3.create(), this.arr3(1, 2, 0), this.output);
	this.assertArrayEqual(result, this.arr3(1, 0, 0), 3, "LookAt74 should transform a point 'right of' into local +X");
	result = Vec3.transformMat4(Vec3.create(), this.arr3(0, 1, 0), this.output);
	this.assertArrayEqual(result, this.arr3(0, 0, -1), 3, "LookAt74 should transform a point 'in front of' into local -Z");
}

TestMat4.prototype.lookAtLookingDown = function() {
	this.view = this.arr3(0, -1, 0);
	this.up = this.arr3(0, 0, -1);
	this.right = this.arr3(1, 0, 0);
	var result = Mat4.lookAt(this.output, this.arr3(0, 0, 0), this.view, this.up);
	result = Vec3.transformMat4(Vec3.create(), this.view, this.output);
	this.assertArrayEqual(result, this.arr3(0, 0, -1), 3, "LookAtLookingDown should transform view into local -Z");
	result = Vec3.transformMat4(Vec3.create(), this.up, this.output);
	this.assertArrayEqual(result, this.arr3(0, 1, 0), 3, "LookAtLookingDownshould transform up into local +Y");
	result = Vec3.transformMat4(Vec3.create(), this.right, this.output);
	this.assertArrayEqual(result, this.arr3(1, 0, 0), 3, "LookAtLookingDownshould transform right into local +X");
	this.assertArrayEqual(result, this.output, 3, "LookAtLookingDown should return out");
}

TestMat4.prototype.multiply = function() {
	this.multiplyWithASeparateOutputMatrix();
	this.multiplyWhenMatAIsTheOutputMatrix();
	this.multiplyWhenMatBIsTheOutputMatrix();
}

TestMat4.prototype.multiplyWhenMatAIsTheOutputMatrix = function() {
}

TestMat4.prototype.multiplyWhenMatBIsTheOutputMatrix = function() {
}

TestMat4.prototype.multiplyWithASeparateOutputMatrix = function() {
}

TestMat4.prototype.ortho = function() {
	var result = Mat4.ortho(this.output, -1, 1, -1, 1, -1, 1);
	this.assertArrayEqual(result, this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1), 16, "Ortho should place values into out");
	this.assertArrayEqual(result, this.output, 16, "Ortho should return out");
}

TestMat4.prototype.perspective = function() {
	this.perspective1();
	this.perspectiveWithNonzeroNear45degFovyAndRealisticAspectRatio();
}

TestMat4.prototype.perspective1 = function() {
}

TestMat4.prototype.perspectiveWithNonzeroNear45degFovyAndRealisticAspectRatio = function() {
}

TestMat4.prototype.resetTests = function() {
	this.matA = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 2, 3, 1);
	this.matB = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 4, 5, 6, 1);
	this.output = this.arr16(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
	this.identity = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
}

TestMat4.prototype.rotate = function() {
	this.rotateWithASeparateOutputMatrix();
	this.rotateWhenMatAIsTheOutputMatrix();
}

TestMat4.prototype.rotateWhenMatAIsTheOutputMatrix = function() {
}

TestMat4.prototype.rotateWithASeparateOutputMatrix = function() {
}

TestMat4.prototype.rotateX = function() {
	this.rotateXWithASeparateOutputMatrix();
	this.rotateXWhenMatAIsTheOutputMatrix();
}

TestMat4.prototype.rotateXWhenMatAIsTheOutputMatrix = function() {
}

TestMat4.prototype.rotateXWithASeparateOutputMatrix = function() {
}

TestMat4.prototype.rotateY = function() {
	this.rotateYWithASeparateOutputMatrix();
	this.rotateYWhenMatAIsTheOutputMatrix();
}

TestMat4.prototype.rotateYWhenMatAIsTheOutputMatrix = function() {
}

TestMat4.prototype.rotateYWithASeparateOutputMatrix = function() {
}

TestMat4.prototype.rotateZ = function() {
	this.rotateZWithASeparateOutputMatrix();
	this.rotateZWhenMatAIsTheOutputMatrix();
}

TestMat4.prototype.rotateZWhenMatAIsTheOutputMatrix = function() {
}

TestMat4.prototype.rotateZWithASeparateOutputMatrix = function() {
}

TestMat4.prototype.scale = function() {
	this.scaleWithASeparateOutputMatrix();
	this.scaleWhenMatAIsTheOutputMatrix();
}

TestMat4.prototype.scaleWhenMatAIsTheOutputMatrix = function() {
}

TestMat4.prototype.scaleWithASeparateOutputMatrix = function() {
}

TestMat4.prototype.str = function() {
}

TestMat4.prototype.test = function() {
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

TestMat4.prototype.translate = function() {
	this.translateWithASeparateOutputMatrix();
	this.translateWhenMatAIsTheOutputMatrix();
}

TestMat4.prototype.translateWhenMatAIsTheOutputMatrix = function() {
}

TestMat4.prototype.translateWithASeparateOutputMatrix = function() {
}

TestMat4.prototype.transpose = function() {
	this.transposeWithASeparateOutputMatrix();
	this.transposeWhenMatAIsTheOutputMatrix();
}

TestMat4.prototype.transposeWhenMatAIsTheOutputMatrix = function() {
}

TestMat4.prototype.transposeWithASeparateOutputMatrix = function() {
}

function TestVec3()
{
	this.citoassert = null;
	this.output = null;
	this.vecA = null;
	this.vecB = null;
}

TestVec3.prototype.add = function() {
	this.addWithASeparateOutputVector();
	this.addWhenVecAIsTheOutputVector();
	this.addWhenVecBIsTheOutputVector();
}

TestVec3.prototype.addWhenVecAIsTheOutputVector = function() {
}

TestVec3.prototype.addWhenVecBIsTheOutputVector = function() {
}

TestVec3.prototype.addWithASeparateOutputVector = function() {
	var result = Vec3.add(this.output, this.vecA, this.vecB);
	this.assertArrayEqual(this.output, this.arr3(5, 7, 9), 3, "Add should place values into out");
	this.assertArrayEqual(result, this.output, 3, "Add should return out");
	this.assertArrayEqual(this.vecA, this.arr3(1, 2, 3), 3, "Add should not modify vecA");
	this.assertArrayEqual(this.vecB, this.arr3(4, 5, 6), 3, "Add should not modify vecB");
}

TestVec3.prototype.arr16 = function(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9, p_10, p_11, p_12, p_13, p_14, p_15, p_16) {
	return this.citoassert.arr16(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9, p_10, p_11, p_12, p_13, p_14, p_15, p_16);
}

TestVec3.prototype.arr3 = function(p, p_2, p_3) {
	return this.citoassert.arr3(p, p_2, p_3);
}

TestVec3.prototype.arr9 = function(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9) {
	return this.citoassert.arr9(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9);
}

TestVec3.prototype.assertArrayEqual = function(actual, expected, length, msg) {
	this.citoassert.assertArrayEqual(actual, expected, length, msg);
}

TestVec3.prototype.assertCloseTo = function(actual, expected, msg) {
	this.citoassert.assertCloseTo(actual, expected, msg);
}

TestVec3.prototype.assertEqual = function(actual, expected, msg) {
	this.citoassert.assertEqual(actual, expected, msg);
}

TestVec3.prototype.cloneIt = function() {
	var result = Vec3.cloneIt(this.vecA);
	this.assertArrayEqual(result, this.vecA, 3, "Clone should return a 3 element array initialized to the values in vecA");
}

TestVec3.prototype.copy = function() {
	var result = Vec3.copy(this.output, this.vecA);
	this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "Copy should place values into out");
	this.assertArrayEqual(result, this.output, 3, "Copy should return output");
}

TestVec3.prototype.create = function() {
	var result = Vec3.create();
	this.assertArrayEqual(result, this.arr3(0, 0, 0), 3, "Create should return a 3 element array initialized to 0s");
}

TestVec3.prototype.cross = function() {
	this.crossWithASeparateOutputVector();
	this.crossWhenVecAIsTheOutputVector();
	this.crossWhenVecBIsTheOutputVector();
}

TestVec3.prototype.crossWhenVecAIsTheOutputVector = function() {
}

TestVec3.prototype.crossWhenVecBIsTheOutputVector = function() {
}

TestVec3.prototype.crossWithASeparateOutputVector = function() {
}

TestVec3.prototype.distance = function() {
	var result = Vec3.distance(this.vecA, this.vecB);
	var r = 5196152;
	r /= 1000000;
	this.assertCloseTo(result, r, "Distance should return the distance");
}

TestVec3.prototype.divide = function() {
	this.divideWithASeparateOutputVector();
	this.divideWhenVecAIsTheOutputVector();
	this.divideWhenVecBIsTheOutputVector();
}

TestVec3.prototype.divideWhenVecAIsTheOutputVector = function() {
}

TestVec3.prototype.divideWhenVecBIsTheOutputVector = function() {
}

TestVec3.prototype.divideWithASeparateOutputVector = function() {
}

TestVec3.prototype.dot = function() {
	var result = Vec3.dot(this.vecA, this.vecB);
	this.assertEqual(result, 32, "Dot should return the dot product");
	this.assertArrayEqual(this.vecA, this.arr3(1, 2, 3), 3, "Dot should not modify vecA");
	this.assertArrayEqual(this.vecB, this.arr3(4, 5, 6), 3, "Dot should not modify vecB");
}

TestVec3.prototype.forEachDo = function() {
}

TestVec3.prototype.fromValues = function() {
	var result = Vec3.fromValues(1, 2, 3);
	this.assertArrayEqual(result, this.arr3(1, 2, 3), 3, "FromValues should return a 3 element array initialized to the values passed");
}

TestVec3.prototype.length_ = function() {
	var result = Vec3.length_(this.vecA);
	var r = 3741657;
	r /= 1000000;
	this.assertCloseTo(result, r, "Length should return the length");
}

TestVec3.prototype.lerp = function() {
	this.lerpWithASeparateOutputVector();
	this.lerpWhenVecAIsTheOutputVector();
	this.lerpWhenVecBIsTheOutputVector();
}

TestVec3.prototype.lerpWhenVecAIsTheOutputVector = function() {
}

TestVec3.prototype.lerpWhenVecBIsTheOutputVector = function() {
}

TestVec3.prototype.lerpWithASeparateOutputVector = function() {
}

TestVec3.prototype.max = function() {
	this.maxWithASeparateOutputVector();
	this.maxWhenVecAIsTheOutputVector();
	this.maxWhenVecBIsTheOutputVector();
}

TestVec3.prototype.maxWhenVecAIsTheOutputVector = function() {
}

TestVec3.prototype.maxWhenVecBIsTheOutputVector = function() {
}

TestVec3.prototype.maxWithASeparateOutputVector = function() {
}

TestVec3.prototype.min = function() {
	this.minWithASeparateOutputVector();
	this.minWhenVecAIsTheOutputVector();
	this.minWhenVecBIsTheOutputVector();
}

TestVec3.prototype.minWhenVecAIsTheOutputVector = function() {
}

TestVec3.prototype.minWhenVecBIsTheOutputVector = function() {
}

TestVec3.prototype.minWithASeparateOutputVector = function() {
}

TestVec3.prototype.multiply = function() {
	this.multiplyWithASeparateOutputVector();
	this.multiplyWhenVecAIsTheOutputVector();
	this.multiplyWhenVecBIsTheOutputVector();
}

TestVec3.prototype.multiplyWhenVecAIsTheOutputVector = function() {
}

TestVec3.prototype.multiplyWhenVecBIsTheOutputVector = function() {
}

TestVec3.prototype.multiplyWithASeparateOutputVector = function() {
}

TestVec3.prototype.negate = function() {
	this.negateWithASeparateOutputVector();
	this.negateWhenVecAIsTheOutputVector();
}

TestVec3.prototype.negateWhenVecAIsTheOutputVector = function() {
	var result = Vec3.negate(this.vecA, this.vecA);
	this.assertArrayEqual(this.vecA, this.arr3(-1, -2, -3), 3, "NegateWhenVecAIsTheOutputVector should place values into vecA");
	this.assertArrayEqual(result, this.vecA, 3, "NegateWhenVecAIsTheOutputVector should return vecA");
}

TestVec3.prototype.negateWithASeparateOutputVector = function() {
	var result = Vec3.negate(this.output, this.vecA);
	this.assertArrayEqual(this.output, this.arr3(-1, -2, -3), 3, "NegateWithASeparateOutputVector should place values into out");
	this.assertArrayEqual(result, this.output, 3, "NegateWithASeparateOutputVector should should return out");
	this.assertArrayEqual(this.vecA, this.arr3(1, 2, 3), 3, "NegateWithASeparateOutputVector should not modify vecA");
}

TestVec3.prototype.normalize = function() {
	this.normalizeWithASeparateOutputVector();
	this.normalizeWhenVecAIsTheOutputVector();
}

TestVec3.prototype.normalizeWhenVecAIsTheOutputVector = function() {
	var vecA1 = this.arr3(5, 0, 0);
	var result = Vec3.normalize(this.vecA, this.vecA);
	this.assertArrayEqual(this.vecA, this.arr3(1, 0, 0), 3, "NormalizeWhenVecAIsTheOutputVector should place values into vecA");
	this.assertArrayEqual(result, this.vecA, 3, "NormalizeWhenVecAIsTheOutputVector should return vecA");
}

TestVec3.prototype.normalizeWithASeparateOutputVector = function() {
	this.vecA = this.arr3(5, 0, 0);
	var result = Vec3.normalize(this.output, this.vecA);
	this.assertArrayEqual(this.output, this.arr3(1, 0, 0), 3, "NormalizeWithASeparateOutputVector should place values into out");
	this.assertArrayEqual(result, this.output, 3, "NormalizeWithASeparateOutputVector should return out");
	this.assertArrayEqual(this.vecA, this.arr3(5, 0, 0), 3, "NormalizeWithASeparateOutputVector should not modify vecA");
}

TestVec3.prototype.resetTests = function() {
	this.vecA = this.arr3(1, 2, 3);
	this.vecB = this.arr3(4, 5, 6);
	this.output = this.arr3(0, 0, 0);
}

TestVec3.prototype.scale = function() {
	this.scaleWithASeparateOutputVector();
	this.scaleWhenVecAIsTheOutputVector();
}

TestVec3.prototype.scaleAndAdd = function() {
	this.scaleAndAddWithASeparateOutputVector();
	this.scaleAndAddWhenVecAIsTheOutputVector();
	this.scaleAndAddWhenVecBIsTheOutputVector();
}

TestVec3.prototype.scaleAndAddWhenVecAIsTheOutputVector = function() {
}

TestVec3.prototype.scaleAndAddWhenVecBIsTheOutputVector = function() {
}

TestVec3.prototype.scaleAndAddWithASeparateOutputVector = function() {
}

TestVec3.prototype.scaleWhenVecAIsTheOutputVector = function() {
}

TestVec3.prototype.scaleWithASeparateOutputVector = function() {
}

TestVec3.prototype.set = function() {
	var result = Vec3.set(this.output, 1, 2, 3);
	this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "Set should place values into output");
	this.assertArrayEqual(result, this.output, 3, "Set should return output");
}

TestVec3.prototype.squaredDistance = function() {
	var result = Vec3.squaredDistance(this.vecA, this.vecB);
	this.assertEqual(result, 27, "SquaredDistance should return the squared distance");
}

TestVec3.prototype.squaredLength = function() {
	var result = Vec3.squaredLength(this.vecA);
	this.assertEqual(result, 14, "SquaredLength should return the squared length");
}

TestVec3.prototype.str = function() {
}

TestVec3.prototype.subtract = function() {
	this.subtractShouldHaveAnAliasCalledSub();
	this.subtractWithASeparateOutputVector();
	this.subtractWhenVecAIsTheOutputVector();
	this.subtractWhenVecBIsTheOutputVector();
}

TestVec3.prototype.subtractShouldHaveAnAliasCalledSub = function() {
}

TestVec3.prototype.subtractWhenVecAIsTheOutputVector = function() {
}

TestVec3.prototype.subtractWhenVecBIsTheOutputVector = function() {
}

TestVec3.prototype.subtractWithASeparateOutputVector = function() {
}

TestVec3.prototype.test = function() {
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

TestVec3.prototype.transformMat3With90DegAboutX = function() {
	var result = Vec3.transformMat3(this.output, this.arr3(0, 1, 0), this.arr9(1, 0, 0, 0, 0, 1, 0, -1, 0));
	this.assertArrayEqual(this.output, this.arr3(0, 0, 1), 3, "TransformMat3With90DegAboutX should produce correct output");
}

TestVec3.prototype.transformMat3With90DegAboutY = function() {
	var result = Vec3.transformMat3(this.output, this.arr3(1, 0, 0), this.arr9(0, 0, -1, 0, 1, 0, 1, 0, 0));
	this.assertArrayEqual(this.output, this.arr3(0, 0, -1), 3, "TransformMat3With90DegAboutU should produce correct output");
}

TestVec3.prototype.transformMat3With90DegAboutZ = function() {
	var result = Vec3.transformMat3(this.output, this.arr3(1, 0, 0), this.arr9(0, 1, 0, -1, 0, 0, 0, 0, 1));
	this.assertArrayEqual(this.output, this.arr3(0, 1, 0), 3, "TransformMat3With90DegAboutZ should produce correct output");
}

TestVec3.prototype.transformMat3WithALookAtNormalMatrix = function() {
	var matr = Mat4.lookAt(Mat4.create(), this.arr3(5, 6, 7), this.arr3(2, 6, 7), this.arr3(0, 1, 0));
	var n = Mat3.create();
	matr = Mat3.transpose(n, Mat3.invert(n, Mat3.fromMat4(n, matr)));
	var result = Vec3.transformMat3(this.output, this.arr3(1, 0, 0), matr);
	this.assertArrayEqual(this.output, this.arr3(0, 0, 1), 3, "TransformMat3WithALookAtNormalMatrix should rotate the input");
	this.assertArrayEqual(result, this.output, 3, "TransformMat3WithALookAtNormalMatrix should return output");
}

TestVec3.prototype.transformMat3WithAnIdentity = function() {
	var matr = this.arr9(1, 0, 0, 0, 1, 0, 0, 0, 1);
	var result = Vec3.transformMat3(this.output, this.vecA, matr);
	this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "TransformMat3WithAnIdentity should produce the input");
	this.assertArrayEqual(result, this.output, 3, "TransformMat3WithAnIdentity should return output");
}

TestVec3.prototype.transformMat4 = function() {
	this.transformMat4WithAnIdentity();
	this.transformMat4WithALookAt();
	this.transformMat3WithAnIdentity();
	this.transformMat3With90DegAboutX();
	this.transformMat3With90DegAboutY();
	this.transformMat3With90DegAboutZ();
	this.transformMat3WithALookAtNormalMatrix();
}

TestVec3.prototype.transformMat4WithALookAt = function() {
	var matr = Mat4.lookAt(Mat4.create(), this.arr3(5, 6, 7), this.arr3(2, 6, 7), this.arr3(0, 1, 0));
	var result = Vec3.transformMat4(this.output, this.vecA, matr);
	this.assertArrayEqual(this.output, this.arr3(4, -4, -4), 3, "TransformMat4WithALookAt should rotate and translate the input");
	this.assertArrayEqual(result, this.output, 3, "TransformMat4WithALookAt should return out");
}

TestVec3.prototype.transformMat4WithAnIdentity = function() {
	var matr = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
	var result = Vec3.transformMat4(this.output, this.vecA, matr);
	this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "TransformMat4WithAnIdentity should produce the input");
	this.assertArrayEqual(result, this.output, 3, "TransformMat4WithAnIdentity should return output");
}

function Tests()
{
}

Tests.runAll = function() {
	var testvec3 = new TestVec3();
	testvec3.test();
	var testmat4 = new TestMat4();
	testmat4.test();
}

function Vec2()
{
}

Vec2.add = function(output, a, b) {
	output[0] = a[0] + b[0];
	output[1] = a[1] + b[1];
	return output;
}

Vec2.cloneIt = function(a) {
	var output = new Array(2);
	output[0] = a[0];
	output[1] = a[1];
	return output;
}

Vec2.copy = function(output, a) {
	output[0] = a[0];
	output[1] = a[1];
	return output;
}

Vec2.create = function() {
	var output = new Array(2);
	output[0] = 0;
	output[1] = 0;
	return output;
}

Vec2.cross = function(output, a, b) {
	var z = a[0] * b[1] - a[1] * b[0];
	output[0] = output[1] = 0;
	output[2] = z;
	return output;
}

Vec2.dist = function(a, b) {
	return Vec2.distance(a, b);
}

Vec2.distance = function(a, b) {
	var x = b[0] - a[0];
	var y = b[1] - a[1];
	return Platform.sqrt(x * x + y * y);
}

Vec2.div = function(output, a, b) {
	return Vec2.divide(output, a, b);
}

Vec2.divide = function(output, a, b) {
	output[0] = a[0] / (b[0]);
	output[1] = a[1] / (b[1]);
	return output;
}

Vec2.dot = function(a, b) {
	return a[0] * b[0] + a[1] * b[1];
}

Vec2.fromValues = function(x, y) {
	var output = new Array(2);
	output[0] = x;
	output[1] = y;
	return output;
}

Vec2.len = function(a) {
	return Vec2.length_(a);
}

Vec2.length_ = function(a) {
	var x = a[0];
	var y = a[1];
	return Platform.sqrt(x * x + y * y);
}

Vec2.lerp = function(output, a, b, t) {
	var ax = a[0];
	var ay = a[1];
	output[0] = ax + t * (b[0] - ax);
	output[1] = ay + t * (b[1] - ay);
	return output;
}

Vec2.max = function(output, a, b) {
	output[0] = GlMatrixMath.max(a[0], b[0]);
	output[1] = GlMatrixMath.max(a[1], b[1]);
	return output;
}

Vec2.min = function(output, a, b) {
	output[0] = GlMatrixMath.min(a[0], b[0]);
	output[1] = GlMatrixMath.min(a[1], b[1]);
	return output;
}

Vec2.mul = function(output, a, b) {
	return Vec2.multiply(output, a, b);
}

Vec2.multiply = function(output, a, b) {
	output[0] = a[0] * b[0];
	output[1] = a[1] * b[1];
	return output;
}

Vec2.negate = function(output, a) {
	output[0] = -a[0];
	output[1] = -a[1];
	return output;
}

Vec2.normalize = function(output, a) {
	var x = a[0];
	var y = a[1];
	var len = x * x + y * y;
	if (len > 0) {
		len = 1 / (Platform.sqrt(len));
		output[0] = a[0] * len;
		output[1] = a[1] * len;
	}
	return output;
}

Vec2.scale = function(output, a, b) {
	output[0] = a[0] * b;
	output[1] = a[1] * b;
	return output;
}

Vec2.scaleAndAdd = function(output, a, b, scale) {
	output[0] = a[0] + b[0] * scale;
	output[1] = a[1] + b[1] * scale;
	return output;
}

Vec2.set = function(output, x, y) {
	output[0] = x;
	output[1] = y;
	return output;
}

Vec2.sqrDist = function(a, b) {
	return Vec2.squaredDistance(a, b);
}

Vec2.sqrLen = function(a) {
	return Vec2.squaredLength(a);
}

Vec2.squaredDistance = function(a, b) {
	var x = b[0] - a[0];
	var y = b[1] - a[1];
	return x * x + y * y;
}

Vec2.squaredLength = function(a) {
	var x = a[0];
	var y = a[1];
	return x * x + y * y;
}

Vec2.sub = function(output, a, b) {
	return Vec2.subtract(output, a, b);
}

Vec2.subtract = function(output, a, b) {
	output[0] = a[0] - b[0];
	output[1] = a[1] - b[1];
	return output;
}

Vec2.transformMat2 = function(output, a, m) {
	var x = a[0];
	var y = a[1];
	output[0] = m[0] * x + m[2] * y;
	output[1] = m[1] * x + m[3] * y;
	return output;
}

Vec2.transformMat2d = function(output, a, m) {
	var x = a[0];
	var y = a[1];
	output[0] = m[0] * x + m[2] * y + m[4];
	output[1] = m[1] * x + m[3] * y + m[5];
	return output;
}

Vec2.transformMat3 = function(output, a, m) {
	var x = a[0];
	var y = a[1];
	output[0] = m[0] * x + m[3] * y + m[6];
	output[1] = m[1] * x + m[4] * y + m[7];
	return output;
}

Vec2.transformMat4 = function(output, a, m) {
	var x = a[0];
	var y = a[1];
	output[0] = m[0] * x + m[4] * y + m[12];
	output[1] = m[1] * x + m[5] * y + m[13];
	return output;
}

Vec2.prototype.f = function() {
}

function Vec3()
{
}

Vec3.add = function(output, a, b) {
	output[0] = a[0] + b[0];
	output[1] = a[1] + b[1];
	output[2] = a[2] + b[2];
	return output;
}

Vec3.cloneIt = function(a) {
	var output = new Array(3);
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	return output;
}

Vec3.copy = function(output, a) {
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	return output;
}

Vec3.create = function() {
	var output = new Array(3);
	output[0] = 0;
	output[1] = 0;
	output[2] = 0;
	return output;
}

Vec3.cross = function(output, a, b) {
	var ax = a[0];
	var ay = a[1];
	var az = a[2];
	var bx = b[0];
	var by = b[1];
	var bz = b[2];
	output[0] = ay * bz - az * by;
	output[1] = az * bx - ax * bz;
	output[2] = ax * by - ay * bx;
	return output;
}

Vec3.dist = function(a, b) {
	return Vec3.distance(a, b);
}

Vec3.distance = function(a, b) {
	var x = b[0] - a[0];
	var y = b[1] - a[1];
	var z = b[2] - a[2];
	return Platform.sqrt(x * x + y * y + z * z);
}

Vec3.div = function(output, a, b) {
	return Vec3.divide(output, a, b);
}

Vec3.divide = function(output, a, b) {
	output[0] = a[0] / (b[0]);
	output[1] = a[1] / (b[1]);
	output[2] = a[2] / (b[2]);
	return output;
}

Vec3.dot = function(a, b) {
	return a[0] * b[0] + a[1] * b[1] + a[2] * b[2];
}

Vec3.fromValues = function(x, y, z) {
	var output = new Array(3);
	output[0] = x;
	output[1] = y;
	output[2] = z;
	return output;
}

Vec3.len = function(a) {
	return Vec3.length_(a);
}

Vec3.length_ = function(a) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	return Platform.sqrt(x * x + y * y + z * z);
}

Vec3.lerp = function(output, a, b, t) {
	var ax = a[0];
	var ay = a[1];
	var az = a[2];
	output[0] = ax + t * (b[0] - ax);
	output[1] = ay + t * (b[1] - ay);
	output[2] = az + t * (b[2] - az);
	return output;
}

Vec3.max = function(output, a, b) {
	output[0] = GlMatrixMath.max(a[0], b[0]);
	output[1] = GlMatrixMath.max(a[1], b[1]);
	output[2] = GlMatrixMath.max(a[2], b[2]);
	return output;
}

Vec3.min = function(output, a, b) {
	output[0] = GlMatrixMath.min(a[0], b[0]);
	output[1] = GlMatrixMath.min(a[1], b[1]);
	output[2] = GlMatrixMath.min(a[2], b[2]);
	return output;
}

Vec3.mul = function(output, a, b) {
	return Vec3.multiply(output, a, b);
}

Vec3.multiply = function(output, a, b) {
	output[0] = a[0] * b[0];
	output[1] = a[1] * b[1];
	output[2] = a[2] * b[2];
	return output;
}

Vec3.negate = function(output, a) {
	output[0] = 0 - a[0];
	output[1] = 0 - a[1];
	output[2] = 0 - a[2];
	return output;
}

Vec3.normalize = function(output, a) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	var len = x * x + y * y + z * z;
	if (len > 0) {
		var one = 1;
		len = one / (Platform.sqrt(len));
		output[0] = a[0] * len;
		output[1] = a[1] * len;
		output[2] = a[2] * len;
	}
	return output;
}

Vec3.scale = function(output, a, b) {
	output[0] = a[0] * b;
	output[1] = a[1] * b;
	output[2] = a[2] * b;
	return output;
}

Vec3.scaleAndAdd = function(output, a, b, scale) {
	output[0] = a[0] + b[0] * scale;
	output[1] = a[1] + b[1] * scale;
	output[2] = a[2] + b[2] * scale;
	return output;
}

Vec3.set = function(output, x, y, z) {
	output[0] = x;
	output[1] = y;
	output[2] = z;
	return output;
}

Vec3.sqrDist = function(a, b) {
	return Vec3.squaredDistance(a, b);
}

Vec3.sqrLen = function(a) {
	return Vec3.squaredLength(a);
}

Vec3.squaredDistance = function(a, b) {
	var x = b[0] - a[0];
	var y = b[1] - a[1];
	var z = b[2] - a[2];
	return x * x + y * y + z * z;
}

Vec3.squaredLength = function(a) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	return x * x + y * y + z * z;
}

Vec3.sub = function(output, a, b) {
	return Vec3.substract(output, a, b);
}

Vec3.substract = function(output, a, b) {
	output[0] = a[0] - b[0];
	output[1] = a[1] - b[1];
	output[2] = a[2] - b[2];
	return output;
}

Vec3.transformMat3 = function(output, a, m) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	output[0] = x * m[0] + y * m[3] + z * m[6];
	output[1] = x * m[1] + y * m[4] + z * m[7];
	output[2] = x * m[2] + y * m[5] + z * m[8];
	return output;
}

Vec3.transformMat4 = function(output, a, m) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	output[0] = m[0] * x + m[4] * y + m[8] * z + m[12];
	output[1] = m[1] * x + m[5] * y + m[9] * z + m[13];
	output[2] = m[2] * x + m[6] * y + m[10] * z + m[14];
	return output;
}

Vec3.transformQuat = function(output, a, q) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	var qx = q[0];
	var qy = q[1];
	var qz = q[2];
	var qw = q[3];
	var ix = qw * x + qy * z - qz * y;
	var iy = qw * y + qz * x - qx * z;
	var iz = qw * z + qx * y - qy * x;
	var iw = (0 - qx) * x - qy * y - qz * z;
	output[0] = ix * qw + iw * (0 - qx) + iy * (0 - qz) - iz * (0 - qy);
	output[1] = iy * qw + iw * (0 - qy) + iz * (0 - qx) - ix * (0 - qz);
	output[2] = iz * qw + iw * (0 - qz) + ix * (0 - qy) - iy * (0 - qx);
	return output;
}

Vec3.str = function(a) {
	return "";
}

function Vec4()
{
}

Vec4.add = function(output, a, b) {
	output[0] = a[0] + b[0];
	output[1] = a[1] + b[1];
	output[2] = a[2] + b[2];
	output[3] = a[3] + b[3];
	return output;
}

Vec4.cloneIt = function(a) {
	var output = new Array(4);
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	return output;
}

Vec4.copy = function(output, a) {
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	return output;
}

Vec4.create = function() {
	var output = new Array(4);
	output[0] = 0;
	output[1] = 0;
	output[2] = 0;
	output[3] = 0;
	return output;
}

Vec4.dist = function(a, b) {
	return Vec4.distance(a, b);
}

Vec4.distance = function(a, b) {
	var x = b[0] - a[0];
	var y = b[1] - a[1];
	var z = b[2] - a[2];
	var w = b[3] - a[3];
	return Platform.sqrt(x * x + y * y + z * z + w * w);
}

Vec4.div = function(output, a, b) {
	return Vec4.divide(output, a, b);
}

Vec4.divide = function(output, a, b) {
	output[0] = a[0] / (b[0]);
	output[1] = a[1] / (b[1]);
	output[2] = a[2] / (b[2]);
	output[3] = a[3] / (b[3]);
	return output;
}

Vec4.dot = function(a, b) {
	return a[0] * b[0] + a[1] * b[1] + a[2] * b[2] + a[3] * b[3];
}

Vec4.fromValues = function(x, y, z, w) {
	var output = new Array(4);
	output[0] = x;
	output[1] = y;
	output[2] = z;
	output[3] = w;
	return output;
}

Vec4.len = function(a) {
	return Vec4.length_(a);
}

Vec4.length_ = function(a) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	var w = a[3];
	return Platform.sqrt(x * x + y * y + z * z + w * w);
}

Vec4.lerp = function(output, a, b, t) {
	var ax = a[0];
	var ay = a[1];
	var az = a[2];
	var aw = a[3];
	output[0] = ax + t * (b[0] - ax);
	output[1] = ay + t * (b[1] - ay);
	output[2] = az + t * (b[2] - az);
	output[3] = aw + t * (b[3] - aw);
	return output;
}

Vec4.max = function(output, a, b) {
	output[0] = GlMatrixMath.max(a[0], b[0]);
	output[1] = GlMatrixMath.max(a[1], b[1]);
	output[2] = GlMatrixMath.max(a[2], b[2]);
	output[3] = GlMatrixMath.max(a[3], b[3]);
	return output;
}

Vec4.min = function(output, a, b) {
	output[0] = GlMatrixMath.min(a[0], b[0]);
	output[1] = GlMatrixMath.min(a[1], b[1]);
	output[2] = GlMatrixMath.min(a[2], b[2]);
	output[3] = GlMatrixMath.min(a[3], b[3]);
	return output;
}

Vec4.mul = function(output, a, b) {
	return Vec4.multiply(output, a, b);
}

Vec4.multiply = function(output, a, b) {
	output[0] = a[0] * b[0];
	output[1] = a[1] * b[1];
	output[2] = a[2] * b[2];
	output[3] = a[3] * b[3];
	return output;
}

Vec4.negate = function(output, a) {
	output[0] = -a[0];
	output[1] = -a[1];
	output[2] = -a[2];
	output[3] = -a[3];
	return output;
}

Vec4.normalize = function(output, a) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	var w = a[3];
	var len = x * x + y * y + z * z + w * w;
	if (len > 0) {
		var one = 1;
		len = one / (Platform.sqrt(len));
		output[0] = a[0] * len;
		output[1] = a[1] * len;
		output[2] = a[2] * len;
		output[3] = a[3] * len;
	}
	return output;
}

Vec4.scale = function(output, a, b) {
	output[0] = a[0] * b;
	output[1] = a[1] * b;
	output[2] = a[2] * b;
	output[3] = a[3] * b;
	return output;
}

Vec4.scaleAndAdd = function(output, a, b, scale) {
	output[0] = a[0] + b[0] * scale;
	output[1] = a[1] + b[1] * scale;
	output[2] = a[2] + b[2] * scale;
	output[3] = a[3] + b[3] * scale;
	return output;
}

Vec4.set = function(output, x, y, z, w) {
	output[0] = x;
	output[1] = y;
	output[2] = z;
	output[3] = w;
	return output;
}

Vec4.sqrDist = function(a, b) {
	return Vec4.squaredDistance(a, b);
}

Vec4.sqrLen = function(a) {
	return Vec4.squaredLength(a);
}

Vec4.squaredDistance = function(a, b) {
	var x = b[0] - a[0];
	var y = b[1] - a[1];
	var z = b[2] - a[2];
	var w = b[3] - a[3];
	return x * x + y * y + z * z + w * w;
}

Vec4.squaredLength = function(a) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	var w = a[3];
	return x * x + y * y + z * z + w * w;
}

Vec4.sub = function(output, a, b) {
	return Vec4.subtract(output, a, b);
}

Vec4.subtract = function(output, a, b) {
	output[0] = a[0] - b[0];
	output[1] = a[1] - b[1];
	output[2] = a[2] - b[2];
	output[3] = a[3] - b[3];
	return output;
}

Vec4.transformMat4 = function(output, a, m) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	var w = a[3];
	output[0] = m[0] * x + m[4] * y + m[8] * z + m[12] * w;
	output[1] = m[1] * x + m[5] * y + m[9] * z + m[13] * w;
	output[2] = m[2] * x + m[6] * y + m[10] * z + m[14] * w;
	output[3] = m[3] * x + m[7] * y + m[11] * z + m[15] * w;
	return output;
}

Vec4.prototype.f = function() {
}

Vec4.transformQuat = function(output, a, q) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	var qx = q[0];
	var qy = q[1];
	var qz = q[2];
	var qw = q[3];
	var ix = qw * x + qy * z - qz * y;
	var iy = qw * y + qz * x - qx * z;
	var iz = qw * z + qx * y - qy * x;
	var iw = -qx * x - qy * y - qz * z;
	output[0] = ix * qw + iw * -qx + iy * -qz - iz * -qy;
	output[1] = iy * qw + iw * -qy + iz * -qx - ix * -qz;
	output[2] = iz * qw + iw * -qz + ix * -qy - iy * -qx;
	return output;
}
