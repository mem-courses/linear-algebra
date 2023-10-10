#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
  title: "Linear Algebra Homework #3",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "October 9, 2023",
)

= 附加题1

#prob[
	#set math.mat(delim: "(")
	$
	bold(A)&=(a_(i j))_(n times n)\
	bold(B)&=mat(
		a_11,a_12b^(-1),a_13b^(-2),dots.c,a_(1n)b^(1-n);
		a_21b,a_22,a_23b^(-1),dots.c,a_(2n)b^(2-n);
		dots.v,dots.v,dots.v,,dots.v;
		a_(n 1)b^(n-1),a_(n 2)b^(n-2),a_(n 3)b^(n-3),dots.c,a_(n n);
	) quad (b!=0)\
	$
	已知 $|bold(A)|=t$，求 $|bold(B)|$．
]

#set math.mat(delim: "|")
$
|bold(B)| =& (product_(k=1)^n b^(-k)) mat(
	a_11 b^n, a_12 b^(n-1), a_13 b^(n-2), dots.c, a_(1 n) b;
	a_21 b^n, a_22 b^(n-1), a_23 b^(n-2), dots.c, a_(2 n) b;
	dots.v,dots.v,dots.v,,dots.v;
	a_(n 1) b^n, a_(n 2) b^(n-1), a_(n 3) b^(n-2), dots.c, a_(n n) b;
)\ =& (product_(k=1)^n b^(k)) (product_(k=1)^n b^(-k)) mat(
	a_11, a_12, a_13, dots.c, a_(1 n);
	a_21, a_22, a_23, dots.c, a_(2 n);
	dots.v,dots.v,dots.v,,dots.v;
	a_(n 1), a_(n 2), a_(n 3), dots.c, a_(n n);
)\ =& |bold(A)| = t
$

= 附加题2

#set math.mat(delim: "|")
#prob[
	计算：$
		D_n = mat(
			space 1,1,1,dots.c,1,1,1 space;
			space 0,0,0,dots.c,0,2,1 space;
			space 0,0,0,dots.c,3,0,1 space;
			space dots.v,dots.v,dots.v,,dots.v,dots.v,dots.v space;
			space 0,n-1,0,dots.c,0,0,1 space;
			space n,0,0,dots.c,0,0,1 space;
		)
	$
]

= 附加题3

#prob[
	计算：$
		D_n = mat(
			a_1+b_1,a_2,dots.c,a_n;
			a_1,a_2+b_2,dots.c,a_n;
			dots.v,dots.v,,dots.v;
			a_1,a_2,dots.c,a_n+b_n;
		)
	$
]

= 附加题4

#prob[
	计算：$
		D_n = mat(
			1,2,3,dots.c,n-1,n;
			2,3,4,dots.c,n,1;
			3,4,5,dots.c,1,2;
			dots.v,dots.v,dots.v,,dots.v,dots.v;
			n-1,n,1,dots.c,n-3,n-2;
			n,1,2,dots.c,n-2,n-1;
		)
	$
]

= 附加题5

#prob[
	将 $n$ 阶矩阵 $bold(D)$ 的每个元素减去其同行其余元素之和，得到 $bold(D_1)$，若 $|bold(D)|=t$，求 $|bold(D_1)|$．
]

= P36 习题二 12(3)

#prob[
	计算行列式的值：
	$ mat(
		2,0,dots.c,0,2;
		-1,2,dots.c,0,2;
		dots.v,dots.v,,dots.v,dots.v;
		0,0,dots.c,2,2;
		0,0,dots.c,-1,2;
	)_n $
]

$
D
&= a_(1 n) A_(1 n) + a_(2 n) A_(2 n) + dots.c + a_(n n) A_(n n)\
&= 2 sum_(i=1)^n 2^(i-1) (-1)^(n-i) (-1)^(i+n)\
&= sum_(i=1)^n 2^i = 2^(n+1)-2
$

= P36 习题二 12(8)

#prob[
	计算行列式的值：
	$ mat(
		space x,y,0,dots.c,0,0 space;
		space 0,x,y,dots.c,0,0 space;
		space 0,0,x,dots.c,0,0 space;
		space dots.v,dots.v,dots.v,,dots.v,dots.v space;
		space 0,0,0,dots.c,x,y space;
		space y,0,0,dots.c,0,x space;
	)_n $
]

