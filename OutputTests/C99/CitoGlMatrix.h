// Generated automatically with "cito". Do not edit.
#ifndef _CITOGLMATRIX_H_
#define _CITOGLMATRIX_H_
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif
typedef struct CitoAssert CitoAssert;
typedef struct Mat2 Mat2;
typedef struct Mat2d Mat2d;
typedef struct Mat3 Mat3;
typedef struct Mat4 Mat4;
typedef struct Quat Quat;
typedef struct TestMat4 TestMat4;
typedef struct TestVec3 TestVec3;
typedef struct Vec2 Vec2;
typedef struct Vec4 Vec4;

CitoAssert *CitoAssert_New(void);
void CitoAssert_Delete(CitoAssert *self);

float *CitoAssert_Arr16(CitoAssert const *self, int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9, int p_10, int p_11, int p_12, int p_13, int p_14, int p_15, int p_16);

float *CitoAssert_Arr3(CitoAssert const *self, float p, float p_2, float p_3);

float const *CitoAssert_Arr9(CitoAssert const *self, int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9);

void CitoAssert_AssertArrayEqual(CitoAssert *self, float const *actual, float const *expected, int length, const char *msg);

void CitoAssert_AssertCloseTo(CitoAssert *self, float actual, float expected, const char *msg);

void CitoAssert_AssertEqual(CitoAssert *self, float actual, float expected, const char *msg);

float GlMatrixMath_Abs(float len);

float GlMatrixMath_GLMAT_EPSILON(void);

float GlMatrixMath_PI(void);

float GlMatrixMath_max(float a, float b);

float GlMatrixMath_min(float a, float b);

/**
 * Calculates the adjugate of a mat2
 * Returns output
 * @param output the receiving matrix
 * @param a the source matrix
 */
float const *Mat2_Adjoint(float *output, float const *a);

/**
 * Creates a new mat2 initialized with values from an existing matrix
 * Returns a new 2x2 matrix
 * @param a matrix to clone
 */
float const *Mat2_CloneIt(float const *a);

/**
 * Copy the values from one mat2 to another
 * Returns output
 * @param output the receiving matrix
 * @param a the source matrix
 */
float const *Mat2_Copy(float *output, float const *a);

/**
 * Creates a new identity mat2
 * Returns a new 2x2 matrix
 */
float const *Mat2_Create(void);

/**
 * Calculates the determinant of a mat2
 * Returns determinant of a
 * @param a the source matrix
 */
float Mat2_Determinant(float const *a);

/**
 * Set a mat2 to the identity matrix
 * Returns output
 * @param output the receiving matrix
 */
float const *Mat2_Identity_(float *output);

/**
 * Inverts a mat2
 * Returns output
 * @param output the receiving matrix
 * @param a the source matrix
 */
float const *Mat2_Invert(float *output, float const *a);

/**
 * Alias for {@link mat2.multiply}
 */
float const *Mat2_Mul(float *output, float const *a, float const *b);

/**
 * Multiplies two mat2's
 * Returns output
 * @param output the receiving matrix
 * @param a the first operand
 * @param b the second operand
 */
float const *Mat2_Multiply(float *output, float const *a, float const *b);

/**
 * Rotates a mat2 by the given angle
 * Returns output
 * @param output the receiving matrix
 * @param a the matrix to rotate
 * @param rad the angle to rotate the matrix by
 */
float const *Mat2_Rotate(float *output, float const *a, float rad);

/**
 * Scales the mat2 by the dimensions in the given vec2
 * Returns output
 * @param output the receiving matrix
 * @param a the matrix to rotate
 * @param v the vec2 to scale the matrix by
 */
float const *Mat2_Scale(float *output, float const *a, float const *v);

/**
 * Transpose the values of a mat2
 * Returns output
 * @param output the receiving matrix
 * @param a the source matrix
 */
float const *Mat2_Transpose(float *output, float const *a);

