# Generated automatically with "cito". Do not edit.
use integer;
use strict;

=head1 Class GlMatrixMath

=cut

package GlMatrixMath;

=head2 C<$glmatrixmath = GlMatrixMath-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

=head2 C<GlMatrixMath::abs($len)>

=cut

sub abs($) {
	my ($len) = @_;
	if ($len < 0) {
		return -$len;
	}
	else {
		return $len;
	}
}

=head2 C<GlMatrixMath::g_l_m_a_t__e_p_s_i_l_o_n()>

=cut

sub g_l_m_a_t__e_p_s_i_l_o_n() {
	my $one = 1;
	return $one / 1000000;
}

=head2 C<GlMatrixMath::p_i()>

=cut

sub p_i() {
	my $a = 3141592;
	return $a / 1000000;
}

=head2 C<GlMatrixMath::max($a, $b)>

=cut

sub max($$) {
	my ($a, $b) = @_;
	if ($a > $b) {
		return $a;
	}
	else {
		return $b;
	}
}

=head2 C<GlMatrixMath::min($a, $b)>

=cut

sub min($$) {
	my ($a, $b) = @_;
	if ($a < $b) {
		return $a;
	}
	else {
		return $b;
	}
}

=head1 Class Mat2

2x2 Matrix

=cut

package Mat2;

=head2 C<$mat2 = Mat2-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

=head2 C<Mat2::adjoint(\@output, \@a)>

Calculates the adjugate of a mat2
Returns output

Parameters:

=over

=item \@output

the receiving matrix

=item \@a

the source matrix

=back

=cut

sub adjoint($$) {
	my ($output, $a) = @_;
	my $a0 = $a->[0];
	$output->[0] = $a->[3];
	$output->[1] = -$a->[1];
	$output->[2] = -$a->[2];
	$output->[3] = $a0;
	return $output;
}

=head2 C<Mat2::clone_it(\@a)>

Creates a new mat2 initialized with values from an existing matrix
Returns a new 2x2 matrix

Parameters:

=over

=item \@a

matrix to clone

=back

=cut

sub clone_it($) {
	my ($a) = @_;
	my $output = [];
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	$output->[3] = $a->[3];
	return $output;
}

=head2 C<Mat2::copy(\@output, \@a)>

Copy the values from one mat2 to another
Returns output

Parameters:

=over

=item \@output

the receiving matrix

=item \@a

the source matrix

=back

=cut

sub copy($$) {
	my ($output, $a) = @_;
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	$output->[3] = $a->[3];
	return $output;
}

=head2 C<Mat2::create()>

Creates a new identity mat2
Returns a new 2x2 matrix

=cut

sub create() {
	my $output = [];
	$output->[0] = 1;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 1;
	return $output;
}

=head2 C<Mat2::determinant(\@a)>

Calculates the determinant of a mat2
Returns determinant of a

Parameters:

=over

=item \@a

the source matrix

=back

=cut

sub determinant($) {
	my ($a) = @_;
	return $a->[0] * $a->[3] - $a->[2] * $a->[1];
}

=head2 C<Mat2::identity_(\@output)>

Set a mat2 to the identity matrix
Returns output

Parameters:

=over

=item \@output

the receiving matrix

=back

=cut

sub identity_($) {
	my ($output) = @_;
	$output->[0] = 1;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 1;
	return $output;
}

=head2 C<Mat2::invert(\@output, \@a)>

Inverts a mat2
Returns output

Parameters:

=over

=item \@output

the receiving matrix

=item \@a

the source matrix

=back

=cut

sub invert($$) {
	my ($output, $a) = @_;
	my $a0 = $a->[0];
	my $a1 = $a->[1];
	my $a2 = $a->[2];
	my $a3 = $a->[3];
	my $det = $a0 * $a3 - $a2 * $a1;
	if ($det == 0) {
		return undef;
	}
	my $one = 1;
	$det = $one / $det;
	$output->[0] = $a3 * $det;
	$output->[1] = -$a1 * $det;
	$output->[2] = -$a2 * $det;
	$output->[3] = $a0 * $det;
	return $output;
}

=head2 C<Mat2::mul(\@output, \@a, \@b)>

Alias for {@link mat2.multiply}

=cut

sub mul($$$) {
	my ($output, $a, $b) = @_;
	return Mat2::multiply($output, $a, $b);
}

=head2 C<Mat2::multiply(\@output, \@a, \@b)>

Multiplies two mat2's
Returns output

Parameters:

=over

=item \@output

the receiving matrix

=item \@a

the first operand

=item \@b

the second operand

=back

=cut

sub multiply($$$) {
	my ($output, $a, $b) = @_;
	my $a0 = $a->[0];
	my $a1 = $a->[1];
	my $a2 = $a->[2];
	my $a3 = $a->[3];
	my $b0 = $b->[0];
	my $b1 = $b->[1];
	my $b2 = $b->[2];
	my $b3 = $b->[3];
	$output->[0] = $a0 * $b0 + $a1 * $b2;
	$output->[1] = $a0 * $b1 + $a1 * $b3;
	$output->[2] = $a2 * $b0 + $a3 * $b2;
	$output->[3] = $a2 * $b1 + $a3 * $b3;
	return $output;
}

=head2 C<Mat2::rotate(\@output, \@a, $rad)>

Rotates a mat2 by the given angle
Returns output

Parameters:

=over

=item \@output

the receiving matrix

=item \@a

the matrix to rotate

=item $rad

the angle to rotate the matrix by

=back

=cut

sub rotate($$$) {
	my ($output, $a, $rad) = @_;
	my $a0 = $a->[0];
	my $a1 = $a->[1];
	my $a2 = $a->[2];
	my $a3 = $a->[3];
	my $s = Platform::sin($rad);
	my $c = Platform::cos($rad);
	$output->[0] = $a0 * $c + $a1 * $s;
	$output->[1] = $a0 * -$s + $a1 * $c;
	$output->[2] = $a2 * $c + $a3 * $s;
	$output->[3] = $a2 * -$s + $a3 * $c;
	return $output;
}

=head2 C<Mat2::scale(\@output, \@a, \@v)>

Scales the mat2 by the dimensions in the given vec2
Returns output

Parameters:

=over

=item \@output

the receiving matrix

=item \@a

the matrix to rotate

=item \@v

the vec2 to scale the matrix by

=back

=cut

sub scale($$$) {
	my ($output, $a, $v) = @_;
	my $a0 = $a->[0];
	my $a1 = $a->[1];
	my $a2 = $a->[2];
	my $a3 = $a->[3];
	my $v0 = $v->[0];
	my $v1 = $v->[1];
	$output->[0] = $a0 * $v0;
	$output->[1] = $a1 * $v1;
	$output->[2] = $a2 * $v0;
	$output->[3] = $a3 * $v1;
	return $output;
}

=head2 C<Mat2::transpose(\@output, \@a)>

Transpose the values of a mat2
Returns output

Parameters:

=over

=item \@output

the receiving matrix

=item \@a

the source matrix

=back

=cut

sub transpose($$) {
	my ($output, $a) = @_;
	$output->[0] = $a->[0];
	$output->[1] = $a->[2];
	$output->[2] = $a->[1];
	$output->[3] = $a->[3];
	return $output;
}

sub f($) {
	my ($self) = @_;
}

=head1 Class Mat2d

=cut

package Mat2d;

=head2 C<$mat2d = Mat2d-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

=head2 C<Mat2d::clone_it(\@a)>

Creates a new mat2d initialized with values from an existing matrix
Returns a new 2x3 matrix

Parameters:

=over

=item \@a

matrix to clone

=back

=cut

sub clone_it($) {
	my ($a) = @_;
	my $output = [];
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	$output->[3] = $a->[3];
	$output->[4] = $a->[4];
	$output->[5] = $a->[5];
	return $output;
}

=head2 C<Mat2d::copy(\@output, \@a)>

Copy the values from one mat2d to another
Returns output

Parameters:

=over

=item \@output

the receiving matrix

=item \@a

the source matrix

=back

=cut

sub copy($$) {
	my ($output, $a) = @_;
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	$output->[3] = $a->[3];
	$output->[4] = $a->[4];
	$output->[5] = $a->[5];
	return $output;
}

=head2 C<Mat2d::create()>

Creates a new identity mat2d
Returns a new 2x3 matrix

=cut

sub create() {
	my $output = [];
	$output->[0] = 1;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 1;
	$output->[4] = 0;
	$output->[5] = 0;
	return $output;
}

=head2 C<Mat2d::determinant(\@a)>

Calculates the determinant of a mat2d
Returns determinant of a

Parameters:

=over

=item \@a

the source matrix

=back

=cut

sub determinant($) {
	my ($a) = @_;
	return $a->[0] * $a->[3] - $a->[1] * $a->[2];
}

=head2 C<Mat2d::identity_(\@output)>

Set a mat2d to the identity matrix
Returns output

Parameters:

=over

=item \@output

the receiving matrix

=back

=cut

sub identity_($) {
	my ($output) = @_;
	$output->[0] = 1;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 1;
	$output->[4] = 0;
	$output->[5] = 0;
	return $output;
}

=head2 C<Mat2d::invert(\@output, \@a)>

Inverts a mat2d
Returns output

Parameters:

=over

=item \@output

the receiving matrix

=item \@a

the source matrix

=back

=cut

sub invert($$) {
	my ($output, $a) = @_;
	my $aa = $a->[0];
	my $ab = $a->[1];
	my $ac = $a->[2];
	my $ad = $a->[3];
	my $atx = $a->[4];
	my $aty = $a->[5];
	my $det = $aa * $ad - $ab * $ac;
	if ($det == 0) {
		return undef;
	}
	my $one = 1;
	$det = $one / $det;
	$output->[0] = $ad * $det;
	$output->[1] = -$ab * $det;
	$output->[2] = -$ac * $det;
	$output->[3] = $aa * $det;
	$output->[4] = ($ac * $aty - $ad * $atx) * $det;
	$output->[5] = ($ab * $atx - $aa * $aty) * $det;
	return $output;
}

=head2 C<Mat2d::mul(\@output, \@a, \@b)>

Alias for {@link mat2d.multiply} @function

=cut

sub mul($$$) {
	my ($output, $a, $b) = @_;
	return Mat2d::multiply($output, $a, $b);
}

=head2 C<Mat2d::multiply(\@output, \@a, \@b)>

Multiplies two mat2d's
Returns output

Parameters:

=over

=item \@output

the receiving matrix

=item \@a

the first operand

=item \@b

the second operand

=back

=cut

sub multiply($$$) {
	my ($output, $a, $b) = @_;
	my $aa = $a->[0];
	my $ab = $a->[1];
	my $ac = $a->[2];
	my $ad = $a->[3];
	my $atx = $a->[4];
	my $aty = $a->[5];
	my $ba = $b->[0];
	my $bb = $b->[1];
	my $bc = $b->[2];
	my $bd = $b->[3];
	my $btx = $b->[4];
	my $bty = $b->[5];
	$output->[0] = $aa * $ba + $ab * $bc;
	$output->[1] = $aa * $bb + $ab * $bd;
	$output->[2] = $ac * $ba + $ad * $bc;
	$output->[3] = $ac * $bb + $ad * $bd;
	$output->[4] = $ba * $atx + $bc * $aty + $btx;
	$output->[5] = $bb * $atx + $bd * $aty + $bty;
	return $output;
}

=head2 C<Mat2d::rotate(\@output, \@a, $rad)>

Rotates a mat2d by the given angle
Returns output

Parameters:

=over

=item \@output

the receiving matrix

=item \@a

the matrix to rotate

=item $rad

the angle to rotate the matrix by

=back

=cut

sub rotate($$$) {
	my ($output, $a, $rad) = @_;
	my $aa = $a->[0];
	my $ab = $a->[1];
	my $ac = $a->[2];
	my $ad = $a->[3];
	my $atx = $a->[4];
	my $aty = $a->[5];
	my $st = Platform::sin($rad);
	my $ct = Platform::cos($rad);
	$output->[0] = $aa * $ct + $ab * $st;
	$output->[1] = -$aa * $st + $ab * $ct;
	$output->[2] = $ac * $ct + $ad * $st;
	$output->[3] = -$ac * $st + $ct * $ad;
	$output->[4] = $ct * $atx + $st * $aty;
	$output->[5] = $ct * $aty - $st * $atx;
	return $output;
}

=head2 C<Mat2d::scale(\@output, \@a, \@v)>

Scales the mat2d by the dimensions in the given vec2
Returns output

Parameters:

=over

=item \@output

the receiving matrix

=item \@a

the matrix to translate

=item \@v

the vec2 to scale the matrix by

=back

=cut

sub scale($$$) {
	my ($output, $a, $v) = @_;
	my $vx = $v->[0];
	my $vy = $v->[1];
	$output->[0] = $a->[0] * $vx;
	$output->[1] = $a->[1] * $vy;
	$output->[2] = $a->[2] * $vx;
	$output->[3] = $a->[3] * $vy;
	$output->[4] = $a->[4] * $vx;
	$output->[5] = $a->[5] * $vy;
	return $output;
}

=head2 C<Mat2d::translate(\@output, \@a, \@v)>

Translates the mat2d by the dimensions in the given vec2
Returns output

Parameters:

=over

=item \@output

the receiving matrix

=item \@a

the matrix to translate

=item \@v

the vec2 to translate the matrix by

=back

=cut

sub translate($$$) {
	my ($output, $a, $v) = @_;
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	$output->[3] = $a->[3];
	$output->[4] = $a->[4] + $v->[0];
	$output->[5] = $a->[5] + $v->[1];
	return $output;
}

sub f($) {
	my ($self) = @_;
}

=head1 Class Mat3

=cut

package Mat3;

=head2 C<$mat3 = Mat3-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

=head2 C<Mat3::adjoint(\@output, \@a)>

**

=cut