$
D_n
&= a_(11) A_(11) + a_(12) A_12\
&= (-1)^(1+1) x mat(
	x,y,dots.c,0,0;
	0,x,dots.c,0,0;
	dots.v,dots.v,,dots.v,dots.v;
	0,0,dots.c,x,y;
	0,0,dots.c,0,x;
) + (-1)^(1+2) y mat(
	y,0,dots.c,0,0;
	x,y,dots.c,0,0;
	dots.v,dots.v,,dots.v,dots.v;
	0,0,dots.c,y,0;
	0,0,dots.c,x,y;
) \
&= x^n - y^n
$

= P37 习题二 12(9)

#prob[
	计算行列式的值：
	$ mat(
		x,-1,0,dots.c,0,0;
		0,x,-1,dots.c,0,0;
		0,0,x,dots.c,0,0;
		dots.v,dots.v,dots.v,,dots.v,dots.v;
		0,0,0,dots.c,x,-1;
		a_n,a_(n-1),a_(n-2),dots.c,a_2,a_1+x;
	) $
]

$
D_n
&= mat(
	x,-1,0,dots.c,0,0;
	0,x,-1,dots.c,0,0;
	0,0,x,dots.c,0,0;
	dots.v,dots.v,dots.v,,dots.v,dots.v;
	0,0,0,dots.c,x,-1;
	0,0,0,dots.c,0,x;
) + mat(
	x,-1,0,dots.c,0,0;
	0,x,-1,dots.c,0,0;
	0,0,x,dots.c,0,0;
	dots.v,dots.v,dots.v,,dots.v,dots.v;
	0,0,0,dots.c,x,-1;
	a_n,a_(n-1),a_(n-2),dots.c,a_2,a_1;
)\
&= x^n + sum_(i=1)^n a_i x^(n-i) (-1)^(i-1) (-1)^(n-i+1+n)\
&= x^n + sum_(i=1)^n a_i x^(n-i)
$

= P37 习题二 12(11)

#prob[
	计算行列式的值：
	$ mat(
		1,1,1,dots.c,1;
		2,2^2,2^3,dots.c,2^n;
		3,3^3,3^3,dots.c,3^n;
		dots.v,dots.v,dots.v,,dots.v;
		n,n^2,n^3,dots.c,n^n;
	) $
]

令 $display(|bold(A')|=mat(
	1,0,0,0,dots.c,0;
	1,1,1,1,dots.c,1;
	1,2,2^2,2^3,dots.c,2^n;
	1,3,3^3,3^3,dots.c,3^n;
	1,dots.v,dots.v,dots.v,,dots.v;
	1,n,n^2,n^3,dots.c,n^n;
))$，有 $D'=(-1)^(1+1) a'_(11)A'_11=D$．

根据 Vandermonde 行列式，可以得到：

$
D_n
= product_(0<=i<j<=n) (j-i)
= product_(i=1)^n i^(n-i+1)
$

= P37 习题二 13

#prob[
	设 $display(D_n = mat(
		1,2,3,dots.c,n-1,n;
		1,1,0,dots.c,0,0;
		1,0,1,dots.c,0,0;
		dots.v,dots.v,dots.v,,dots.v,dots.v;
		1,0,0,dots.c,1,0;
		1,0,0,dots.c,0,1;
	))$，计算 $D_n$ 及 $t_1 A_(11) + t_2A_12 + dots.c + t_n A_(1 n)$，这里 $A_(i j)$ 为 $D_n$ 的第 $i$ 行第 $j$ 列元素的代数余子式．
]

$
D_n=product_(i=2)^n -(i-1) = (-1)^(n-1) dot (n-1)!
$

$
t_1 A_(11) + t_2A_12 + dots.c + t_n A_(1 n)
=& mat(
	t_1,t_2,t_3,dots.c,t_(n-1),t_n;
	1,1,0,dots.c,0,0;
	1,0,1,dots.c,0,0;
	dots.v,dots.v,dots.v,,dots.v,dots.v;
	1,0,0,dots.c,1,0;
	1,0,0,dots.c,0,1;
)\
=& mat(
	t_1-sum_(i=2)^n t_i,t_2,t_3,dots.c,t_(n-1),t_n;
	0,1,0,dots.c,0,0;
	0,0,1,dots.c,0,0;
	dots.v,dots.v,dots.v,,dots.v,dots.v;
	0,0,0,dots.c,1,0;
	0,0,0,dots.c,0,1;
)\
=& t_1-sum_(i=2)^n t_i
$