/**
 * Creates a new mat2d initialized with values from an existing matrix
 * Returns a new 2x3 matrix
 * @param a matrix to clone
 */
float const *Mat2d_CloneIt(float const *a);

/**
 * Copy the values from one mat2d to another
 * Returns output
 * @param output the receiving matrix
 * @param a the source matrix
 */
float const *Mat2d_Copy(float *output, float const *a);

/**
 * Creates a new identity mat2d
 * Returns a new 2x3 matrix
 */
float const *Mat2d_Create(void);

/**
 * Calculates the determinant of a mat2d
 * Returns determinant of a
 * @param a the source matrix
 */
float Mat2d_Determinant(float const *a);

/**
 * Set a mat2d to the identity matrix
 * Returns output
 * @param output the receiving matrix
 */
float const *Mat2d_Identity_(float *output);

/**
 * Inverts a mat2d
 * Returns output
 * @param output the receiving matrix
 * @param a the source matrix
 */
float const *Mat2d_Invert(float *output, float const *a);

/**
 * Alias for {@link mat2d.multiply} @function
 */
float const *Mat2d_Mul(float *output, float const *a, float const *b);

/**
 * Multiplies two mat2d's
 * Returns output
 * @param output the receiving matrix
 * @param a the first operand
 * @param b the second operand
 */
float const *Mat2d_Multiply(float *output, float const *a, float const *b);

/**
 * Rotates a mat2d by the given angle
 * Returns output
 * @param output the receiving matrix
 * @param a the matrix to rotate
 * @param rad the angle to rotate the matrix by
 */
float const *Mat2d_Rotate(float *output, float const *a, float rad);

/**
 * Scales the mat2d by the dimensions in the given vec2
 * Returns output
 * @param output the receiving matrix
 * @param a the matrix to translate
 * @param v the vec2 to scale the matrix by
 */
float const *Mat2d_Scale(float *output, float const *a, float const *v);

/**
 * Translates the mat2d by the dimensions in the given vec2
 * Returns output
 * @param output the receiving matrix
 * @param a the matrix to translate
 * @param v the vec2 to translate the matrix by
 */
float const *Mat2d_Translate(float *output, float const *a, float const *v);

/**
 * **
 */
float const *Mat3_Adjoint(float *output, float const *a);

/**
 * **
 */
float const *Mat3_CloneIt(float const *a);

/**
 * **
 */
float const *Mat3_Copy(float *output, float const *a);

/**
 * **
 */
float *Mat3_Create(void);

/**
 * **
 */
float Mat3_Determinant(float const *a);

/**
 * **
 */
float const *Mat3_FromMat2d(float *output, float const *a);

/**
 * **
 */
float const *Mat3_FromMat4(float *output, float const *a);

/**
 * **
 */
float const *Mat3_FromQuat(float *output, float const *q);

/**
 * **
 */
float const *Mat3_Identity_(float *output);

/**
 * **
 */
float const *Mat3_Invert(float *output, float const *a);

/**
 * **
 */