sub adjoint($$) {
	my ($output, $a) = @_;
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a10 = $a->[3];
	my $a11 = $a->[4];
	my $a12 = $a->[5];
	my $a20 = $a->[6];
	my $a21 = $a->[7];
	my $a22 = $a->[8];
	$output->[0] = $a11 * $a22 - $a12 * $a21;
	$output->[1] = $a02 * $a21 - $a01 * $a22;
	$output->[2] = $a01 * $a12 - $a02 * $a11;
	$output->[3] = $a12 * $a20 - $a10 * $a22;
	$output->[4] = $a00 * $a22 - $a02 * $a20;
	$output->[5] = $a02 * $a10 - $a00 * $a12;
	$output->[6] = $a10 * $a21 - $a11 * $a20;
	$output->[7] = $a01 * $a20 - $a00 * $a21;
	$output->[8] = $a00 * $a11 - $a01 * $a10;
	return $output;
}

=head2 C<Mat3::clone_it(\@a)>

**

=cut

sub clone_it($) {
	my ($a) = @_;
	my $output = [];
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	$output->[3] = $a->[3];
	$output->[4] = $a->[4];
	$output->[5] = $a->[5];
	$output->[6] = $a->[6];
	$output->[7] = $a->[7];
	$output->[8] = $a->[8];
	return $output;
}

=head2 C<Mat3::copy(\@output, \@a)>

**

=cut

sub copy($$) {
	my ($output, $a) = @_;
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	$output->[3] = $a->[3];
	$output->[4] = $a->[4];
	$output->[5] = $a->[5];
	$output->[6] = $a->[6];
	$output->[7] = $a->[7];
	$output->[8] = $a->[8];
	return $output;
}

=head2 C<Mat3::create()>

**

=cut

sub create() {
	my $output = [];
	$output->[0] = 1;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 0;
	$output->[4] = 1;
	$output->[5] = 0;
	$output->[6] = 0;
	$output->[7] = 0;
	$output->[8] = 1;
	return $output;
}

=head2 C<Mat3::determinant(\@a)>

**

=cut

sub determinant($) {
	my ($a) = @_;
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a10 = $a->[3];
	my $a11 = $a->[4];
	my $a12 = $a->[5];
	my $a20 = $a->[6];
	my $a21 = $a->[7];
	my $a22 = $a->[8];
	return $a00 * ($a22 * $a11 - $a12 * $a21) + $a01 * (-$a22 * $a10 + $a12 * $a20) + $a02 * ($a21 * $a10 - $a11 * $a20);
}

=head2 C<Mat3::from_mat2d(\@output, \@a)>

**

=cut

sub from_mat2d($$) {
	my ($output, $a) = @_;
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = 0;
	$output->[3] = $a->[2];
	$output->[4] = $a->[3];
	$output->[5] = 0;
	$output->[6] = $a->[4];
	$output->[7] = $a->[5];
	$output->[8] = 1;
	return $output;
}

=head2 C<Mat3::from_mat4(\@output, \@a)>

**

=cut

sub from_mat4($$) {
	my ($output, $a) = @_;
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	$output->[3] = $a->[4];
	$output->[4] = $a->[5];
	$output->[5] = $a->[6];
	$output->[6] = $a->[8];
	$output->[7] = $a->[9];
	$output->[8] = $a->[10];
	return $output;
}

=head2 C<Mat3::from_quat(\@output, \@q)>

**

=cut

sub from_quat($$) {
	my ($output, $q) = @_;
	my $x = $q->[0];
	my $y = $q->[1];
	my $z = $q->[2];
	my $w = $q->[3];
	my $x2 = $x + $x;
	my $y2 = $y + $y;
	my $z2 = $z + $z;
	my $xx = $x * $x2;
	my $xy = $x * $y2;
	my $xz = $x * $z2;
	my $yy = $y * $y2;
	my $yz = $y * $z2;
	my $zz = $z * $z2;
	my $wx = $w * $x2;
	my $wy = $w * $y2;
	my $wz = $w * $z2;
	$output->[0] = 1 - ($yy + $zz);
	$output->[3] = $xy + $wz;
	$output->[6] = $xz - $wy;
	$output->[1] = $xy - $wz;
	$output->[4] = 1 - ($xx + $zz);
	$output->[7] = $yz + $wx;
	$output->[2] = $xz + $wy;
	$output->[5] = $yz - $wx;
	$output->[8] = 1 - ($xx + $yy);
	return $output;
}

=head2 C<Mat3::identity_(\@output)>

**

=cut

sub identity_($) {
	my ($output) = @_;
	$output->[0] = 1;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 0;
	$output->[4] = 1;
	$output->[5] = 0;
	$output->[6] = 0;
	$output->[7] = 0;
	$output->[8] = 1;
	return $output;
}

=head2 C<Mat3::invert(\@output, \@a)>

**

=cut

sub invert($$) {
	my ($output, $a) = @_;
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a10 = $a->[3];
	my $a11 = $a->[4];
	my $a12 = $a->[5];
	my $a20 = $a->[6];
	my $a21 = $a->[7];
	my $a22 = $a->[8];
	my $b01 = $a22 * $a11 - $a12 * $a21;
	my $b11 = -$a22 * $a10 + $a12 * $a20;
	my $b21 = $a21 * $a10 - $a11 * $a20;
	my $det = $a00 * $b01 + $a01 * $b11 + $a02 * $b21;
	if ($det == 0) {
		return undef;
	}
	my $one = 1;
	$det = $one / $det;
	$output->[0] = $b01 * $det;
	$output->[1] = (-$a22 * $a01 + $a02 * $a21) * $det;
	$output->[2] = ($a12 * $a01 - $a02 * $a11) * $det;
	$output->[3] = $b11 * $det;
	$output->[4] = ($a22 * $a00 - $a02 * $a20) * $det;
	$output->[5] = (-$a12 * $a00 + $a02 * $a10) * $det;
	$output->[6] = $b21 * $det;
	$output->[7] = (-$a21 * $a00 + $a01 * $a20) * $det;
	$output->[8] = ($a11 * $a00 - $a01 * $a10) * $det;
	return $output;
}

=head2 C<Mat3::mul(\@output, \@a, \@b)>

**

=cut

sub mul($$$) {
	my ($output, $a, $b) = @_;
	return Mat3::multiply($output, $a, $b);
}

=head2 C<Mat3::multiply(\@output, \@a, \@b)>

**

=cut

sub multiply($$$) {
	my ($output, $a, $b) = @_;
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a10 = $a->[3];
	my $a11 = $a->[4];
	my $a12 = $a->[5];
	my $a20 = $a->[6];
	my $a21 = $a->[7];
	my $a22 = $a->[8];
	my $b00 = $b->[0];
	my $b01 = $b->[1];
	my $b02 = $b->[2];
	my $b10 = $b->[3];
	my $b11 = $b->[4];
	my $b12 = $b->[5];
	my $b20 = $b->[6];
	my $b21 = $b->[7];
	my $b22 = $b->[8];
	$output->[0] = $b00 * $a00 + $b01 * $a10 + $b02 * $a20;
	$output->[1] = $b00 * $a01 + $b01 * $a11 + $b02 * $a21;
	$output->[2] = $b00 * $a02 + $b01 * $a12 + $b02 * $a22;
	$output->[3] = $b10 * $a00 + $b11 * $a10 + $b12 * $a20;
	$output->[4] = $b10 * $a01 + $b11 * $a11 + $b12 * $a21;
	$output->[5] = $b10 * $a02 + $b11 * $a12 + $b12 * $a22;
	$output->[6] = $b20 * $a00 + $b21 * $a10 + $b22 * $a20;
	$output->[7] = $b20 * $a01 + $b21 * $a11 + $b22 * $a21;
	$output->[8] = $b20 * $a02 + $b21 * $a12 + $b22 * $a22;
	return $output;
}

=head2 C<Mat3::normal_from_mat4(\@output, \@a)>

**

=cut

sub normal_from_mat4($$) {
	my ($output, $a) = @_;
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a03 = $a->[3];
	my $a10 = $a->[4];
	my $a11 = $a->[5];
	my $a12 = $a->[6];
	my $a13 = $a->[7];
	my $a20 = $a->[8];
	my $a21 = $a->[9];
	my $a22 = $a->[10];
	my $a23 = $a->[11];
	my $a30 = $a->[12];
	my $a31 = $a->[13];
	my $a32 = $a->[14];
	my $a33 = $a->[15];
	my $b00 = $a00 * $a11 - $a01 * $a10;
	my $b01 = $a00 * $a12 - $a02 * $a10;
	my $b02 = $a00 * $a13 - $a03 * $a10;
	my $b03 = $a01 * $a12 - $a02 * $a11;
	my $b04 = $a01 * $a13 - $a03 * $a11;
	my $b05 = $a02 * $a13 - $a03 * $a12;
	my $b06 = $a20 * $a31 - $a21 * $a30;
	my $b07 = $a20 * $a32 - $a22 * $a30;
	my $b08 = $a20 * $a33 - $a23 * $a30;
	my $b09 = $a21 * $a32 - $a22 * $a31;
	my $b10 = $a21 * $a33 - $a23 * $a31;
	my $b11 = $a22 * $a33 - $a23 * $a32;
	my $det = $b00 * $b11 - $b01 * $b10 + $b02 * $b09 + $b03 * $b08 - $b04 * $b07 + $b05 * $b06;
	if ($det == 0) {
		return undef;
	}
	my $one = 1;
	$det = $one / $det;
	$output->[0] = ($a11 * $b11 - $a12 * $b10 + $a13 * $b09) * $det;
	$output->[1] = ($a12 * $b08 - $a10 * $b11 - $a13 * $b07) * $det;
	$output->[2] = ($a10 * $b10 - $a11 * $b08 + $a13 * $b06) * $det;
	$output->[3] = ($a02 * $b10 - $a01 * $b11 - $a03 * $b09) * $det;
	$output->[4] = ($a00 * $b11 - $a02 * $b08 + $a03 * $b07) * $det;
	$output->[5] = ($a01 * $b08 - $a00 * $b10 - $a03 * $b06) * $det;
	$output->[6] = ($a31 * $b05 - $a32 * $b04 + $a33 * $b03) * $det;
	$output->[7] = ($a32 * $b02 - $a30 * $b05 - $a33 * $b01) * $det;
	$output->[8] = ($a30 * $b04 - $a31 * $b02 + $a33 * $b00) * $det;
	return $output;
}

=head2 C<Mat3::rotate(\@output, \@a, $rad)>

**

=cut

sub rotate($$$) {
	my ($output, $a, $rad) = @_;
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a10 = $a->[3];
	my $a11 = $a->[4];
	my $a12 = $a->[5];
	my $a20 = $a->[6];
	my $a21 = $a->[7];
	my $a22 = $a->[8];
	my $s = Platform::sin($rad);
	my $c = Platform::cos($rad);
	$output->[0] = $c * $a00 + $s * $a10;
	$output->[1] = $c * $a01 + $s * $a11;
	$output->[2] = $c * $a02 + $s * $a12;
	$output->[3] = $c * $a10 - $s * $a00;
	$output->[4] = $c * $a11 - $s * $a01;
	$output->[5] = $c * $a12 - $s * $a02;
	$output->[6] = $a20;
	$output->[7] = $a21;
	$output->[8] = $a22;
	return $output;
}

=head2 C<Mat3::scale(\@output, \@a, \@v)>

**

=cut

sub scale($$$) {
	my ($output, $a, $v) = @_;
	my $x = $v->[0];
	my $y = $v->[1];
	$output->[0] = $x * $a->[0];
	$output->[1] = $x * $a->[1];
	$output->[2] = $x * $a->[2];
	$output->[3] = $y * $a->[3];
	$output->[4] = $y * $a->[4];
	$output->[5] = $y * $a->[5];
	$output->[6] = $a->[6];
	$output->[7] = $a->[7];
	$output->[8] = $a->[8];
	return $output;
}

=head2 C<Mat3::translate(\@output, \@a, \@v)>

**

=cut

sub translate($$$) {
	my ($output, $a, $v) = @_;
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a10 = $a->[3];
	my $a11 = $a->[4];
	my $a12 = $a->[5];
	my $a20 = $a->[6];
	my $a21 = $a->[7];
	my $a22 = $a->[8];
	my $x = $v->[0];
	my $y = $v->[1];
	$output->[0] = $a00;
	$output->[1] = $a01;
	$output->[2] = $a02;
	$output->[3] = $a10;
	$output->[4] = $a11;
	$output->[5] = $a12;
	$output->[6] = $x * $a00 + $y * $a10 + $a20;
	$output->[7] = $x * $a01 + $y * $a11 + $a21;
	$output->[8] = $x * $a02 + $y * $a12 + $a22;
	return $output;
}

=head2 C<Mat3::transpose(\@output, \@a)>

**

=cut

sub transpose($$) {
	my ($output, $a) = @_;
	if ($output == $a) {
		my $a01 = $a->[1];
		my $a02 = $a->[2];
		my $a12 = $a->[5];
		$output->[1] = $a->[3];
		$output->[2] = $a->[6];
		$output->[3] = $a01;
		$output->[5] = $a->[7];
		$output->[6] = $a02;
		$output->[7] = $a12;
	}
	else {
		$output->[0] = $a->[0];
		$output->[1] = $a->[3];
		$output->[2] = $a->[6];
		$output->[3] = $a->[1];
		$output->[4] = $a->[4];
		$output->[5] = $a->[7];
		$output->[6] = $a->[2];
		$output->[7] = $a->[5];
		$output->[8] = $a->[8];
	}
	return $output;
}

sub f($) {
	my ($self) = @_;
}

=head1 Class Mat4

4x4 Matrix

=cut

package Mat4;

=head2 C<$mat4 = Mat4-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

=head2 C<Mat4::adjoint(\@output, \@a)>