= P37 习题二 14

#prob[
	计算行列式
	$ mat(
		1,1,dots.c,1,1;
		x_1,x_2,dots.c,x_(n-1),x_n;
		dots.v,dots.v,,dots.v,dots.v;
		x_1^(n-2),x_2^(n-2),dots.c,x_(n-1)^(n-2),x_n^(n-2);
		x_1^n,x_2^n,dots.c,x_(n-1)^n,x_n^n;
	) $
]

$
D_n
=& sum_(k=1)^n x_k^n (-1)^(k+n) A_(k,n) \
=& sum_(k=1)^n x_k^n (-1)^(k+n) sum_(1<=i<j<=n\ i!=k and j != k) (x_j-x_i) \
=& (-1)^n sum_(1<=i<j<=n) (x_j-x_i) (sum_(k=1)^n (-1)^k x_k - (-1)^i x_i - (-1)^j x_j)
$

= P38 习题二 16(4)

#prob[
	利用 Laplace 定理计算行列式的值：
	$ mat(
		1,b,c,0,0,0;
		0,0,3,0,0,0;
		a_11,a_12,a_13,0,2,d;
		a_21,a_22,a_23,0,0,1;
		a_31,a_32,a_33,3,e,f;
		0,2,g,0,0,0;
	) $
]

$
mat(
	1,b,c,0,0,0;
	0,0,3,0,0,0;
	a_11,a_12,a_13,0,2,d;
	a_21,a_22,a_23,0,0,1;
	a_31,a_32,a_33,3,e,f;
	0,2,g,0,0,0;
) =& (-1)^3 mat(
	1,b,c,0,0,0;
	0,0,3,0,0,0;
	0,2,g,0,0,0;
	a_11,a_12,a_13,0,2,d;
	a_21,a_22,a_23,0,0,1;
	a_31,a_32,a_33,3,e,f;
)\ =& (-1)^3 mat(
	1,b,c;
	0,0,3;
	0,2,g;
) mat(
	0,2,d;
	0,0,1;
	3,e,f;
)\ =& -36
$

= P39 习题二 24

#prob[
	问 $a,b,c$ 满足什么条件时，线性方程组
	$ cases(
		x    &&+y    &&+z    &&=a+b+c,
		a x  &&+b y  &&+c z  &&=a^2+b^2+c^2,
		b c x&&+a c y&&+a b z&&=3a b c,
	) $
	有唯一解，并求出该解．
]

求线性方程组的系数矩阵的行列式：

$
|bold(D)|
=& mat(
	1,1,1;
	a,b,c;
	b c,a c,a b;
) = mat(
	1,1,1;
	0,b-a,c-a;
	0,-c(b-a),-b(c-a);
)\ =& mat(
	1,1,1;
	0,b-a,c-a;
	0,0,(c-b)(c-a);
)\ =& (b-a)(c-a)(c-b)
$

根据 Cramer 法则，当且仅当 $a,b,c$ 互异时，原线性方程组有唯一解．

对原线性方程组的系数矩阵的增广矩阵应用初等行变换得

#set math.mat(delim: "(")
$
bold(A) &= mat(
	1,1,1,a+b+c;
	a,b,c,a^2+b^2+c^2;
	b c,a c,a b,3a b c;
)\ &xarrow(R_2-a R_1\ R_3-b c R_1) mat(
	1,1,1,a+b+c;
	0,b-a,c-a,b^2+c^2-a b-a c;
	0,c(a-b),b(a-c),2a b c-b^2 c-b c^2;
)\ &xarrow(R_3+c R_2) mat(
	1,1,1,a+b+c;
	0,b-a,c-a,(b-a)b+(c-a)c;
	0,0,(c-a)(c-b),(c-a)(c-b)c
)
$
#set math.mat(delim: "|")

解得 $display(cases(
	x_1 = a,
	x_2 = b,
	x_3 = c,
))$ 是原线性方程组的唯一解．

= P39 习题二 26