float const *Mat3_Mul(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Mat3_Multiply(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Mat3_NormalFromMat4(float *output, float const *a);

/**
 * **
 */
float const *Mat3_Rotate(float *output, float const *a, float rad);

/**
 * **
 */
float const *Mat3_Scale(float *output, float const *a, float const *v);

/**
 * **
 */
float const *Mat3_Translate(float *output, float const *a, float const *v);

/**
 * **
 */
float const *Mat3_Transpose(float *output, float const *a);

/**
 * Calculates the adjugate of a mat4
 * @returns {mat4} out
 * @param output @param {mat4} out the receiving matrix
 * @param a @param {mat4} a the source matrix
 */
float const *Mat4_Adjoint(float *output, float const *a);

/**
 * Creates a new mat4 initialized with values from an existing matrix
 * Returns {mat4} a new 4x4 matrix
 * @param a {mat4} a matrix to clone
 */
float const *Mat4_CloneIt(float const *a);

/**
 * Copy the values from one mat4 to another
 * Returns {mat4} out
 * @param output {mat4} out the receiving matrix
 * @param a {mat4} a the source matrix
 */
float const *Mat4_Copy(float *output, float const *a);

/**
 * Creates a new identity mat4
 * Returns {mat4} a new 4x4 matrix
 */
float *Mat4_Create(void);

/**
 * Calculates the determinant of a mat4
 * @returns {Number} determinant of a
 * @param a @param {mat4} a the source matrix
 */
float Mat4_Determinant(float const *a);

/**
 * Calculates a 4x4 matrix from the given quaternion
 * @returns {mat4} out
 * @param output {mat4} out mat4 receiving operation result
 * @param q {quat} q Quaternion to create matrix from
 */
float const *Mat4_FromQuat(float *output, float const *q);

/**
 * Creates a matrix from a quaternion rotation and vector translation
 * This is equivalent to (but much faster than):
 * mat4.identity(dest);
 * mat4.translate(dest, vec);
 * var quatMat = mat4.create();
 * quat4.toMat4(quat, quatMat);
 * mat4.multiply(dest, quatMat);
 * @returns {mat4} out
 * @param output {mat4} out mat4 receiving operation result
 * @param q {quat4} q Rotation quaternion
 * @param v {vec3} v Translation vector
 */
float const *Mat4_FromRotationTranslation(float *output, float const *q, float const *v);

/**
 * Generates a frustum matrix with the given bounds
 * @returns {mat4} out
 * @param output {mat4} out mat4 frustum matrix will be written into
 * @param left {Number} left Left bound of the frustum
 * @param right {Number} right Right bound of the frustum
 * @param bottom {Number} bottom Bottom bound of the frustum
 * @param top {Number} top Top bound of the frustum
 * @param near {Number} near Near bound of the frustum
 * @param far {Number} far Far bound of the frustum
 */
float const *Mat4_Frustum(float *output, float left, float right, float bottom, float top, float near, float far);

/**
 * Set a mat4 to the identity matrix
 * Returns {mat4} out
 * @param output {mat4} out the receiving matrix
 */
float const *Mat4_Identity_(float *output);

/**
 * Inverts a mat4
 * @returns {mat4} out
 * @param output {mat4} out the receiving matrix
 * @param a {mat4} a the source matrix
 */
float const *Mat4_Invert(float *output, float const *a);

/**
 * Generates a look-at matrix with the given eye position, focal point, and up axis
 * @returns {mat4} out
 * @param output {mat4} out mat4 frustum matrix will be written into
 * @param eye {vec3} eye Position of the viewer
 * @param center {vec3} center Point the viewer is looking at
 * @param up {vec3} up vec3 pointing up
 */
float const *Mat4_LookAt(float *output, float const *eye, float const *center, float const *up);

/**
 * Alias for {@link mat4.multiply}
 */
float const *Mat4_Mul(float *output, float const *a, float const *b);

/**
 * Multiplies two mat4's
 * @returns {mat4} out
 * @param output @param {mat4} out the receiving matrix
 * @param a @param {mat4} a the first operand
 * @param b @param {mat4} b the second operand
 */
float const *Mat4_Multiply(float *output, float const *a, float const *b);

/**
 * Generates a orthogonal projection matrix with the given bounds
 * @returns {mat4} out
 * @param output {mat4} out mat4 frustum matrix will be written into
 * @param left {number} left Left bound of the frustum
 * @param right {number} right Right bound of the frustum
 * @param bottom {number} bottom Bottom bound of the frustum
 * @param top {number} top Top bound of the frustum
 * @param near {number} near Near bound of the frustum
 * @param far {number} far Far bound of the frustum
 */
float const *Mat4_Ortho(float *output, float left, float right, float bottom, float top, float near, float far);

/**
 * Generates a perspective projection matrix with the given bounds
 * @returns {mat4} out
 * @param output {mat4} out mat4 frustum matrix will be written into
 * @param fovy {number} fovy Vertical field of view in radians
 * @param aspect {number} aspect Aspect ratio. typically viewport width/height
 * @param near {number} near Near bound of the frustum
 * @param far {number} far Far bound of the frustum
 */
float const *Mat4_Perspective(float *output, float fovy, float aspect, float near, float far);

/**
 * Rotates a mat4 by the given angle
 * @returns {mat4} out
 * @param output {mat4} out the receiving matrix
 * @param a {mat4} a the matrix to rotate
 * @param rad {Number} rad the angle to rotate the matrix by
 * @param axis {vec3} axis the axis to rotate around
 */
float const *Mat4_Rotate(float *output, float const *a, float rad, float const *axis);

/**
 * Rotates a matrix by the given angle around the X axis
 * @returns {mat4} out
 * @param output {mat4} out the receiving matrix
 * @param a {mat4} a the matrix to rotate
 * @param rad {Number} rad the angle to rotate the matrix by
 */
float const *Mat4_RotateX(float *output, float const *a, float rad);

/**
 * Rotates a matrix by the given angle around the Y axis
 * @returns {mat4} out
 * @param output {mat4} out the receiving matrix
 * @param a {mat4} a the matrix to rotate
 * @param rad {Number} rad the angle to rotate the matrix by
 */
float const *Mat4_RotateY(float *output, float const *a, float rad);

/**
 * Rotates a matrix by the given angle around the Z axis
 * @returns {mat4} out
 * @param output {mat4} out the receiving matrix
 * @param a {mat4} a the matrix to rotate
 * @param rad {Number} rad the angle to rotate the matrix by
 */
float const *Mat4_RotateZ(float *output, float const *a, float rad);

/**
 * Scales the mat4 by the dimensions in the given vec3
 * @returns {mat4} out
 * @param output {mat4} out the receiving matrix
 * @param a {mat4} a the matrix to scale
 * @param v {vec3} v the vec3 to scale the matrix by
 */
float const *Mat4_Scale(float *output, float const *a, float const *v);

/**
 * Translate a mat4 by the given vector
 * @returns {mat4} out
 * @param output {mat4} out the receiving matrix
 * @param a {mat4} a the matrix to translate
 * @param v {vec3} v vector to translate by
 */
float const *Mat4_Translate(float *output, float const *a, float const *v);

/**
 * Transpose the values of a mat4
 * @returns {mat4} out
 * @param output @param {mat4} out the receiving matrix
 * @param a @param {mat4} a the source matrix
 */
float const *Mat4_Transpose(float *output, float const *a);

float Platform_Acos(float a);

float Platform_Cos(float a);

float Platform_Sin(float a);

float Platform_Sqrt(float a);

float Platform_Tan(float a);

void Platform_WriteInt(int a);

void Platform_WriteString(const char *a);

/**
 * **
 */
float const *Quat_Add(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Quat_CalculateW(float *output, float const *a);

/**
 * **
 */
float const *Quat_CloneIt(float const *a);

/**
 * **
 */
float const *Quat_Conjugate(Quat const *self, float *output, float const *a);

/**
 * **
 */
float const *Quat_Copy(float *output, float const *a);

/**
 * **
 */
float const *Quat_Create(void);

/**
 * **
 */
float Quat_Dot(float const *a, float const *b);

/**
 * **
 */
float const *Quat_FromMat3(float *output, float const *m);

/**
 * **
 */
float const *Quat_FromValues(float x, float y, float z, float w);

/**
 * **
 */
float const *Quat_Identity_(float *output);

/**
 * **
 */
float const *Quat_Invert(Quat const *self, float *output, float const *a);

/**
 * **
 */
float Quat_Len(float const *a);

/**
 * **
 */
float Quat_Length_(float const *a);

/**
 * **
 */
float const *Quat_Lerp(float *output, float const *a, float const *b, float t);

/**
 * **
 */
float const *Quat_Mul(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Quat_Multiply(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Quat_Normalize(float *output, float const *a);

/**
 * **
 */
float const *Quat_RotateX(float *output, float const *a, float rad);

/**
 * **
 */
float const *Quat_RotateY(float *output, float const *a, float rad);

/**
 * **
 */
float const *Quat_RotateZ(float *output, float const *a, float rad);

/**
 * **
 */
float const *Quat_RotationTo(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Quat_Scale(float *output, float const *a, float b);

/**
 * **
 */
float const *Quat_Set(float *output, float x, float y, float z, float w);

/**
 * **
 */
float const *Quat_SetAxes(float *output, float const *view, float const *right, float const *up);

/**
 * **
 */
float const *Quat_SetAxisAngle(float *output, float const *axis, float rad);

/**
 * **
 */
float const *Quat_Slerp(float *output, float const *a, float const *b, float t);

/**
 * **
 */
float Quat_SqrLen(float const *a);

/**
 * **
 */
float Quat_SquaredLength(float const *a);

TestMat4 *TestMat4_New(void);
void TestMat4_Delete(TestMat4 *self);

void TestMat4_Test(TestMat4 *self);

TestVec3 *TestVec3_New(void);
void TestVec3_Delete(TestVec3 *self);

void TestVec3_Test(TestVec3 *self);

void Tests_RunAll(void);

/**
 * **
 */
float const *Vec2_Add(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Vec2_CloneIt(float const *a);

/**
 * **
 */
float const *Vec2_Copy(float *output, float const *a);

/**
 * **
 */
float const *Vec2_Create(void);

/**
 * **
 */
float const *Vec2_Cross(float *output, float const *a, float const *b);

/**
 * **
 */
float Vec2_Dist(float const *a, float const *b);

/**
 * **
 */
float Vec2_Distance(float const *a, float const *b);

/**
 * **
 */
float const *Vec2_Div(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Vec2_Divide(float *output, float const *a, float const *b);

/**
 * **
 */
float Vec2_Dot(float const *a, float const *b);

/**
 * **
 */
float const *Vec2_FromValues(float x, float y);

/**
 * **
 */
float Vec2_Len(float const *a);

/**
 * **
 */
float Vec2_Length_(float const *a);

/**
 * **
 */
float const *Vec2_Lerp(float *output, float const *a, float const *b, float t);

/**
 * **
 */
float const *Vec2_Max(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Vec2_Min(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Vec2_Mul(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Vec2_Multiply(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Vec2_Negate(float *output, float const *a);

/**
 * **
 */
float const *Vec2_Normalize(float *output, float const *a);

/**
 * **
 */
float const *Vec2_Scale(float *output, float const *a, float b);

/**
 * **
 */
float const *Vec2_ScaleAndAdd(float *output, float const *a, float const *b, float scale);

/**
 * **
 */
float const *Vec2_Set(float *output, float x, float y);

/**
 * **
 */
float Vec2_SqrDist(float const *a, float const *b);

/**
 * **
 */
float Vec2_SqrLen(float const *a);

/**
 * **
 */
float Vec2_SquaredDistance(float const *a, float const *b);

/**
 * **
 */
float Vec2_SquaredLength(float const *a);

/**
 * **
 */
float const *Vec2_Sub(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Vec2_Subtract(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Vec2_TransformMat2(float *output, float const *a, float const *m);

/**
 * **
 */
float const *Vec2_TransformMat2d(float *output, float const *a, float const *m);

/**
 * **
 */
float const *Vec2_TransformMat3(float *output, float const *a, float const *m);

/**
 * **
 */
float const *Vec2_TransformMat4(float *output, float const *a, float const *m);

/**
 * Adds two vec3's
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float const *Vec3_Add(float *output, float const *a, float const *b);

/**
 * Creates a new vec3 initialized with values from an existing vector
 * Returns {vec3} a new 3D vector
 * @param a a vector to clone
 */
float const *Vec3_CloneIt(float const *a);

/**
 * Copy the values from one vec3 to another
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the source vector
 */
float const *Vec3_Copy(float *output, float const *a);

/**
 * Creates a new, empty vec3
 * Returns {vec3} a new 3D vector.
 */
float *Vec3_Create(void);

/**
 * Computes the cross product of two vec3's
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float const *Vec3_Cross(float *output, float const *a, float const *b);

/**
 * Alias for {@link vec3.distance}
 */
float Vec3_Dist(float const *a, float const *b);

/**
 * Calculates the euclidian distance between two vec3's
 * @returns {Number} distance between a and b
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float Vec3_Distance(float const *a, float const *b);

/**
 * Alias for {@link vec3.divide}
 */
float const *Vec3_Div(float *output, float const *a, float const *b);

/**
 * Divides two vec3's
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float const *Vec3_Divide(float *output, float const *a, float const *b);

/**
 * Calculates the dot product of two vec3's
 * @returns {Number} dot product of a and b
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float Vec3_Dot(float const *a, float const *b);

/**
 * Creates a new vec3 initialized with the given values
 * Returns {vec3} a new 3D vector
 * @param x X component
 * @param y Y component
 * @param z Z component
 */
float const *Vec3_FromValues(float x, float y, float z);

/**
 * Alias for {@link vec3.length}
 */
float Vec3_Len(float const *a);

/**
 * Calculates the length of a vec3
 * @returns {Number} length of a
 * @param a /@param {vec3} a vector to calculate length of
 */
float Vec3_Length_(float const *a);

/**
 * Performs a linear interpolation between two vec3's
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 * @param t /@param {Number} t interpolation amount between the two inputs
 */
float const *Vec3_Lerp(float *output, float const *a, float const *b, float t);

/**
 * Returns the maximum of two vec3's
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float const *Vec3_Max(float *output, float const *a, float const *b);

/**
 * Returns the minimum of two vec3's
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float const *Vec3_Min(float *output, float const *a, float const *b);

/**
 * Alias for {@link vec3.multiply}
 */
float const *Vec3_Mul(float *output, float const *a, float const *b);

/**
 * Multiplies two vec3's
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float const *Vec3_Multiply(float *output, float const *a, float const *b);

/**
 * Negates the components of a vec3
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a vector to negate
 */
float const *Vec3_Negate(float *output, float const *a);

/**
 * Normalize a vec3
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a vector to normalize
 */
float const *Vec3_Normalize(float *output, float const *a);

/**
 * Scales a vec3 by a scalar number
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the vector to scale
 * @param b /@param {Number} b amount to scale the vector by
 */
float const *Vec3_Scale(float *output, float const *a, float b);

/**
 * Adds two vec3's after scaling the second operand by a scalar value
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 * @param scale /@param {Number} scale the amount to scale b by before adding
 */
float const *Vec3_ScaleAndAdd(float *output, float const *a, float const *b, float scale);

/**
 * Set the components of a vec3 to the given values
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param x /@param {Number} x X component
 * @param y /@param {Number} y Y component
 * @param z /@param {Number} z Z component
 */
float const *Vec3_Set(float *output, float x, float y, float z);

/**
 * Alias for {@link vec3.squaredDistance}
 * @function
 */
float Vec3_SqrDist(float const *a, float const *b);

/**
 * Alias for {@link vec3.squaredLength}
 */
float Vec3_SqrLen(float const *a);

/**
 * Calculates the squared euclidian distance between two vec3's
 * @returns {Number} squared distance between a and b
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float Vec3_SquaredDistance(float const *a, float const *b);

/**
 * Calculates the squared length of a vec3
 * @returns {Number} squared length of a
 * @param a /@param {vec3} a vector to calculate squared length of
 */
float Vec3_SquaredLength(float const *a);

/**
 * Alias for {@link vec3.subtract}
 * @function
 */
float const *Vec3_Sub(float *output, float const *a, float const *b);

/**
 * Subtracts vector b from vector a
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float const *Vec3_Substract(float *output, float const *a, float const *b);

/**
 * Transforms the vec3 with a mat3.
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the vector to transform
 * @param m /@param {mat4} m the 3x3 matrix to transform with
 */
float const *Vec3_TransformMat3(float *output, float const *a, float const *m);

/**
 * /Transforms the vec3 with a mat4.
 * /4th vector component is implicitly '1'
 * /@returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the vector to transform
 * @param m /@param {mat4} m matrix to transform with
 */
float const *Vec3_TransformMat4(float *output, float const *a, float const *m);

/**
 * Transforms the vec3 with a quat
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the vector to transform
 * @param q /@param {quat} q quaternion to transform with
 */
float const *Vec3_TransformQuat(float *output, float const *a, float const *q);

/**
 * /Perform some operation over an array of vec3s.
 * /@param {Array} a the array of vectors to iterate over
 * /@param {Number} stride Number of elements between the start of each vec3. If 0 assumes tightly packed
 * /@param {Number} offset Number of elements to skip at the beginning of the array
 * /@param {Number} count Number of vec3s to iterate over. If 0 iterates over entire array
 * /@param {Function} fn Function to call for each vector in the array
 * /@param {Object} [arg] additional argument to pass to fn
 * /@returns {Array} a
 * /
 * / Returns a string representation of a vector
 * /
 * / @param {vec3} vec vector to represent as a string
 * / @returns {String} string representation of the vector
 */
const char *Vec3_str(float const *a);

/**
 * **
 */
float const *Vec4_Add(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Vec4_CloneIt(float const *a);

/**
 * **
 */
float const *Vec4_Copy(float *output, float const *a);

/**
 * **
 */
float const *Vec4_Create(void);

/**
 * **
 */
float Vec4_Dist(float const *a, float const *b);

/**
 * **
 */
float Vec4_Distance(float const *a, float const *b);

/**
 * **
 */
float const *Vec4_Div(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Vec4_Divide(float *output, float const *a, float const *b);

/**
 * **
 */
float Vec4_Dot(float const *a, float const *b);

/**
 * **
 */
float const *Vec4_FromValues(float x, float y, float z, float w);

/**
 * **
 */
float Vec4_Len(float const *a);

/**
 * **
 */
float Vec4_Length_(float const *a);

/**
 * **
 */
float const *Vec4_Lerp(float *output, float const *a, float const *b, float t);

/**
 * **
 */
float const *Vec4_Max(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Vec4_Min(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Vec4_Mul(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Vec4_Multiply(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Vec4_Negate(float *output, float const *a);

/**
 * **
 */
float const *Vec4_Normalize(float *output, float const *a);

/**
 * **
 */
float const *Vec4_Scale(float *output, float const *a, float b);

/**
 * **
 */
float const *Vec4_ScaleAndAdd(float *output, float const *a, float const *b, float scale);

/**
 * **
 */
float const *Vec4_Set(float *output, float x, float y, float z, float w);

/**
 * **
 */
float Vec4_SqrDist(float const *a, float const *b);

/**
 * **
 */
float Vec4_SqrLen(float const *a);

/**
 * **
 */
float Vec4_SquaredDistance(float const *a, float const *b);

/**
 * **
 */
float Vec4_SquaredLength(float const *a);

/**
 * **
 */
float const *Vec4_Sub(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Vec4_Subtract(float *output, float const *a, float const *b);

/**
 * **
 */
float const *Vec4_TransformMat4(float *output, float const *a, float const *m);

/**
 * **
 */
float const *Vec4_transformQuat(float *output, float const *a, float const *q);

#ifdef __cplusplus
}
#endif
#endif