Calculates the adjugate of a mat4
@returns {mat4} out

Parameters:

=over

=item \@output

@param {mat4} out the receiving matrix

=item \@a

@param {mat4} a the source matrix

=back

=cut

sub adjoint($$) {
	my ($output, $a) = @_;
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a03 = $a->[3];
	my $a10 = $a->[4];
	my $a11 = $a->[5];
	my $a12 = $a->[6];
	my $a13 = $a->[7];
	my $a20 = $a->[8];
	my $a21 = $a->[9];
	my $a22 = $a->[10];
	my $a23 = $a->[11];
	my $a30 = $a->[12];
	my $a31 = $a->[13];
	my $a32 = $a->[14];
	my $a33 = $a->[15];
	$output->[0] = $a11 * ($a22 * $a33 - $a23 * $a32) - $a21 * ($a12 * $a33 - $a13 * $a32) + $a31 * ($a12 * $a23 - $a13 * $a22);
	$output->[1] = -($a01 * ($a22 * $a33 - $a23 * $a32) - $a21 * ($a02 * $a33 - $a03 * $a32) + $a31 * ($a02 * $a23 - $a03 * $a22));
	$output->[2] = $a01 * ($a12 * $a33 - $a13 * $a32) - $a11 * ($a02 * $a33 - $a03 * $a32) + $a31 * ($a02 * $a13 - $a03 * $a12);
	$output->[3] = -($a01 * ($a12 * $a23 - $a13 * $a22) - $a11 * ($a02 * $a23 - $a03 * $a22) + $a21 * ($a02 * $a13 - $a03 * $a12));
	$output->[4] = -($a10 * ($a22 * $a33 - $a23 * $a32) - $a20 * ($a12 * $a33 - $a13 * $a32) + $a30 * ($a12 * $a23 - $a13 * $a22));
	$output->[5] = $a00 * ($a22 * $a33 - $a23 * $a32) - $a20 * ($a02 * $a33 - $a03 * $a32) + $a30 * ($a02 * $a23 - $a03 * $a22);
	$output->[6] = -($a00 * ($a12 * $a33 - $a13 * $a32) - $a10 * ($a02 * $a33 - $a03 * $a32) + $a30 * ($a02 * $a13 - $a03 * $a12));
	$output->[7] = $a00 * ($a12 * $a23 - $a13 * $a22) - $a10 * ($a02 * $a23 - $a03 * $a22) + $a20 * ($a02 * $a13 - $a03 * $a12);
	$output->[8] = $a10 * ($a21 * $a33 - $a23 * $a31) - $a20 * ($a11 * $a33 - $a13 * $a31) + $a30 * ($a11 * $a23 - $a13 * $a21);
	$output->[9] = -($a00 * ($a21 * $a33 - $a23 * $a31) - $a20 * ($a01 * $a33 - $a03 * $a31) + $a30 * ($a01 * $a23 - $a03 * $a21));
	$output->[10] = $a00 * ($a11 * $a33 - $a13 * $a31) - $a10 * ($a01 * $a33 - $a03 * $a31) + $a30 * ($a01 * $a13 - $a03 * $a11);
	$output->[11] = -($a00 * ($a11 * $a23 - $a13 * $a21) - $a10 * ($a01 * $a23 - $a03 * $a21) + $a20 * ($a01 * $a13 - $a03 * $a11));
	$output->[12] = -($a10 * ($a21 * $a32 - $a22 * $a31) - $a20 * ($a11 * $a32 - $a12 * $a31) + $a30 * ($a11 * $a22 - $a12 * $a21));
	$output->[13] = $a00 * ($a21 * $a32 - $a22 * $a31) - $a20 * ($a01 * $a32 - $a02 * $a31) + $a30 * ($a01 * $a22 - $a02 * $a21);
	$output->[14] = -($a00 * ($a11 * $a32 - $a12 * $a31) - $a10 * ($a01 * $a32 - $a02 * $a31) + $a30 * ($a01 * $a12 - $a02 * $a11));
	$output->[15] = $a00 * ($a11 * $a22 - $a12 * $a21) - $a10 * ($a01 * $a22 - $a02 * $a21) + $a20 * ($a01 * $a12 - $a02 * $a11);
	return $output;
}

=head2 C<Mat4::clone_it(\@a)>

Creates a new mat4 initialized with values from an existing matrix
Returns {mat4} a new 4x4 matrix

Parameters:

=over

=item \@a

{mat4} a matrix to clone

=back

=cut

sub clone_it($) {
	my ($a) = @_;
	my $output = [];
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	$output->[3] = $a->[3];
	$output->[4] = $a->[4];
	$output->[5] = $a->[5];
	$output->[6] = $a->[6];
	$output->[7] = $a->[7];
	$output->[8] = $a->[8];
	$output->[9] = $a->[9];
	$output->[10] = $a->[10];
	$output->[11] = $a->[11];
	$output->[12] = $a->[12];
	$output->[13] = $a->[13];
	$output->[14] = $a->[14];
	$output->[15] = $a->[15];
	return $output;
}

=head2 C<Mat4::copy(\@output, \@a)>

Copy the values from one mat4 to another
Returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out the receiving matrix

=item \@a

{mat4} a the source matrix

=back

=cut

sub copy($$) {
	my ($output, $a) = @_;
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	$output->[3] = $a->[3];
	$output->[4] = $a->[4];
	$output->[5] = $a->[5];
	$output->[6] = $a->[6];
	$output->[7] = $a->[7];
	$output->[8] = $a->[8];
	$output->[9] = $a->[9];
	$output->[10] = $a->[10];
	$output->[11] = $a->[11];
	$output->[12] = $a->[12];
	$output->[13] = $a->[13];
	$output->[14] = $a->[14];
	$output->[15] = $a->[15];
	return $output;
}

=head2 C<Mat4::create()>

Creates a new identity mat4
Returns {mat4} a new 4x4 matrix

=cut

sub create() {
	my $output = [];
	$output->[0] = 1;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 0;
	$output->[4] = 0;
	$output->[5] = 1;
	$output->[6] = 0;
	$output->[7] = 0;
	$output->[8] = 0;
	$output->[9] = 0;
	$output->[10] = 1;
	$output->[11] = 0;
	$output->[12] = 0;
	$output->[13] = 0;
	$output->[14] = 0;
	$output->[15] = 1;
	return $output;
}

=head2 C<Mat4::determinant(\@a)>

Calculates the determinant of a mat4
@returns {Number} determinant of a

Parameters:

=over

=item \@a

@param {mat4} a the source matrix

=back

=cut

sub determinant($) {
	my ($a) = @_;
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a03 = $a->[3];
	my $a10 = $a->[4];
	my $a11 = $a->[5];
	my $a12 = $a->[6];
	my $a13 = $a->[7];
	my $a20 = $a->[8];
	my $a21 = $a->[9];
	my $a22 = $a->[10];
	my $a23 = $a->[11];
	my $a30 = $a->[12];
	my $a31 = $a->[13];
	my $a32 = $a->[14];
	my $a33 = $a->[15];
	my $b00 = $a00 * $a11 - $a01 * $a10;
	my $b01 = $a00 * $a12 - $a02 * $a10;
	my $b02 = $a00 * $a13 - $a03 * $a10;
	my $b03 = $a01 * $a12 - $a02 * $a11;
	my $b04 = $a01 * $a13 - $a03 * $a11;
	my $b05 = $a02 * $a13 - $a03 * $a12;
	my $b06 = $a20 * $a31 - $a21 * $a30;
	my $b07 = $a20 * $a32 - $a22 * $a30;
	my $b08 = $a20 * $a33 - $a23 * $a30;
	my $b09 = $a21 * $a32 - $a22 * $a31;
	my $b10 = $a21 * $a33 - $a23 * $a31;
	my $b11 = $a22 * $a33 - $a23 * $a32;
	return $b00 * $b11 - $b01 * $b10 + $b02 * $b09 + $b03 * $b08 - $b04 * $b07 + $b05 * $b06;
}

=head2 C<Mat4::from_quat(\@output, \@q)>

Calculates a 4x4 matrix from the given quaternion
@returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out mat4 receiving operation result

=item \@q

{quat} q Quaternion to create matrix from

=back

=cut

sub from_quat($$) {
	my ($output, $q) = @_;
	my $x = $q->[0];
	my $y = $q->[1];
	my $z = $q->[2];
	my $w = $q->[3];
	my $x2 = $x + $x;
	my $y2 = $y + $y;
	my $z2 = $z + $z;
	my $xx = $x * $x2;
	my $xy = $x * $y2;
	my $xz = $x * $z2;
	my $yy = $y * $y2;
	my $yz = $y * $z2;
	my $zz = $z * $z2;
	my $wx = $w * $x2;
	my $wy = $w * $y2;
	my $wz = $w * $z2;
	$output->[0] = 1 - ($yy + $zz);
	$output->[1] = $xy + $wz;
	$output->[2] = $xz - $wy;
	$output->[3] = 0;
	$output->[4] = $xy - $wz;
	$output->[5] = 1 - ($xx + $zz);
	$output->[6] = $yz + $wx;
	$output->[7] = 0;
	$output->[8] = $xz + $wy;
	$output->[9] = $yz - $wx;
	$output->[10] = 1 - ($xx + $yy);
	$output->[11] = 0;
	$output->[12] = 0;
	$output->[13] = 0;
	$output->[14] = 0;
	$output->[15] = 1;
	return $output;
}

=head2 C<Mat4::from_rotation_translation(\@output, \@q, \@v)>

Creates a matrix from a quaternion rotation and vector translation
This is equivalent to (but much faster than):
mat4.identity(dest);
mat4.translate(dest, vec);
var quatMat = mat4.create();
quat4.toMat4(quat, quatMat);
mat4.multiply(dest, quatMat);
@returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out mat4 receiving operation result

=item \@q

{quat4} q Rotation quaternion

=item \@v

{vec3} v Translation vector

=back

=cut

sub from_rotation_translation($$$) {
	my ($output, $q, $v) = @_;
	my $x = $q->[0];
	my $y = $q->[1];
	my $z = $q->[2];
	my $w = $q->[3];
	my $x2 = $x + $x;
	my $y2 = $y + $y;
	my $z2 = $z + $z;
	my $xx = $x * $x2;
	my $xy = $x * $y2;
	my $xz = $x * $z2;
	my $yy = $y * $y2;
	my $yz = $y * $z2;
	my $zz = $z * $z2;
	my $wx = $w * $x2;
	my $wy = $w * $y2;
	my $wz = $w * $z2;
	$output->[0] = 1 - ($yy + $zz);
	$output->[1] = $xy + $wz;
	$output->[2] = $xz - $wy;
	$output->[3] = 0;
	$output->[4] = $xy - $wz;
	$output->[5] = 1 - ($xx + $zz);
	$output->[6] = $yz + $wx;
	$output->[7] = 0;
	$output->[8] = $xz + $wy;
	$output->[9] = $yz - $wx;
	$output->[10] = 1 - ($xx + $yy);
	$output->[11] = 0;
	$output->[12] = $v->[0];
	$output->[13] = $v->[1];
	$output->[14] = $v->[2];
	$output->[15] = 1;
	return $output;
}

=head2 C<Mat4::frustum(\@output, $left, $right, $bottom, $top, $near, $far)>

Generates a frustum matrix with the given bounds
@returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out mat4 frustum matrix will be written into

=item $left

{Number} left Left bound of the frustum

=item $right

{Number} right Right bound of the frustum

=item $bottom

{Number} bottom Bottom bound of the frustum

=item $top

{Number} top Top bound of the frustum

=item $near

{Number} near Near bound of the frustum

=item $far

{Number} far Far bound of the frustum

=back

=cut

sub frustum($$$$$$$) {
	my ($output, $left, $right, $bottom, $top, $near, $far) = @_;
	my $rl = 1 / ($right - $left);
	my $tb = 1 / ($top - $bottom);
	my $nf = 1 / ($near - $far);
	$output->[0] = $near * 2 * $rl;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 0;
	$output->[4] = 0;
	$output->[5] = $near * 2 * $tb;
	$output->[6] = 0;
	$output->[7] = 0;
	$output->[8] = ($right + $left) * $rl;
	$output->[9] = ($top + $bottom) * $tb;
	$output->[10] = ($far + $near) * $nf;
	$output->[11] = -1;
	$output->[12] = 0;
	$output->[13] = 0;
	$output->[14] = $far * $near * 2 * $nf;
	$output->[15] = 0;
	return $output;
}

=head2 C<Mat4::identity_(\@output)>

Set a mat4 to the identity matrix
Returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out the receiving matrix

=back

=cut

sub identity_($) {
	my ($output) = @_;
	$output->[0] = 1;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 0;
	$output->[4] = 0;
	$output->[5] = 1;
	$output->[6] = 0;
	$output->[7] = 0;
	$output->[8] = 0;
	$output->[9] = 0;
	$output->[10] = 1;
	$output->[11] = 0;
	$output->[12] = 0;
	$output->[13] = 0;
	$output->[14] = 0;
	$output->[15] = 1;
	return $output;
}

=head2 C<Mat4::invert(\@output, \@a)>

Inverts a mat4
@returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out the receiving matrix

=item \@a

{mat4} a the source matrix

=back

=cut