#prob[
	已知 $n$ 阶行列式 $D_n=|a_(i j)|_n!=0$，证明：线性方程组
	$ cases(
		a_11 x_1 + a_12 x_2 + &&dots.c + a_(1,n-1) x_(n-1) = a_(1 n),
		a_21 x_1 + a_22 x_2 + &&dots.c + a_(2,n-1) x_(n-1) = a_(2 n),
		&&dots.c,
		a_(n 1) x_1 + a_(n 2) x_2 + &&dots.c + a_(n,n-1) x_(n-1) = a_(n n),
	) $
	无解．
]

取前 $n-1$ 个线性方程组，由于 $|a_(i j)|_n!=0$，那么 $D_(n-1)=|a_(i j)|_(n-1)!=0$．根据 Cramer 法则，只考虑前 $n-1$ 个线性方程组时，有唯一解．

TBD

= P40 补充题二 3(1)

#prob[
	试计算行列式的值：
	$ mat(
		x,a,a,dots.c,a,a;
		b,x,a,dots.c,a,a;
		b,b,x,dots.c,a,a;
		dots.v,dots.v,dots.v,,dots.v,dots.v;
		b,b,b,dots.c,x,a;
		b,b,b,dots.c,b,x;
	)_n $
]

$
D_n =& mat(
	x,a,a,dots.c,a,0+a;
	b,x,a,dots.c,a,0+a;
	b,b,x,dots.c,a,0+a;
	dots.v,dots.v,dots.v,,dots.v,dots.v;
	b,b,b,dots.c,x,0+a;
	b,b,b,dots.c,b,(x-b)+b;
) = mat(
	x,a,a,dots.c,a,0;
	b,x,a,dots.c,a,0;
	b,b,x,dots.c,a,0;
	dots.v,dots.v,dots.v,,dots.v,dots.v;
	b,b,b,dots.c,x,0;
	b,b,b,dots.c,b,x-b;
) + mat(
	x,a,a,dots.c,a,a;
	b,x,a,dots.c,a,a;
	b,b,x,dots.c,a,a;
	dots.v,dots.v,dots.v,,dots.v,dots.v;
	b,b,b,dots.c,x,a;
	b,b,b,dots.c,b,b;
)\ =& (x-b) D_(n-1) + mat(
	x-a,0,0,dots.c,0,a;
	b-a,x-a,0,dots.c,0,a;
	b-a,b-a,x-a,dots.c,0,a;
	dots.v,dots.v,dots.v,,dots.v,dots.v;
	b-a,b-a,b-a,dots.c,x-a,a;
	0,0,0,dots.c,0,b;
)\ =& (x-b) D_(n-1) + b (x-a)^(n-1)
$

对转置后的矩阵应用同理可得 $D_n = (x-a) D_(n-1) + a (x-b)^(n-1)$．

$ cases(
	(x-a)D_n &= (x-a)(x-b) D_(n-1) + b(x-a)^n,
	(x-b)D_n &= (x-a)(x-b) D_(n-1) + a(x-b)^n,
) $

两式相减得：$ D_n &= (b(x-a)^n - a(x-b)^n)/(b-a) $

= P40 补充题二 3(5)

#prob[
	试计算行列式的值：
	$ mat(
		a_0+a_1,a_1,0,dots.c,0,0;
		a_1,a_1+a_2,a_2,dots.c,0,0;
		0,a_2,a_2+a_3,dots.c,0,0;
		dots.v,dots.v,dots.v,,dots.v,dots.v;
		0,0,0,dots.c,a_(n-2)+a_(n-1),a_(n-1);
		0,0,0,dots.c,a_(n-1),a_(n-1)+a_n;
	) $
]

$
D_n =& (a_(n-1) + a_n) (-1)^(2n) A_(n,n) + a_(n-1) (-1)^(2n-1) A_(n-1,n)\
=& (a_(n-1) + a_n) D_(n-1) - a_(n-1)^2 D_(n-2)
$

下归纳证明：$display(D_n=(sum_(i=1)^n 1/a_i)(product_(i=1)^n a_i))$．

- 当 $n=1$ 时，$D_1 = a_0+a_1$，合法；

- 当 $n=2$ 时，$display(D_2 = (a_0+a_1)(a_1+a_2-(a_1^2)/(a_0+a_1))) = a_0a_1+a_0a_2+a_1a_2$，合法；