sub invert($$) {
	my ($output, $a) = @_;
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a03 = $a->[3];
	my $a10 = $a->[4];
	my $a11 = $a->[5];
	my $a12 = $a->[6];
	my $a13 = $a->[7];
	my $a20 = $a->[8];
	my $a21 = $a->[9];
	my $a22 = $a->[10];
	my $a23 = $a->[11];
	my $a30 = $a->[12];
	my $a31 = $a->[13];
	my $a32 = $a->[14];
	my $a33 = $a->[15];
	my $b00 = $a00 * $a11 - $a01 * $a10;
	my $b01 = $a00 * $a12 - $a02 * $a10;
	my $b02 = $a00 * $a13 - $a03 * $a10;
	my $b03 = $a01 * $a12 - $a02 * $a11;
	my $b04 = $a01 * $a13 - $a03 * $a11;
	my $b05 = $a02 * $a13 - $a03 * $a12;
	my $b06 = $a20 * $a31 - $a21 * $a30;
	my $b07 = $a20 * $a32 - $a22 * $a30;
	my $b08 = $a20 * $a33 - $a23 * $a30;
	my $b09 = $a21 * $a32 - $a22 * $a31;
	my $b10 = $a21 * $a33 - $a23 * $a31;
	my $b11 = $a22 * $a33 - $a23 * $a32;
	my $det = $b00 * $b11 - $b01 * $b10 + $b02 * $b09 + $b03 * $b08 - $b04 * $b07 + $b05 * $b06;
	if ($det == 0) {
		return undef;
	}
	my $one = 1;
	$det = $one / $det;
	$output->[0] = ($a11 * $b11 - $a12 * $b10 + $a13 * $b09) * $det;
	$output->[1] = ($a02 * $b10 - $a01 * $b11 - $a03 * $b09) * $det;
	$output->[2] = ($a31 * $b05 - $a32 * $b04 + $a33 * $b03) * $det;
	$output->[3] = ($a22 * $b04 - $a21 * $b05 - $a23 * $b03) * $det;
	$output->[4] = ($a12 * $b08 - $a10 * $b11 - $a13 * $b07) * $det;
	$output->[5] = ($a00 * $b11 - $a02 * $b08 + $a03 * $b07) * $det;
	$output->[6] = ($a32 * $b02 - $a30 * $b05 - $a33 * $b01) * $det;
	$output->[7] = ($a20 * $b05 - $a22 * $b02 + $a23 * $b01) * $det;
	$output->[8] = ($a10 * $b10 - $a11 * $b08 + $a13 * $b06) * $det;
	$output->[9] = ($a01 * $b08 - $a00 * $b10 - $a03 * $b06) * $det;
	$output->[10] = ($a30 * $b04 - $a31 * $b02 + $a33 * $b00) * $det;
	$output->[11] = ($a21 * $b02 - $a20 * $b04 - $a23 * $b00) * $det;
	$output->[12] = ($a11 * $b07 - $a10 * $b09 - $a12 * $b06) * $det;
	$output->[13] = ($a00 * $b09 - $a01 * $b07 + $a02 * $b06) * $det;
	$output->[14] = ($a31 * $b01 - $a30 * $b03 - $a32 * $b00) * $det;
	$output->[15] = ($a20 * $b03 - $a21 * $b01 + $a22 * $b00) * $det;
	return $output;
}

=head2 C<Mat4::look_at(\@output, \@eye, \@center, \@up)>

Generates a look-at matrix with the given eye position, focal point, and up axis
@returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out mat4 frustum matrix will be written into

=item \@eye

{vec3} eye Position of the viewer

=item \@center

{vec3} center Point the viewer is looking at

=item \@up

{vec3} up vec3 pointing up

=back

=cut

sub look_at($$$$) {
	my ($output, $eye, $center, $up) = @_;
	my $x0;
	my $x1;
	my $x2;
	my $y0;
	my $y1;
	my $y2;
	my $z0;
	my $z1;
	my $z2;
	my $len;
	my $eyex = $eye->[0];
	my $eyey = $eye->[1];
	my $eyez = $eye->[2];
	my $upx = $up->[0];
	my $upy = $up->[1];
	my $upz = $up->[2];
	my $centerx = $center->[0];
	my $centery = $center->[1];
	my $centerz = $center->[2];
	if (GlMatrixMath::abs($eyex - $centerx) < GlMatrixMath::g_l_m_a_t__e_p_s_i_l_o_n() && GlMatrixMath::abs($eyey - $centery) < GlMatrixMath::g_l_m_a_t__e_p_s_i_l_o_n() && GlMatrixMath::abs($eyez - $centerz) < GlMatrixMath::g_l_m_a_t__e_p_s_i_l_o_n()) {
		return Mat4::identity_($output);
	}
	$z0 = $eyex - $centerx;
	$z1 = $eyey - $centery;
	$z2 = $eyez - $centerz;
	$len = 1 / Platform::sqrt($z0 * $z0 + $z1 * $z1 + $z2 * $z2);
	$z0 *= $len;
	$z1 *= $len;
	$z2 *= $len;
	$x0 = $upy * $z2 - $upz * $z1;
	$x1 = $upz * $z0 - $upx * $z2;
	$x2 = $upx * $z1 - $upy * $z0;
	$len = Platform::sqrt($x0 * $x0 + $x1 * $x1 + $x2 * $x2);
	if ($len == 0) {
		$x0 = 0;
		$x1 = 0;
		$x2 = 0;
	}
	else {
		$len = 1 / $len;
		$x0 *= $len;
		$x1 *= $len;
		$x2 *= $len;
	}
	$y0 = $z1 * $x2 - $z2 * $x1;
	$y1 = $z2 * $x0 - $z0 * $x2;
	$y2 = $z0 * $x1 - $z1 * $x0;
	$len = Platform::sqrt($y0 * $y0 + $y1 * $y1 + $y2 * $y2);
	if ($len == 0) {
		$y0 = 0;
		$y1 = 0;
		$y2 = 0;
	}
	else {
		$len = 1 / $len;
		$y0 *= $len;
		$y1 *= $len;
		$y2 *= $len;
	}
	$output->[0] = $x0;
	$output->[1] = $y0;
	$output->[2] = $z0;
	$output->[3] = 0;
	$output->[4] = $x1;
	$output->[5] = $y1;
	$output->[6] = $z1;
	$output->[7] = 0;
	$output->[8] = $x2;
	$output->[9] = $y2;
	$output->[10] = $z2;
	$output->[11] = 0;
	$output->[12] = -($x0 * $eyex + $x1 * $eyey + $x2 * $eyez);
	$output->[13] = -($y0 * $eyex + $y1 * $eyey + $y2 * $eyez);
	$output->[14] = -($z0 * $eyex + $z1 * $eyey + $z2 * $eyez);
	$output->[15] = 1;
	return $output;
}

=head2 C<Mat4::mul(\@output, \@a, \@b)>

Alias for {@link mat4.multiply}

=cut

sub mul($$$) {
	my ($output, $a, $b) = @_;
	return Mat4::multiply($output, $a, $b);
}

=head2 C<Mat4::multiply(\@output, \@a, \@b)>

Multiplies two mat4's
@returns {mat4} out

Parameters:

=over

=item \@output

@param {mat4} out the receiving matrix

=item \@a

@param {mat4} a the first operand

=item \@b

@param {mat4} b the second operand

=back

=cut

sub multiply($$$) {
	my ($output, $a, $b) = @_;
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a03 = $a->[3];
	my $a10 = $a->[4];
	my $a11 = $a->[5];
	my $a12 = $a->[6];
	my $a13 = $a->[7];
	my $a20 = $a->[8];
	my $a21 = $a->[9];
	my $a22 = $a->[10];
	my $a23 = $a->[11];
	my $a30 = $a->[12];
	my $a31 = $a->[13];
	my $a32 = $a->[14];
	my $a33 = $a->[15];
	my $b0 = $b->[0];
	my $b1 = $b->[1];
	my $b2 = $b->[2];
	my $b3 = $b->[3];
	$output->[0] = $b0 * $a00 + $b1 * $a10 + $b2 * $a20 + $b3 * $a30;
	$output->[1] = $b0 * $a01 + $b1 * $a11 + $b2 * $a21 + $b3 * $a31;
	$output->[2] = $b0 * $a02 + $b1 * $a12 + $b2 * $a22 + $b3 * $a32;
	$output->[3] = $b0 * $a03 + $b1 * $a13 + $b2 * $a23 + $b3 * $a33;
	$b0 = $b->[4];
	$b1 = $b->[5];
	$b2 = $b->[6];
	$b3 = $b->[7];
	$output->[4] = $b0 * $a00 + $b1 * $a10 + $b2 * $a20 + $b3 * $a30;
	$output->[5] = $b0 * $a01 + $b1 * $a11 + $b2 * $a21 + $b3 * $a31;
	$output->[6] = $b0 * $a02 + $b1 * $a12 + $b2 * $a22 + $b3 * $a32;
	$output->[7] = $b0 * $a03 + $b1 * $a13 + $b2 * $a23 + $b3 * $a33;
	$b0 = $b->[8];
	$b1 = $b->[9];
	$b2 = $b->[10];
	$b3 = $b->[11];
	$output->[8] = $b0 * $a00 + $b1 * $a10 + $b2 * $a20 + $b3 * $a30;
	$output->[9] = $b0 * $a01 + $b1 * $a11 + $b2 * $a21 + $b3 * $a31;
	$output->[10] = $b0 * $a02 + $b1 * $a12 + $b2 * $a22 + $b3 * $a32;
	$output->[11] = $b0 * $a03 + $b1 * $a13 + $b2 * $a23 + $b3 * $a33;
	$b0 = $b->[12];
	$b1 = $b->[13];
	$b2 = $b->[14];
	$b3 = $b->[15];
	$output->[12] = $b0 * $a00 + $b1 * $a10 + $b2 * $a20 + $b3 * $a30;
	$output->[13] = $b0 * $a01 + $b1 * $a11 + $b2 * $a21 + $b3 * $a31;
	$output->[14] = $b0 * $a02 + $b1 * $a12 + $b2 * $a22 + $b3 * $a32;
	$output->[15] = $b0 * $a03 + $b1 * $a13 + $b2 * $a23 + $b3 * $a33;
	return $output;
}

=head2 C<Mat4::ortho(\@output, $left, $right, $bottom, $top, $near, $far)>

Generates a orthogonal projection matrix with the given bounds
@returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out mat4 frustum matrix will be written into

=item $left

{number} left Left bound of the frustum

=item $right

{number} right Right bound of the frustum

=item $bottom

{number} bottom Bottom bound of the frustum

=item $top

{number} top Top bound of the frustum

=item $near

{number} near Near bound of the frustum

=item $far

{number} far Far bound of the frustum

=back

=cut

sub ortho($$$$$$$) {
	my ($output, $left, $right, $bottom, $top, $near, $far) = @_;
	my $lr = 1 / ($left - $right);
	my $bt = 1 / ($bottom - $top);
	my $nf = 1 / ($near - $far);
	$output->[0] = -2 * $lr;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 0;
	$output->[4] = 0;
	$output->[5] = -2 * $bt;
	$output->[6] = 0;
	$output->[7] = 0;
	$output->[8] = 0;
	$output->[9] = 0;
	$output->[10] = 2 * $nf;
	$output->[11] = 0;
	$output->[12] = ($left + $right) * $lr;
	$output->[13] = ($top + $bottom) * $bt;
	$output->[14] = ($far + $near) * $nf;
	$output->[15] = 1;
	return $output;
}

=head2 C<Mat4::perspective(\@output, $fovy, $aspect, $near, $far)>

Generates a perspective projection matrix with the given bounds
@returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out mat4 frustum matrix will be written into

=item $fovy

{number} fovy Vertical field of view in radians

=item $aspect

{number} aspect Aspect ratio. typically viewport width/height

=item $near

{number} near Near bound of the frustum

=item $far

{number} far Far bound of the frustum

=back

=cut

sub perspective($$$$$) {
	my ($output, $fovy, $aspect, $near, $far) = @_;
	my $one = 1;
	my $f = $one / Platform::tan($fovy / 2);
	my $nf = 1 / ($near - $far);
	$output->[0] = $f / $aspect;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 0;
	$output->[4] = 0;
	$output->[5] = $f;
	$output->[6] = 0;
	$output->[7] = 0;
	$output->[8] = 0;
	$output->[9] = 0;
	$output->[10] = ($far + $near) * $nf;
	$output->[11] = -1;
	$output->[12] = 0;
	$output->[13] = 0;
	$output->[14] = 2 * $far * $near * $nf;
	$output->[15] = 0;
	return $output;
}

=head2 C<Mat4::rotate(\@output, \@a, $rad, \@axis)>

Rotates a mat4 by the given angle
@returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out the receiving matrix

=item \@a

{mat4} a the matrix to rotate

=item $rad

{Number} rad the angle to rotate the matrix by

=item \@axis

{vec3} axis the axis to rotate around

=back

=cut

sub rotate($$$$) {
	my ($output, $a, $rad, $axis) = @_;
	my $x = $axis->[0];
	my $y = $axis->[1];
	my $z = $axis->[2];
	my $len = Platform::sqrt($x * $x + $y * $y + $z * $z);
	my $s;
	my $c;
	my $t;
	my $a00;
	my $a01;
	my $a02;
	my $a03;
	my $a10;
	my $a11;
	my $a12;
	my $a13;
	my $a20;
	my $a21;
	my $a22;
	my $a23;
	my $b00;
	my $b01;
	my $b02;
	my $b10;
	my $b11;
	my $b12;
	my $b20;
	my $b21;
	my $b22;
	if (GlMatrixMath::abs($len) < GlMatrixMath::g_l_m_a_t__e_p_s_i_l_o_n()) {
		return undef;
	}
	$len = 1 / $len;
	$x *= $len;
	$y *= $len;
	$z *= $len;
	$s = Platform::sin($rad);
	$c = Platform::cos($rad);
	$t = 1 - $c;
	$a00 = $a->[0];
	$a01 = $a->[1];
	$a02 = $a->[2];
	$a03 = $a->[3];
	$a10 = $a->[4];
	$a11 = $a->[5];
	$a12 = $a->[6];
	$a13 = $a->[7];
	$a20 = $a->[8];
	$a21 = $a->[9];
	$a22 = $a->[10];
	$a23 = $a->[11];
	$b00 = $x * $x * $t + $c;
	$b01 = $y * $x * $t + $z * $s;
	$b02 = $z * $x * $t - $y * $s;
	$b10 = $x * $y * $t - $z * $s;
	$b11 = $y * $y * $t + $c;
	$b12 = $z * $y * $t + $x * $s;
	$b20 = $x * $z * $t + $y * $s;
	$b21 = $y * $z * $t - $x * $s;
	$b22 = $z * $z * $t + $c;
	$output->[0] = $a00 * $b00 + $a10 * $b01 + $a20 * $b02;
	$output->[1] = $a01 * $b00 + $a11 * $b01 + $a21 * $b02;
	$output->[2] = $a02 * $b00 + $a12 * $b01 + $a22 * $b02;
	$output->[3] = $a03 * $b00 + $a13 * $b01 + $a23 * $b02;
	$output->[4] = $a00 * $b10 + $a10 * $b11 + $a20 * $b12;
	$output->[5] = $a01 * $b10 + $a11 * $b11 + $a21 * $b12;
	$output->[6] = $a02 * $b10 + $a12 * $b11 + $a22 * $b12;
	$output->[7] = $a03 * $b10 + $a13 * $b11 + $a23 * $b12;
	$output->[8] = $a00 * $b20 + $a10 * $b21 + $a20 * $b22;
	$output->[9] = $a01 * $b20 + $a11 * $b21 + $a21 * $b22;
	$output->[10] = $a02 * $b20 + $a12 * $b21 + $a22 * $b22;
	$output->[11] = $a03 * $b20 + $a13 * $b21 + $a23 * $b22;
	if ($a != $output) {
		$output->[12] = $a->[12];
		$output->[13] = $a->[13];
		$output->[14] = $a->[14];
		$output->[15] = $a->[15];
	}
	return $output;
}

=head2 C<Mat4::rotate_x(\@output, \@a, $rad)>

Rotates a matrix by the given angle around the X axis
@returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out the receiving matrix

=item \@a

{mat4} a the matrix to rotate

=item $rad

{Number} rad the angle to rotate the matrix by

=back

=cut

sub rotate_x($$$) {
	my ($output, $a, $rad) = @_;
	my $s = Platform::sin($rad);
	my $c = Platform::cos($rad);
	my $a10 = $a->[4];
	my $a11 = $a->[5];
	my $a12 = $a->[6];
	my $a13 = $a->[7];
	my $a20 = $a->[8];
	my $a21 = $a->[9];
	my $a22 = $a->[10];
	my $a23 = $a->[11];
	if ($a != $output) {
		$output->[0] = $a->[0];
		$output->[1] = $a->[1];
		$output->[2] = $a->[2];
		$output->[3] = $a->[3];
		$output->[12] = $a->[12];
		$output->[13] = $a->[13];
		$output->[14] = $a->[14];
		$output->[15] = $a->[15];
	}
	$output->[4] = $a10 * $c + $a20 * $s;
	$output->[5] = $a11 * $c + $a21 * $s;
	$output->[6] = $a12 * $c + $a22 * $s;
	$output->[7] = $a13 * $c + $a23 * $s;
	$output->[8] = $a20 * $c - $a10 * $s;
	$output->[9] = $a21 * $c - $a11 * $s;
	$output->[10] = $a22 * $c - $a12 * $s;
	$output->[11] = $a23 * $c - $a13 * $s;
	return $output;
}

=head2 C<Mat4::rotate_y(\@output, \@a, $rad)>

Rotates a matrix by the given angle around the Y axis
@returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out the receiving matrix

=item \@a

{mat4} a the matrix to rotate

=item $rad

{Number} rad the angle to rotate the matrix by

=back

=cut

sub rotate_y($$$) {
	my ($output, $a, $rad) = @_;
	my $s = Platform::sin($rad);
	my $c = Platform::cos($rad);
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a03 = $a->[3];
	my $a20 = $a->[8];
	my $a21 = $a->[9];
	my $a22 = $a->[10];
	my $a23 = $a->[11];
	if ($a != $output) {
		$output->[4] = $a->[4];
		$output->[5] = $a->[5];
		$output->[6] = $a->[6];
		$output->[7] = $a->[7];
		$output->[12] = $a->[12];
		$output->[13] = $a->[13];
		$output->[14] = $a->[14];
		$output->[15] = $a->[15];
	}
	$output->[0] = $a00 * $c - $a20 * $s;
	$output->[1] = $a01 * $c - $a21 * $s;
	$output->[2] = $a02 * $c - $a22 * $s;
	$output->[3] = $a03 * $c - $a23 * $s;
	$output->[8] = $a00 * $s + $a20 * $c;
	$output->[9] = $a01 * $s + $a21 * $c;
	$output->[10] = $a02 * $s + $a22 * $c;
	$output->[11] = $a03 * $s + $a23 * $c;
	return $output;
}

=head2 C<Mat4::rotate_z(\@output, \@a, $rad)>

Rotates a matrix by the given angle around the Z axis
@returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out the receiving matrix

=item \@a

{mat4} a the matrix to rotate

=item $rad

{Number} rad the angle to rotate the matrix by

=back

=cut

sub rotate_z($$$) {
	my ($output, $a, $rad) = @_;
	my $s = Platform::sin($rad);
	my $c = Platform::cos($rad);
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a03 = $a->[3];
	my $a10 = $a->[4];
	my $a11 = $a->[5];
	my $a12 = $a->[6];
	my $a13 = $a->[7];
	if ($a != $output) {
		$output->[8] = $a->[8];
		$output->[9] = $a->[9];
		$output->[10] = $a->[10];
		$output->[11] = $a->[11];
		$output->[12] = $a->[12];
		$output->[13] = $a->[13];
		$output->[14] = $a->[14];
		$output->[15] = $a->[15];
	}
	$output->[0] = $a00 * $c + $a10 * $s;
	$output->[1] = $a01 * $c + $a11 * $s;
	$output->[2] = $a02 * $c + $a12 * $s;
	$output->[3] = $a03 * $c + $a13 * $s;
	$output->[4] = $a10 * $c - $a00 * $s;
	$output->[5] = $a11 * $c - $a01 * $s;
	$output->[6] = $a12 * $c - $a02 * $s;
	$output->[7] = $a13 * $c - $a03 * $s;
	return $output;
}

=head2 C<Mat4::scale(\@output, \@a, \@v)>

Scales the mat4 by the dimensions in the given vec3
@returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out the receiving matrix

=item \@a

{mat4} a the matrix to scale

=item \@v

{vec3} v the vec3 to scale the matrix by

=back

=cut

sub scale($$$) {
	my ($output, $a, $v) = @_;
	my $x = $v->[0];
	my $y = $v->[1];
	my $z = $v->[2];
	$output->[0] = $a->[0] * $x;
	$output->[1] = $a->[1] * $x;
	$output->[2] = $a->[2] * $x;
	$output->[3] = $a->[3] * $x;
	$output->[4] = $a->[4] * $y;
	$output->[5] = $a->[5] * $y;
	$output->[6] = $a->[6] * $y;
	$output->[7] = $a->[7] * $y;
	$output->[8] = $a->[8] * $z;
	$output->[9] = $a->[9] * $z;
	$output->[10] = $a->[10] * $z;
	$output->[11] = $a->[11] * $z;
	$output->[12] = $a->[12];
	$output->[13] = $a->[13];
	$output->[14] = $a->[14];
	$output->[15] = $a->[15];
	return $output;
}

=head2 C<Mat4::translate(\@output, \@a, \@v)>

Translate a mat4 by the given vector
@returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out the receiving matrix

=item \@a

{mat4} a the matrix to translate

=item \@v

{vec3} v vector to translate by

=back

=cut

sub translate($$$) {
	my ($output, $a, $v) = @_;
	my $x = $v->[0];
	my $y = $v->[1];
	my $z = $v->[2];
	my $a00;
	my $a01;
	my $a02;
	my $a03;
	my $a10;
	my $a11;
	my $a12;
	my $a13;
	my $a20;
	my $a21;
	my $a22;
	my $a23;
	if ($a == $output) {
		$output->[12] = $a->[0] * $x + $a->[4] * $y + $a->[8] * $z + $a->[12];
		$output->[13] = $a->[1] * $x + $a->[5] * $y + $a->[9] * $z + $a->[13];
		$output->[14] = $a->[2] * $x + $a->[6] * $y + $a->[10] * $z + $a->[14];
		$output->[15] = $a->[3] * $x + $a->[7] * $y + $a->[11] * $z + $a->[15];
	}
	else {
		$a00 = $a->[0];
		$a01 = $a->[1];
		$a02 = $a->[2];
		$a03 = $a->[3];
		$a10 = $a->[4];
		$a11 = $a->[5];
		$a12 = $a->[6];
		$a13 = $a->[7];
		$a20 = $a->[8];
		$a21 = $a->[9];
		$a22 = $a->[10];
		$a23 = $a->[11];
		$output->[0] = $a00;
		$output->[1] = $a01;
		$output->[2] = $a02;
		$output->[3] = $a03;
		$output->[4] = $a10;
		$output->[5] = $a11;
		$output->[6] = $a12;
		$output->[7] = $a13;
		$output->[8] = $a20;
		$output->[9] = $a21;
		$output->[10] = $a22;
		$output->[11] = $a23;
		$output->[12] = $a00 * $x + $a10 * $y + $a20 * $z + $a->[12];
		$output->[13] = $a01 * $x + $a11 * $y + $a21 * $z + $a->[13];
		$output->[14] = $a02 * $x + $a12 * $y + $a22 * $z + $a->[14];
		$output->[15] = $a03 * $x + $a13 * $y + $a23 * $z + $a->[15];
	}
	return $output;
}

=head2 C<Mat4::transpose(\@output, \@a)>

Transpose the values of a mat4
@returns {mat4} out

Parameters:

=over

=item \@output

@param {mat4} out the receiving matrix

=item \@a

@param {mat4} a the source matrix

=back

=cut

sub transpose($$) {
	my ($output, $a) = @_;
	if ($output == $a) {
		my $a01 = $a->[1];
		my $a02 = $a->[2];
		my $a03 = $a->[3];
		my $a12 = $a->[6];
		my $a13 = $a->[7];
		my $a23 = $a->[11];
		$output->[1] = $a->[4];
		$output->[2] = $a->[8];
		$output->[3] = $a->[12];
		$output->[4] = $a01;
		$output->[6] = $a->[9];
		$output->[7] = $a->[13];
		$output->[8] = $a02;
		$output->[9] = $a12;
		$output->[11] = $a->[14];
		$output->[12] = $a03;
		$output->[13] = $a13;
		$output->[14] = $a23;
	}
	else {
		$output->[0] = $a->[0];
		$output->[1] = $a->[4];
		$output->[2] = $a->[8];
		$output->[3] = $a->[12];
		$output->[4] = $a->[1];
		$output->[5] = $a->[5];
		$output->[6] = $a->[9];
		$output->[7] = $a->[13];
		$output->[8] = $a->[2];
		$output->[9] = $a->[6];
		$output->[10] = $a->[10];
		$output->[11] = $a->[14];
		$output->[12] = $a->[3];
		$output->[13] = $a->[7];
		$output->[14] = $a->[11];
		$output->[15] = $a->[15];
	}
	return $output;
}

sub f($) {
	my ($self) = @_;
}

=head1 Class Platform

=cut

package Platform;

=head2 C<$platform = Platform-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

=head2 C<Platform::acos($a)>

=cut

sub acos($) {
	my ($a) = @_;
	return 0;
}

=head2 C<Platform::cos($a)>

=cut

sub cos($) {
	my ($a) = @_;
	return 0;
}

=head2 C<Platform::sin($a)>

=cut

sub sin($) {
	my ($a) = @_;
	return 0;
}

=head2 C<Platform::sqrt($a)>

=cut

sub sqrt($) {
	my ($a) = @_;
	return 0;
}

=head2 C<Platform::tan($a)>

=cut

sub tan($) {
	my ($a) = @_;
	return 0;
}

=head2 C<Platform::write_int($a)>

=cut

sub write_int($) {
	my ($a) = @_;
}

=head2 C<Platform::write_string($a)>

=cut

sub write_string($) {
	my ($a) = @_;
}

=head1 Class Quat

=cut

package Quat;

=head2 C<$quat = Quat-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

=head2 C<Quat::add(\@output, \@a, \@b)>

**

=cut

sub add($$$) {
	my ($output, $a, $b) = @_;
	return Vec4::add($output, $a, $b);
}

=head2 C<Quat::calculate_w(\@output, \@a)>

**

=cut

sub calculate_w($$) {
	my ($output, $a) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	$output->[0] = $x;
	$output->[1] = $y;
	$output->[2] = $z;
	my $one = 1;
	$output->[3] = -Platform::sqrt(GlMatrixMath::abs($one - $x * $x - $y * $y - $z * $z));
	return $output;
}

=head2 C<Quat::clone_it(\@a)>

**

=cut

sub clone_it($) {
	my ($a) = @_;
	return Vec4::clone_it($a);
}

=head2 C<$quat-E<gt>conjugate(\@output, \@a)>

**

=cut

sub conjugate($$$) {
	my ($self, $output, $a) = @_;
	$output->[0] = -$a->[0];
	$output->[1] = -$a->[1];
	$output->[2] = -$a->[2];
	$output->[3] = $a->[3];
	return $output;
}

=head2 C<Quat::copy(\@output, \@a)>

**

=cut

sub copy($$) {
	my ($output, $a) = @_;
	return Vec4::copy($output, $a);
}

=head2 C<Quat::create()>

**

=cut

sub create() {
	my $output = [];
	$output->[0] = 0;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 1;
	return $output;
}

=head2 C<Quat::dot(\@a, \@b)>

**

=cut