- 下证 $n=k-1$ 和 $n=k-2$ 时均成立，则 $n=k$ 也成立：

  $
	D_k =& (a_(k-1)+a_k) (sum_(i=1)^(k-1) 1/a_i)(product_(i=1)^(k-1) a_i) - a_(k-1)^2 (sum_(i=1)^(k-2) 1/a_i)(product_(i=1)^(k-2) a_i)\
	=& (1+a_(k-1)/a_k) (sum_(i=1)^(k-1) 1/a_i)(product_(i=1)^k a_i) - a_(k-1)/a_k (sum_(i=1)^(k-2) 1/a_i)(product_(i=1)^k a_i)\
	=& (sum_(i=1)^(k-1) 1/a_i)(product_(i=1)^k a_i) - a_(k-1)/a_k dot 1/a_(k-1)(product_(i=1)^k a_i)\
	=& (sum_(i=1)^k 1/a_i)(product_(i=1)^k a_i)\
	$

得证．

= P41 补充题二 3(6)

#prob[
	试计算行列式的值：
	$ mat(
		2^n-2,2^(n-1)-2,2^(n-2)-2,dots.c,2^2-2;
		3^n-3,3^(n-1)-3,3^(n-2)-3,dots.c,3^2-3;
		4^n-4,4^(n-1)-4,4^(n-2)-4,dots.c,4^2-4;
		dots.v,dots.v,dots.v,,dots.v;
		n^n-n,n^(n-1)-n,n^(n-2)-n,dots.c,n^2-n;
	) $
]

$
|bold(D)| &= product_(k=2)^n k(k-1) mat(
	sum_(i=0)^(n-2) 2^i,sum_(i=0)^(n-3) 2^i,dots.c,2^2+2+1,2+1,1;
	sum_(i=0)^(n-2) 3^i,sum_(i=0)^(n-3) 3^i,dots.c,3^2+3+1,3+1,1;
	dots.v,dots.v,,dots.v,dots.v;
	sum_(i=0)^(n-2) n^i,sum_(i=0)^(n-3) n^i,dots.c,n^2+n+1,n+1,1;
)\ &= product_(k=2)^n k(k-1) mat(
	sum_(i=0)^(n-2) 2^i,sum_(i=0)^(n-3) 2^i,dots.c,2^2+2+1,2+1,1;
	sum_(i=0)^(n-2) 3^i,sum_(i=0)^(n-3) 3^i,dots.c,3^2+3+1,3+1,1;
	dots.v,dots.v,,dots.v,dots.v;
	sum_(i=0)^(n-2) n^i,sum_(i=0)^(n-3) n^i,dots.c,n^2+n+1,n+1,1;
)\ &= product_(k=2)^n k(k-1) mat(
	2^(n-2),2^(n-3),dots.c,2^2,2,1;
	3^(n-2),3^(n-3),dots.c,3^2,3,1;
	dots.v,dots.v,,dots.v,dots.v;
	n^(n-2),n^(n-3),dots.c,n^2,n,1;
)\
&= n! dot (n-1)! product_(1<=i<j<=(n-1)) ((j+1)-(i+1)) \
&= n! dot (n-1)! product_(i=1)^(n-2) i^(n-1-i)
$

= P41 补充题二 4

#prob[
	设 $n space (n>1)$ 阶行列式 $D=|a_(i j)|_n=4$，且 $D$ 中各列元素之和均为 $3$，并记元素 $a_(i j)$ 的代数余子式为 $A_(i j)$，试求 $display(sum_(i=1)^n sum_(j=1)^n A_(i j))$．
]

TBD

= P41 补充题二 5

#prob[
	已知 $a!=plus.minus b$，试证明线性方程组
	$ cases(
		a x_1 + b x_(2n) &= 1,
		a x_2 + b x_(2n-1) &= 1,
		&dots.c,
		a x_n + b x_(n+1) &= 1,
		b x_n + a x_(n+1) &= 1,
		&dots.c,
		b x_2 + a x_(2n-1) &= 1,
		b x_1 + a x_(2n) &= 1,
	) $
	有唯一解，并求该解．
]

TBD

= P41 补充题二 9

#prob[
	设 $a,b,c$ 均不为零，且互异，试证明平面上的 $3$ 条不同直线
	$
		l_1 &: &space a x &+ b y &+ c &= 0\
		l_2 &: &space b x &+ c y &+ a &= 0\
		l_3 &: &space c x &+ a y &+ b &= 0\
	$
	相交于一点的充分必要条件为 $a+b+c=0$．
]

相交于一点的充分必要条件是三条直线方程构成的线性方程组有唯一解．

TBD