sub dot($$) {
	my ($a, $b) = @_;
	return Vec4::dot($a, $b);
}

=head2 C<Quat::from_mat3(\@output, \@m)>

**

=cut

sub from_mat3($$) {
	my ($output, $m) = @_;
	my $fTrace = $m->[0] + $m->[4] + $m->[8];
	my $fRoot;
	my $zero = 0;
	my $one = 1;
	my $half = $one / 2;
	if ($fTrace > $zero) {
		$fRoot = Platform::sqrt($fTrace + $one);
		$output->[3] = $half * $fRoot;
		$fRoot = $half / $fRoot;
		$output->[0] = ($m->[7] - $m->[5]) * $fRoot;
		$output->[1] = ($m->[2] - $m->[6]) * $fRoot;
		$output->[2] = ($m->[3] - $m->[1]) * $fRoot;
	}
	else {
		my $i = 0;
		if ($m->[4] > $m->[0]) {
			$i = 1;
		}
		if ($m->[8] > $m->[$i * 3 + $i]) {
			$i = 2;
		}
		my $j = ($i + 1) % 3;
		my $k = ($i + 2) % 3;
		$fRoot = Platform::sqrt($m->[$i * 3 + $i] - $m->[$j * 3 + $j] - $m->[$k * 3 + $k] + $one);
		$output->[$i] = $half * $fRoot;
		$fRoot = $half / $fRoot;
		$output->[3] = ($m->[$k * 3 + $j] - $m->[$j * 3 + $k]) * $fRoot;
		$output->[$j] = ($m->[$j * 3 + $i] + $m->[$i * 3 + $j]) * $fRoot;
		$output->[$k] = ($m->[$k * 3 + $i] + $m->[$i * 3 + $k]) * $fRoot;
	}
	return $output;
}

=head2 C<Quat::from_values($x, $y, $z, $w)>

**

=cut

sub from_values($$$$) {
	my ($x, $y, $z, $w) = @_;
	return Vec4::from_values($x, $y, $z, $w);
}

=head2 C<Quat::identity_(\@output)>

**

=cut

sub identity_($) {
	my ($output) = @_;
	$output->[0] = 0;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 1;
	return $output;
}

=head2 C<$quat-E<gt>invert(\@output, \@a)>

**

=cut

sub invert($$$) {
	my ($self, $output, $a) = @_;
	my $a0 = $a->[0];
	my $a1 = $a->[1];
	my $a2 = $a->[2];
	my $a3 = $a->[3];
	my $dot = $a0 * $a0 + $a1 * $a1 + $a2 * $a2 + $a3 * $a3;
	my $one = 1;
	my $invDot = $dot != 0 ? $one / $dot : 0;
	$output->[0] = -$a0 * $invDot;
	$output->[1] = -$a1 * $invDot;
	$output->[2] = -$a2 * $invDot;
	$output->[3] = $a3 * $invDot;
	return $output;
}

=head2 C<Quat::len(\@a)>

**

=cut

sub len($) {
	my ($a) = @_;
	return Quat::length_($a);
}

=head2 C<Quat::length_(\@a)>

**

=cut

sub length_($) {
	my ($a) = @_;
	return Vec4::length_($a);
}

=head2 C<Quat::lerp(\@output, \@a, \@b, $t)>

**

=cut

sub lerp($$$$) {
	my ($output, $a, $b, $t) = @_;
	return Vec4::lerp($output, $a, $b, $t);
}

=head2 C<Quat::mul(\@output, \@a, \@b)>

**

=cut

sub mul($$$) {
	my ($output, $a, $b) = @_;
	return Quat::multiply($output, $a, $b);
}

=head2 C<Quat::multiply(\@output, \@a, \@b)>

**

=cut

sub multiply($$$) {
	my ($output, $a, $b) = @_;
	my $ax = $a->[0];
	my $ay = $a->[1];
	my $az = $a->[2];
	my $aw = $a->[3];
	my $bx = $b->[0];
	my $by = $b->[1];
	my $bz = $b->[2];
	my $bw = $b->[3];
	$output->[0] = $ax * $bw + $aw * $bx + $ay * $bz - $az * $by;
	$output->[1] = $ay * $bw + $aw * $by + $az * $bx - $ax * $bz;
	$output->[2] = $az * $bw + $aw * $bz + $ax * $by - $ay * $bx;
	$output->[3] = $aw * $bw - $ax * $bx - $ay * $by - $az * $bz;
	return $output;
}

=head2 C<Quat::normalize(\@output, \@a)>

**

=cut

sub normalize($$) {
	my ($output, $a) = @_;
	return Vec4::normalize($output, $a);
}

=head2 C<Quat::rotate_x(\@output, \@a, $rad)>

**

=cut

sub rotate_x($$$) {
	my ($output, $a, $rad) = @_;
	$rad /= 2;
	my $ax = $a->[0];
	my $ay = $a->[1];
	my $az = $a->[2];
	my $aw = $a->[3];
	my $bx = Platform::sin($rad);
	my $bw = Platform::cos($rad);
	$output->[0] = $ax * $bw + $aw * $bx;
	$output->[1] = $ay * $bw + $az * $bx;
	$output->[2] = $az * $bw - $ay * $bx;
	$output->[3] = $aw * $bw - $ax * $bx;
	return $output;
}

=head2 C<Quat::rotate_y(\@output, \@a, $rad)>

**

=cut

sub rotate_y($$$) {
	my ($output, $a, $rad) = @_;
	$rad /= 2;
	my $ax = $a->[0];
	my $ay = $a->[1];
	my $az = $a->[2];
	my $aw = $a->[3];
	my $by = Platform::sin($rad);
	my $bw = Platform::cos($rad);
	$output->[0] = $ax * $bw - $az * $by;
	$output->[1] = $ay * $bw + $aw * $by;
	$output->[2] = $az * $bw + $ax * $by;
	$output->[3] = $aw * $bw - $ay * $by;
	return $output;
}

=head2 C<Quat::rotate_z(\@output, \@a, $rad)>

**

=cut

sub rotate_z($$$) {
	my ($output, $a, $rad) = @_;
	$rad /= 2;
	my $ax = $a->[0];
	my $ay = $a->[1];
	my $az = $a->[2];
	my $aw = $a->[3];
	my $bz = Platform::sin($rad);
	my $bw = Platform::cos($rad);
	$output->[0] = $ax * $bw + $ay * $bz;
	$output->[1] = $ay * $bw - $ax * $bz;
	$output->[2] = $az * $bw + $aw * $bz;
	$output->[3] = $aw * $bw - $az * $bz;
	return $output;
}

=head2 C<Quat::rotation_to(\@output, \@a, \@b)>

**

=cut

sub rotation_to($$$) {
	my ($output, $a, $b) = @_;
	my $tmpvec3 = Vec3::create();
	my $xUnitVec3 = Vec3::from_values(1, 0, 0);
	my $yUnitVec3 = Vec3::from_values(0, 1, 0);
	my $dot = Vec3::dot($a, $b);
	my $nines = 999999;
	$nines /= 1000000;
	my $epsilon = 1;
	$epsilon /= 1000000;
	if ($dot < -$nines) {
		Vec3::cross($tmpvec3, $xUnitVec3, $a);
		if (Vec3::length_($tmpvec3) < $epsilon) {
			Vec3::cross($tmpvec3, $yUnitVec3, $a);
		}
		Vec3::normalize($tmpvec3, $tmpvec3);
		Quat::set_axis_angle($output, $tmpvec3, GlMatrixMath::p_i());
		return $output;
	}
	elsif ($dot > $nines) {
		$output->[0] = 0;
		$output->[1] = 0;
		$output->[2] = 0;
		$output->[3] = 1;
		return $output;
	}
	else {
		Vec3::cross($tmpvec3, $a, $b);
		$output->[0] = $tmpvec3->[0];
		$output->[1] = $tmpvec3->[1];
		$output->[2] = $tmpvec3->[2];
		$output->[3] = 1 + $dot;
		return Quat::normalize($output, $output);
	}
}

=head2 C<Quat::scale(\@output, \@a, $b)>

**

=cut

sub scale($$$) {
	my ($output, $a, $b) = @_;
	return Vec4::scale($output, $a, $b);
}

=head2 C<Quat::set(\@output, $x, $y, $z, $w)>

**

=cut

sub set($$$$$) {
	my ($output, $x, $y, $z, $w) = @_;
	return Vec4::set($output, $x, $y, $z, $w);
}

=head2 C<Quat::set_axes(\@output, \@view, \@right, \@up)>

**

=cut

sub set_axes($$$$) {
	my ($output, $view, $right, $up) = @_;
	my $matr = Mat3::create();
	$matr->[0] = $right->[0];
	$matr->[3] = $right->[1];
	$matr->[6] = $right->[2];
	$matr->[1] = $up->[0];
	$matr->[4] = $up->[1];
	$matr->[7] = $up->[2];
	$matr->[2] = $view->[0];
	$matr->[5] = $view->[1];
	$matr->[8] = $view->[2];
	return Quat::normalize($output, Quat::from_mat3($output, $matr));
}

=head2 C<Quat::set_axis_angle(\@output, \@axis, $rad)>

**

=cut

sub set_axis_angle($$$) {
	my ($output, $axis, $rad) = @_;
	$rad = $rad / 2;
	my $s = Platform::sin($rad);
	$output->[0] = $s * $axis->[0];
	$output->[1] = $s * $axis->[1];
	$output->[2] = $s * $axis->[2];
	$output->[3] = Platform::cos($rad);
	return $output;
}

=head2 C<Quat::slerp(\@output, \@a, \@b, $t)>

**

=cut

sub slerp($$$$) {
	my ($output, $a, $b, $t) = @_;
	my $ax = $a->[0];
	my $ay = $a->[1];
	my $az = $a->[2];
	my $aw = $a->[3];
	my $bx = $b->[0];
	my $by = $b->[1];
	my $bz = $b->[2];
	my $bw = $b->[3];
	my $omega;
	my $cosom;
	my $sinom;
	my $scale0;
	my $scale1;
	$cosom = $ax * $bx + $ay * $by + $az * $bz + $aw * $bw;
	if ($cosom < 0) {
		$cosom = -$cosom;
		$bx = -$bx;
		$by = -$by;
		$bz = -$bz;
		$bw = -$bw;
	}
	my $one = 1;
	my $epsilon = $one / 1000000;
	if ($one - $cosom > $epsilon) {
		$omega = Platform::acos($cosom);
		$sinom = Platform::sin($omega);
		$scale0 = Platform::sin(($one - $t) * $omega) / $sinom;
		$scale1 = Platform::sin($t * $omega) / $sinom;
	}
	else {
		$scale0 = $one - $t;
		$scale1 = $t;
	}
	$output->[0] = $scale0 * $ax + $scale1 * $bx;
	$output->[1] = $scale0 * $ay + $scale1 * $by;
	$output->[2] = $scale0 * $az + $scale1 * $bz;
	$output->[3] = $scale0 * $aw + $scale1 * $bw;
	return $output;
}

=head2 C<Quat::sqr_len(\@a)>

**

=cut

sub sqr_len($) {
	my ($a) = @_;
	return Quat::squared_length($a);
}

=head2 C<Quat::squared_length(\@a)>

**

=cut

sub squared_length($) {
	my ($a) = @_;
	return Vec4::squared_length($a);
}

sub f($) {
	my ($self) = @_;
}

=head1 Class Vec2

=cut

package Vec2;

=head2 C<$vec2 = Vec2-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

=head2 C<Vec2::add(\@output, \@a, \@b)>

**

=cut

sub add($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] + $b->[0];
	$output->[1] = $a->[1] + $b->[1];
	return $output;
}

=head2 C<Vec2::clone_it(\@a)>

**

=cut

sub clone_it($) {
	my ($a) = @_;
	my $output = [];
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	return $output;
}

=head2 C<Vec2::copy(\@output, \@a)>

**

=cut

sub copy($$) {
	my ($output, $a) = @_;
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	return $output;
}

=head2 C<Vec2::create()>

**

=cut

sub create() {
	my $output = [];
	$output->[0] = 0;
	$output->[1] = 0;
	return $output;
}

=head2 C<Vec2::cross(\@output, \@a, \@b)>

**

=cut

sub cross($$$) {
	my ($output, $a, $b) = @_;
	my $z = $a->[0] * $b->[1] - $a->[1] * $b->[0];
	$output->[0] = $output->[1] = 0;
	$output->[2] = $z;
	return $output;
}

=head2 C<Vec2::dist(\@a, \@b)>

**

=cut

sub dist($$) {
	my ($a, $b) = @_;
	return Vec2::distance($a, $b);
}

=head2 C<Vec2::distance(\@a, \@b)>

**

=cut

sub distance($$) {
	my ($a, $b) = @_;
	my $x = $b->[0] - $a->[0];
	my $y = $b->[1] - $a->[1];
	return Platform::sqrt($x * $x + $y * $y);
}

=head2 C<Vec2::div(\@output, \@a, \@b)>

**

=cut

sub div($$$) {
	my ($output, $a, $b) = @_;
	return Vec2::divide($output, $a, $b);
}

=head2 C<Vec2::divide(\@output, \@a, \@b)>

**

=cut

sub divide($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] / $b->[0];
	$output->[1] = $a->[1] / $b->[1];
	return $output;
}

=head2 C<Vec2::dot(\@a, \@b)>

**

=cut

sub dot($$) {
	my ($a, $b) = @_;
	return $a->[0] * $b->[0] + $a->[1] * $b->[1];
}

=head2 C<Vec2::from_values($x, $y)>

**

=cut

sub from_values($$) {
	my ($x, $y) = @_;
	my $output = [];
	$output->[0] = $x;
	$output->[1] = $y;
	return $output;
}

=head2 C<Vec2::len(\@a)>

**

=cut

sub len($) {
	my ($a) = @_;
	return Vec2::length_($a);
}

=head2 C<Vec2::length_(\@a)>

**

=cut

sub length_($) {
	my ($a) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	return Platform::sqrt($x * $x + $y * $y);
}

=head2 C<Vec2::lerp(\@output, \@a, \@b, $t)>

**

=cut

sub lerp($$$$) {
	my ($output, $a, $b, $t) = @_;
	my $ax = $a->[0];
	my $ay = $a->[1];
	$output->[0] = $ax + $t * ($b->[0] - $ax);
	$output->[1] = $ay + $t * ($b->[1] - $ay);
	return $output;
}

=head2 C<Vec2::max(\@output, \@a, \@b)>

**

=cut

sub max($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = GlMatrixMath::max($a->[0], $b->[0]);
	$output->[1] = GlMatrixMath::max($a->[1], $b->[1]);
	return $output;
}

=head2 C<Vec2::min(\@output, \@a, \@b)>

**

=cut

sub min($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = GlMatrixMath::min($a->[0], $b->[0]);
	$output->[1] = GlMatrixMath::min($a->[1], $b->[1]);
	return $output;
}

=head2 C<Vec2::mul(\@output, \@a, \@b)>

**

=cut

sub mul($$$) {
	my ($output, $a, $b) = @_;
	return Vec2::multiply($output, $a, $b);
}

=head2 C<Vec2::multiply(\@output, \@a, \@b)>

**

=cut

sub multiply($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] * $b->[0];
	$output->[1] = $a->[1] * $b->[1];
	return $output;
}

=head2 C<Vec2::negate(\@output, \@a)>

**

=cut

sub negate($$) {
	my ($output, $a) = @_;
	$output->[0] = -$a->[0];
	$output->[1] = -$a->[1];
	return $output;
}

=head2 C<Vec2::normalize(\@output, \@a)>

**

=cut

sub normalize($$) {
	my ($output, $a) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $len = $x * $x + $y * $y;
	if ($len > 0) {
		$len = 1 / Platform::sqrt($len);
		$output->[0] = $a->[0] * $len;
		$output->[1] = $a->[1] * $len;
	}
	return $output;
}

=head2 C<Vec2::scale(\@output, \@a, $b)>

**

=cut

sub scale($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] * $b;
	$output->[1] = $a->[1] * $b;
	return $output;
}

=head2 C<Vec2::scale_and_add(\@output, \@a, \@b, $scale)>

**

=cut

sub scale_and_add($$$$) {
	my ($output, $a, $b, $scale) = @_;
	$output->[0] = $a->[0] + $b->[0] * $scale;
	$output->[1] = $a->[1] + $b->[1] * $scale;
	return $output;
}

=head2 C<Vec2::set(\@output, $x, $y)>

**

=cut

sub set($$$) {
	my ($output, $x, $y) = @_;
	$output->[0] = $x;
	$output->[1] = $y;
	return $output;
}

=head2 C<Vec2::sqr_dist(\@a, \@b)>

**

=cut

sub sqr_dist($$) {
	my ($a, $b) = @_;
	return Vec2::squared_distance($a, $b);
}

=head2 C<Vec2::sqr_len(\@a)>

**

=cut

sub sqr_len($) {
	my ($a) = @_;
	return Vec2::squared_length($a);
}

=head2 C<Vec2::squared_distance(\@a, \@b)>

**

=cut

sub squared_distance($$) {
	my ($a, $b) = @_;
	my $x = $b->[0] - $a->[0];
	my $y = $b->[1] - $a->[1];
	return $x * $x + $y * $y;
}

=head2 C<Vec2::squared_length(\@a)>

**

=cut

sub squared_length($) {
	my ($a) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	return $x * $x + $y * $y;
}

=head2 C<Vec2::sub(\@output, \@a, \@b)>

**

=cut

sub sub($$$) {
	my ($output, $a, $b) = @_;
	return Vec2::subtract($output, $a, $b);
}

=head2 C<Vec2::subtract(\@output, \@a, \@b)>

**

=cut

sub subtract($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] - $b->[0];
	$output->[1] = $a->[1] - $b->[1];
	return $output;
}

=head2 C<Vec2::transform_mat2(\@output, \@a, \@m)>

**

=cut

sub transform_mat2($$$) {
	my ($output, $a, $m) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	$output->[0] = $m->[0] * $x + $m->[2] * $y;
	$output->[1] = $m->[1] * $x + $m->[3] * $y;
	return $output;
}

=head2 C<Vec2::transform_mat2d(\@output, \@a, \@m)>

**

=cut

sub transform_mat2d($$$) {
	my ($output, $a, $m) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	$output->[0] = $m->[0] * $x + $m->[2] * $y + $m->[4];
	$output->[1] = $m->[1] * $x + $m->[3] * $y + $m->[5];
	return $output;
}

=head2 C<Vec2::transform_mat3(\@output, \@a, \@m)>

**

=cut

sub transform_mat3($$$) {
	my ($output, $a, $m) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	$output->[0] = $m->[0] * $x + $m->[3] * $y + $m->[6];
	$output->[1] = $m->[1] * $x + $m->[4] * $y + $m->[7];
	return $output;
}

=head2 C<Vec2::transform_mat4(\@output, \@a, \@m)>

**

=cut

sub transform_mat4($$$) {
	my ($output, $a, $m) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	$output->[0] = $m->[0] * $x + $m->[4] * $y + $m->[12];
	$output->[1] = $m->[1] * $x + $m->[5] * $y + $m->[13];
	return $output;
}

sub f($) {
	my ($self) = @_;
}

=head1 Class Vec3

3 Dimensional Vector

=cut

package Vec3;

=head2 C<$vec3 = Vec3-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

=head2 C<Vec3::add(\@output, \@a, \@b)>

Adds two vec3's
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub add($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] + $b->[0];
	$output->[1] = $a->[1] + $b->[1];
	$output->[2] = $a->[2] + $b->[2];
	return $output;
}

=head2 C<Vec3::clone_it(\@a)>

Creates a new vec3 initialized with values from an existing vector
Returns {vec3} a new 3D vector

Parameters:

=over

=item \@a

a vector to clone

=back

=cut

sub clone_it($) {
	my ($a) = @_;
	my $output = [];
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	return $output;
}

=head2 C<Vec3::copy(\@output, \@a)>

Copy the values from one vec3 to another
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the source vector

=back

=cut

sub copy($$) {
	my ($output, $a) = @_;
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	return $output;
}

=head2 C<Vec3::create()>

Creates a new, empty vec3
Returns {vec3} a new 3D vector.

=cut

sub create() {
	my $output = [];
	$output->[0] = 0;
	$output->[1] = 0;
	$output->[2] = 0;
	return $output;
}

=head2 C<Vec3::cross(\@output, \@a, \@b)>

Computes the cross product of two vec3's
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub cross($$$) {
	my ($output, $a, $b) = @_;
	my $ax = $a->[0];
	my $ay = $a->[1];
	my $az = $a->[2];
	my $bx = $b->[0];
	my $by = $b->[1];
	my $bz = $b->[2];
	$output->[0] = $ay * $bz - $az * $by;
	$output->[1] = $az * $bx - $ax * $bz;
	$output->[2] = $ax * $by - $ay * $bx;
	return $output;
}

=head2 C<Vec3::dist(\@a, \@b)>

Alias for {@link vec3.distance}

=cut

sub dist($$) {
	my ($a, $b) = @_;
	return Vec3::distance($a, $b);
}

=head2 C<Vec3::distance(\@a, \@b)>

Calculates the euclidian distance between two vec3's
@returns {Number} distance between a and b

Parameters:

=over

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub distance($$) {
	my ($a, $b) = @_;
	my $x = $b->[0] - $a->[0];
	my $y = $b->[1] - $a->[1];
	my $z = $b->[2] - $a->[2];
	return Platform::sqrt($x * $x + $y * $y + $z * $z);
}

=head2 C<Vec3::div(\@output, \@a, \@b)>

Alias for {@link vec3.divide}

=cut

sub div($$$) {
	my ($output, $a, $b) = @_;
	return Vec3::divide($output, $a, $b);
}

=head2 C<Vec3::divide(\@output, \@a, \@b)>

Divides two vec3's
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub divide($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] / $b->[0];
	$output->[1] = $a->[1] / $b->[1];
	$output->[2] = $a->[2] / $b->[2];
	return $output;
}

=head2 C<Vec3::dot(\@a, \@b)>

Calculates the dot product of two vec3's
@returns {Number} dot product of a and b

Parameters:

=over

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub dot($$) {
	my ($a, $b) = @_;
	return $a->[0] * $b->[0] + $a->[1] * $b->[1] + $a->[2] * $b->[2];
}

=head2 C<Vec3::from_values($x, $y, $z)>

Creates a new vec3 initialized with the given values
Returns {vec3} a new 3D vector

Parameters:

=over

=item $x

X component

=item $y

Y component

=item $z

Z component

=back

=cut

sub from_values($$$) {
	my ($x, $y, $z) = @_;
	my $output = [];
	$output->[0] = $x;
	$output->[1] = $y;
	$output->[2] = $z;
	return $output;
}

=head2 C<Vec3::len(\@a)>

Alias for {@link vec3.length}

=cut

sub len($) {
	my ($a) = @_;
	return Vec3::length_($a);
}

=head2 C<Vec3::length_(\@a)>

Calculates the length of a vec3
@returns {Number} length of a

Parameters:

=over

=item \@a

/@param {vec3} a vector to calculate length of

=back

=cut

sub length_($) {
	my ($a) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	return Platform::sqrt($x * $x + $y * $y + $z * $z);
}

=head2 C<Vec3::lerp(\@output, \@a, \@b, $t)>

Performs a linear interpolation between two vec3's
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=item $t

/@param {Number} t interpolation amount between the two inputs

=back

=cut

sub lerp($$$$) {
	my ($output, $a, $b, $t) = @_;
	my $ax = $a->[0];
	my $ay = $a->[1];
	my $az = $a->[2];
	$output->[0] = $ax + $t * ($b->[0] - $ax);
	$output->[1] = $ay + $t * ($b->[1] - $ay);
	$output->[2] = $az + $t * ($b->[2] - $az);
	return $output;
}

=head2 C<Vec3::max(\@output, \@a, \@b)>

Returns the maximum of two vec3's
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub max($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = GlMatrixMath::max($a->[0], $b->[0]);
	$output->[1] = GlMatrixMath::max($a->[1], $b->[1]);
	$output->[2] = GlMatrixMath::max($a->[2], $b->[2]);
	return $output;
}

=head2 C<Vec3::min(\@output, \@a, \@b)>

Returns the minimum of two vec3's
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub min($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = GlMatrixMath::min($a->[0], $b->[0]);
	$output->[1] = GlMatrixMath::min($a->[1], $b->[1]);
	$output->[2] = GlMatrixMath::min($a->[2], $b->[2]);
	return $output;
}

=head2 C<Vec3::mul(\@output, \@a, \@b)>

Alias for {@link vec3.multiply}

=cut

sub mul($$$) {
	my ($output, $a, $b) = @_;
	return Vec3::multiply($output, $a, $b);
}

=head2 C<Vec3::multiply(\@output, \@a, \@b)>

Multiplies two vec3's
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub multiply($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] * $b->[0];
	$output->[1] = $a->[1] * $b->[1];
	$output->[2] = $a->[2] * $b->[2];
	return $output;
}

=head2 C<Vec3::negate(\@output, \@a)>

Negates the components of a vec3
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a vector to negate

=back

=cut

sub negate($$) {
	my ($output, $a) = @_;
	$output->[0] = 0 - $a->[0];
	$output->[1] = 0 - $a->[1];
	$output->[2] = 0 - $a->[2];
	return $output;
}

=head2 C<Vec3::normalize(\@output, \@a)>

Normalize a vec3
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a vector to normalize

=back

=cut

sub normalize($$) {
	my ($output, $a) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	my $len = $x * $x + $y * $y + $z * $z;
	if ($len > 0) {
		my $one = 1;
		$len = $one / Platform::sqrt($len);
		$output->[0] = $a->[0] * $len;
		$output->[1] = $a->[1] * $len;
		$output->[2] = $a->[2] * $len;
	}
	return $output;
}

=head2 C<Vec3::scale(\@output, \@a, $b)>

Scales a vec3 by a scalar number
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the vector to scale

=item $b

/@param {Number} b amount to scale the vector by

=back

=cut

sub scale($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] * $b;
	$output->[1] = $a->[1] * $b;
	$output->[2] = $a->[2] * $b;
	return $output;
}

=head2 C<Vec3::scale_and_add(\@output, \@a, \@b, $scale)>

Adds two vec3's after scaling the second operand by a scalar value
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=item $scale

/@param {Number} scale the amount to scale b by before adding

=back

=cut

sub scale_and_add($$$$) {
	my ($output, $a, $b, $scale) = @_;
	$output->[0] = $a->[0] + $b->[0] * $scale;
	$output->[1] = $a->[1] + $b->[1] * $scale;
	$output->[2] = $a->[2] + $b->[2] * $scale;
	return $output;
}

=head2 C<Vec3::set(\@output, $x, $y, $z)>

Set the components of a vec3 to the given values
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item $x

/@param {Number} x X component

=item $y

/@param {Number} y Y component

=item $z

/@param {Number} z Z component

=back

=cut

sub set($$$$) {
	my ($output, $x, $y, $z) = @_;
	$output->[0] = $x;
	$output->[1] = $y;
	$output->[2] = $z;
	return $output;
}

=head2 C<Vec3::sqr_dist(\@a, \@b)>

Alias for {@link vec3.squaredDistance}
@function

=cut

sub sqr_dist($$) {
	my ($a, $b) = @_;
	return Vec3::squared_distance($a, $b);
}

=head2 C<Vec3::sqr_len(\@a)>

Alias for {@link vec3.squaredLength}

=cut

sub sqr_len($) {
	my ($a) = @_;
	return Vec3::squared_length($a);
}

=head2 C<Vec3::squared_distance(\@a, \@b)>

Calculates the squared euclidian distance between two vec3's
@returns {Number} squared distance between a and b

Parameters:

=over

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub squared_distance($$) {
	my ($a, $b) = @_;
	my $x = $b->[0] - $a->[0];
	my $y = $b->[1] - $a->[1];
	my $z = $b->[2] - $a->[2];
	return $x * $x + $y * $y + $z * $z;
}

=head2 C<Vec3::squared_length(\@a)>

Calculates the squared length of a vec3
@returns {Number} squared length of a

Parameters:

=over

=item \@a

/@param {vec3} a vector to calculate squared length of

=back

=cut

sub squared_length($) {
	my ($a) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	return $x * $x + $y * $y + $z * $z;
}

=head2 C<Vec3::sub(\@output, \@a, \@b)>

Alias for {@link vec3.subtract}
@function

=cut

sub sub($$$) {
	my ($output, $a, $b) = @_;
	return Vec3::substract($output, $a, $b);
}

=head2 C<Vec3::substract(\@output, \@a, \@b)>

Subtracts vector b from vector a
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub substract($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] - $b->[0];
	$output->[1] = $a->[1] - $b->[1];
	$output->[2] = $a->[2] - $b->[2];
	return $output;
}

=head2 C<Vec3::transform_mat3(\@output, \@a, \@m)>

Transforms the vec3 with a mat3.

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the vector to transform

=item \@m

/@param {mat4} m the 3x3 matrix to transform with

=back

=cut

sub transform_mat3($$$) {
	my ($output, $a, $m) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	$output->[0] = $x * $m->[0] + $y * $m->[3] + $z * $m->[6];
	$output->[1] = $x * $m->[1] + $y * $m->[4] + $z * $m->[7];
	$output->[2] = $x * $m->[2] + $y * $m->[5] + $z * $m->[8];
	return $output;
}

=head2 C<Vec3::transform_mat4(\@output, \@a, \@m)>

/Transforms the vec3 with a mat4.

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the vector to transform

=item \@m

/@param {mat4} m matrix to transform with

=back

=cut

sub transform_mat4($$$) {
	my ($output, $a, $m) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	$output->[0] = $m->[0] * $x + $m->[4] * $y + $m->[8] * $z + $m->[12];
	$output->[1] = $m->[1] * $x + $m->[5] * $y + $m->[9] * $z + $m->[13];
	$output->[2] = $m->[2] * $x + $m->[6] * $y + $m->[10] * $z + $m->[14];
	return $output;
}

=head2 C<Vec3::transform_quat(\@output, \@a, \@q)>

Transforms the vec3 with a quat
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the vector to transform

=item \@q

/@param {quat} q quaternion to transform with

=back

=cut

sub transform_quat($$$) {
	my ($output, $a, $q) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	my $qx = $q->[0];
	my $qy = $q->[1];
	my $qz = $q->[2];
	my $qw = $q->[3];
	my $ix = $qw * $x + $qy * $z - $qz * $y;
	my $iy = $qw * $y + $qz * $x - $qx * $z;
	my $iz = $qw * $z + $qx * $y - $qy * $x;
	my $iw = (0 - $qx) * $x - $qy * $y - $qz * $z;
	$output->[0] = $ix * $qw + $iw * (0 - $qx) + $iy * (0 - $qz) - $iz * (0 - $qy);
	$output->[1] = $iy * $qw + $iw * (0 - $qy) + $iz * (0 - $qx) - $ix * (0 - $qz);
	$output->[2] = $iz * $qw + $iw * (0 - $qz) + $ix * (0 - $qy) - $iy * (0 - $qx);
	return $output;
}

=head2 C<Vec3::str(\@a)>

/Perform some operation over an array of vec3s.

=cut

sub str($) {
	my ($a) = @_;
	return "";
}

=head1 Class Vec4

=cut

package Vec4;

=head2 C<$vec4 = Vec4-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

=head2 C<Vec4::add(\@output, \@a, \@b)>

**

=cut

sub add($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] + $b->[0];
	$output->[1] = $a->[1] + $b->[1];
	$output->[2] = $a->[2] + $b->[2];
	$output->[3] = $a->[3] + $b->[3];
	return $output;
}

=head2 C<Vec4::clone_it(\@a)>

**

=cut

sub clone_it($) {
	my ($a) = @_;
	my $output = [];
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	$output->[3] = $a->[3];
	return $output;
}

=head2 C<Vec4::copy(\@output, \@a)>

**

=cut

sub copy($$) {
	my ($output, $a) = @_;
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	$output->[3] = $a->[3];
	return $output;
}

=head2 C<Vec4::create()>

**

=cut

sub create() {
	my $output = [];
	$output->[0] = 0;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 0;
	return $output;
}

=head2 C<Vec4::dist(\@a, \@b)>

**

=cut

sub dist($$) {
	my ($a, $b) = @_;
	return Vec4::distance($a, $b);
}

=head2 C<Vec4::distance(\@a, \@b)>

**

=cut

sub distance($$) {
	my ($a, $b) = @_;
	my $x = $b->[0] - $a->[0];
	my $y = $b->[1] - $a->[1];
	my $z = $b->[2] - $a->[2];
	my $w = $b->[3] - $a->[3];
	return Platform::sqrt($x * $x + $y * $y + $z * $z + $w * $w);
}

=head2 C<Vec4::div(\@output, \@a, \@b)>

**

=cut

sub div($$$) {
	my ($output, $a, $b) = @_;
	return Vec4::divide($output, $a, $b);
}

=head2 C<Vec4::divide(\@output, \@a, \@b)>

**

=cut

sub divide($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] / $b->[0];
	$output->[1] = $a->[1] / $b->[1];
	$output->[2] = $a->[2] / $b->[2];
	$output->[3] = $a->[3] / $b->[3];
	return $output;
}

=head2 C<Vec4::dot(\@a, \@b)>

**

=cut

sub dot($$) {
	my ($a, $b) = @_;
	return $a->[0] * $b->[0] + $a->[1] * $b->[1] + $a->[2] * $b->[2] + $a->[3] * $b->[3];
}

=head2 C<Vec4::from_values($x, $y, $z, $w)>

**

=cut

sub from_values($$$$) {
	my ($x, $y, $z, $w) = @_;
	my $output = [];
	$output->[0] = $x;
	$output->[1] = $y;
	$output->[2] = $z;
	$output->[3] = $w;
	return $output;
}

=head2 C<Vec4::len(\@a)>

**

=cut

sub len($) {
	my ($a) = @_;
	return Vec4::length_($a);
}

=head2 C<Vec4::length_(\@a)>

**

=cut

sub length_($) {
	my ($a) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	my $w = $a->[3];
	return Platform::sqrt($x * $x + $y * $y + $z * $z + $w * $w);
}

=head2 C<Vec4::lerp(\@output, \@a, \@b, $t)>

**

=cut

sub lerp($$$$) {
	my ($output, $a, $b, $t) = @_;
	my $ax = $a->[0];
	my $ay = $a->[1];
	my $az = $a->[2];
	my $aw = $a->[3];
	$output->[0] = $ax + $t * ($b->[0] - $ax);
	$output->[1] = $ay + $t * ($b->[1] - $ay);
	$output->[2] = $az + $t * ($b->[2] - $az);
	$output->[3] = $aw + $t * ($b->[3] - $aw);
	return $output;
}

=head2 C<Vec4::max(\@output, \@a, \@b)>

**

=cut

sub max($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = GlMatrixMath::max($a->[0], $b->[0]);
	$output->[1] = GlMatrixMath::max($a->[1], $b->[1]);
	$output->[2] = GlMatrixMath::max($a->[2], $b->[2]);
	$output->[3] = GlMatrixMath::max($a->[3], $b->[3]);
	return $output;
}

=head2 C<Vec4::min(\@output, \@a, \@b)>

**

=cut

sub min($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = GlMatrixMath::min($a->[0], $b->[0]);
	$output->[1] = GlMatrixMath::min($a->[1], $b->[1]);
	$output->[2] = GlMatrixMath::min($a->[2], $b->[2]);
	$output->[3] = GlMatrixMath::min($a->[3], $b->[3]);
	return $output;
}

=head2 C<Vec4::mul(\@output, \@a, \@b)>

**

=cut

sub mul($$$) {
	my ($output, $a, $b) = @_;
	return Vec4::multiply($output, $a, $b);
}

=head2 C<Vec4::multiply(\@output, \@a, \@b)>

**

=cut

sub multiply($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] * $b->[0];
	$output->[1] = $a->[1] * $b->[1];
	$output->[2] = $a->[2] * $b->[2];
	$output->[3] = $a->[3] * $b->[3];
	return $output;
}

=head2 C<Vec4::negate(\@output, \@a)>

**

=cut

sub negate($$) {
	my ($output, $a) = @_;
	$output->[0] = -$a->[0];
	$output->[1] = -$a->[1];
	$output->[2] = -$a->[2];
	$output->[3] = -$a->[3];
	return $output;
}

=head2 C<Vec4::normalize(\@output, \@a)>

**

=cut

sub normalize($$) {
	my ($output, $a) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	my $w = $a->[3];
	my $len = $x * $x + $y * $y + $z * $z + $w * $w;
	if ($len > 0) {
		my $one = 1;
		$len = $one / Platform::sqrt($len);
		$output->[0] = $a->[0] * $len;
		$output->[1] = $a->[1] * $len;
		$output->[2] = $a->[2] * $len;
		$output->[3] = $a->[3] * $len;
	}
	return $output;
}

=head2 C<Vec4::scale(\@output, \@a, $b)>

**

=cut

sub scale($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] * $b;
	$output->[1] = $a->[1] * $b;
	$output->[2] = $a->[2] * $b;
	$output->[3] = $a->[3] * $b;
	return $output;
}

=head2 C<Vec4::scale_and_add(\@output, \@a, \@b, $scale)>

**

=cut

sub scale_and_add($$$$) {
	my ($output, $a, $b, $scale) = @_;
	$output->[0] = $a->[0] + $b->[0] * $scale;
	$output->[1] = $a->[1] + $b->[1] * $scale;
	$output->[2] = $a->[2] + $b->[2] * $scale;
	$output->[3] = $a->[3] + $b->[3] * $scale;
	return $output;
}

=head2 C<Vec4::set(\@output, $x, $y, $z, $w)>

**

=cut

sub set($$$$$) {
	my ($output, $x, $y, $z, $w) = @_;
	$output->[0] = $x;
	$output->[1] = $y;
	$output->[2] = $z;
	$output->[3] = $w;
	return $output;
}

=head2 C<Vec4::sqr_dist(\@a, \@b)>

**

=cut

sub sqr_dist($$) {
	my ($a, $b) = @_;
	return Vec4::squared_distance($a, $b);
}

=head2 C<Vec4::sqr_len(\@a)>

**

=cut

sub sqr_len($) {
	my ($a) = @_;
	return Vec4::squared_length($a);
}

=head2 C<Vec4::squared_distance(\@a, \@b)>

**

=cut

sub squared_distance($$) {
	my ($a, $b) = @_;
	my $x = $b->[0] - $a->[0];
	my $y = $b->[1] - $a->[1];
	my $z = $b->[2] - $a->[2];
	my $w = $b->[3] - $a->[3];
	return $x * $x + $y * $y + $z * $z + $w * $w;
}

=head2 C<Vec4::squared_length(\@a)>

**

=cut

sub squared_length($) {
	my ($a) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	my $w = $a->[3];
	return $x * $x + $y * $y + $z * $z + $w * $w;
}

=head2 C<Vec4::sub(\@output, \@a, \@b)>

**

=cut

sub sub($$$) {
	my ($output, $a, $b) = @_;
	return Vec4::subtract($output, $a, $b);
}

=head2 C<Vec4::subtract(\@output, \@a, \@b)>

**

=cut

sub subtract($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] - $b->[0];
	$output->[1] = $a->[1] - $b->[1];
	$output->[2] = $a->[2] - $b->[2];
	$output->[3] = $a->[3] - $b->[3];
	return $output;
}

=head2 C<Vec4::transform_mat4(\@output, \@a, \@m)>

**

=cut

sub transform_mat4($$$) {
	my ($output, $a, $m) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	my $w = $a->[3];
	$output->[0] = $m->[0] * $x + $m->[4] * $y + $m->[8] * $z + $m->[12] * $w;
	$output->[1] = $m->[1] * $x + $m->[5] * $y + $m->[9] * $z + $m->[13] * $w;
	$output->[2] = $m->[2] * $x + $m->[6] * $y + $m->[10] * $z + $m->[14] * $w;
	$output->[3] = $m->[3] * $x + $m->[7] * $y + $m->[11] * $z + $m->[15] * $w;
	return $output;
}

sub f($) {
	my ($self) = @_;
}

=head2 C<Vec4::transform_quat(\@output, \@a, \@q)>

**

=cut

sub transform_quat($$$) {
	my ($output, $a, $q) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	my $qx = $q->[0];
	my $qy = $q->[1];
	my $qz = $q->[2];
	my $qw = $q->[3];
	my $ix = $qw * $x + $qy * $z - $qz * $y;
	my $iy = $qw * $y + $qz * $x - $qx * $z;
	my $iz = $qw * $z + $qx * $y - $qy * $x;
	my $iw = -$qx * $x - $qy * $y - $qz * $z;
	$output->[0] = $ix * $qw + $iw * -$qx + $iy * -$qz - $iz * -$qy;
	$output->[1] = $iy * $qw + $iw * -$qy + $iz * -$qx - $ix * -$qz;
	$output->[2] = $iz * $qw + $iw * -$qz + $ix * -$qy - $iy * -$qx;
	return $output;
}

1;
