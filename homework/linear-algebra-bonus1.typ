#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra\nBonus Problems #1 (Cp. 1~2)",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "October 29, 2023",
)

= 第二周附加题 T1 #ac

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

= 第二周附加题 T2 #ac

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

$
D_n = mat(
	1/n,1/(n-1),1/(n-2),dots.c,1/3,1/2,1;
	0,0,0,dots.c,0,1,1;
	0,0,0,dots.c,1,0,1;
	dots.v,dots.v,dots.v,,dots.v,dots.v,dots.v;
	0,1,0,dots.c,0,0,1;
	1,0,0,dots.c,0,0,1;
) = mat(
	1/n,1/(n-1),1/(n-2),dots.c,1/3,1/2,1-sum_(i=2)^n 1/i;
	0,0,0,dots.c,0,1,1;
	0,0,0,dots.c,1,0,1;
	dots.v,dots.v,dots.v,,dots.v,dots.v,dots.v;
	0,1,0,dots.c,0,0,1;
	1,0,0,dots.c,0,0,1;
) = (-1)^(n(n-1)/2) (1-sum_(i=2)^n 1/i)
$

= 第二周附加题 T3

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

= 第二周附加题 T4

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

$
D_n =& mat(
	1,2,3,dots.c,n-1,n;
	2,3,4,dots.c,n,1;
	3,4,5,dots.c,1,2;
	dots.v,dots.v,dots.v,,dots.v,dots.v;
	n-1,n,1,dots.c,n-3,n-2;
	n,1,2,dots.c,n-2,n-1;
) = mat(
	space 1,2,3,dots.c,n-1,n;
	space 1,1,1,dots.c,1,-(n-1);
	space 1,1,1,dots.c,-(n-2),1;
	space dots.v,dots.v,dots.v,,dots.v,dots.v;
	space 1,1,-2,dots.c,1,1;
	space 1,-1,1,dots.c,1,1;
)\ =& mat(
	space 1,1,2,dots.c,n-2,n-1;
	space 1,0,0,dots.c,0,-n;
	space 1,0,0,dots.c,-(n-1),0;
	space dots.v,dots.v,dots.v,,dots.v,dots.v;
	space 1,0,-3,dots.c,0,0;
	space 1,-2,0,dots.c,0,0;
) = (-1)^(n-1) mat(
	space 1,0,0,dots.c,0,-n;
	space 1,0,0,dots.c,-(n-1),0;
	space dots.v,dots.v,dots.v,,dots.v,dots.v;
	space 1,0,-3,dots.c,0,0;
	space 1,-2,0,dots.c,0,0;
	space 1,1,2,dots.c,n-2,n-1;
)\ =& (-1)^(n-1) mat(
	space 1,0,0,dots.c,0,1;
	space 1,0,0,dots.c,1,0;
	space dots.v,dots.v,dots.v,,dots.v,dots.v;
	space 1,0,1,dots.c,0,0;
	space 1,1,0,dots.c,0,0;
	space 1,-1/2,-2/3,dots.c,-(n-2)/(n-1),-(n-1)/n;
) = (-1)^(n-1) mat(
	space 0,0,0,dots.c,0,1;
	space 0,0,0,dots.c,1,0;
	space dots.v,dots.v,dots.v,,dots.v,dots.v;
	space 0,0,1,dots.c,0,0;
	space 0,1,0,dots.c,0,0;
	space 1+sum_(i=1)^(n-1) i/(i+1),-1/2,-2/3,dots.c,-(n-2)/(n-1),-(n-1)/n;
)\ =& (-1)^(n(n+1)/2+1) (1+sum_(i=1)^(n-1) i/(i+1))
$

= 第二周附加题 T5

#prob[
	将 $n$ 阶矩阵 $bold(D)$ 的每个元素减去其同行其余元素之和，得到 $bold(D_1)$，若 $|bold(D)|=t$，求 $|bold(D_1)|$．
]

= 第三周附加题 T1

#prob[
	#set math.mat(delim: "|")
	求：$ D_n = mat(
		d,b,b,dots.c,b;
		c,x,a,dots.c,a;
		c,a,x,dots.c,a;
		dots.v,dots.v,dots.v,,dots.v;
		c,a,a,dots.c,x;
	) quad (x!=a and b != 0 and c != 0) $
]

= 第三周附加题 T2 #ac

#prob[
	求：$ D_n = mat(
		x_1, a_1 b_2, dots.c, a_1 b_n;
		a_2 b_1, x_2, dots.c, a_2 b_n;
		dots.v,dots.v,,dots.v;
		a_n b_1, a_n b_2, dots.c, x_n;
	) $ 
]

$
D_n = mat(
	x_1, a_1 b_2, dots.c, a_1 b_n;
	a_2 b_1, x_2, dots.c, a_2 b_n;
	dots.v,dots.v,,dots.v;
	a_n b_1, a_n b_2, dots.c, x_n;
) = (product_(i=1)^n a_i b_i) mat(
	display(x_1/(a_1 b_1)), 1, dots.c, 1;
	1, display(x_2/(a_2 b_2)), dots.c, 1;
	dots.v, dots.v, , dots.v;
	1, 1, dots.c, display(x_n/(a_n b_n));
)
$

令 $t_i = display(frac(x_i, a_i b_i))$，新矩阵的行列式为 $D'_n$ 那么

$
D'_n &= mat(
	t_1, 1, dots.c, 1;
	1, t_2, dots.c, 1;
	dots.v, dots.v, , dots.v;
	1, 1, dots.c, t_n;
) = mat(
	t_1,1,1,dots.c,1;
	1-t_1,t_2-1,0,dots.c,0;
	1-t_1,0,t_3-1,dots.c,0;
	dots.v,dots.v,dots.v,,dots.v;
	1-t_1,0,0,dots.c,t_n-1;
)\
&= -(product_(i=1)^n (t_i-1)) mat(
	display(t_1/(1-t_1)), display(1/(t_2-1)), display(1/(t_3-1)), dots.c, display(1/(t_n-1));
	1, 1, 0, dots.c, 0;
	1, 0, 1, dots.c, 0;
	dots.v, dots.v, dots.v, , dots.v;
	1, 0, 0, dots.c, 1;
)\
&= -(product_(i=1)^n (t_i-1))(t_1/(1-t_1) - sum_(i=2)^n 1/(t_i )- 1)\
&= (product_(i=1)^n (t_i-1))(1 + sum_(i=1)^n 1/(t_i-1))\
=> D_n &= (product_(i=1)^n a_i b_i) (product_(i=1)^n (x_i-a_i b_i)/(a_i b_i)) (1 + sum_(i=1)^n (a_i b_i) / (x_i - a_i b_i))\
&= product_(i=1)^n (x_i-a_i b_i) (1 + sum_(i=1)^n (a_i b_i) / (x_i - a_i b_i))\
$

= 第三周附加题 T3 #ac

#prob[
	求：$ D_n = mat(
		a_1, a_2, dots.c, a_n;
		x_1, x_2, dots.c, x_n;
		x_1^2, x_2^2, dots.c, x_n^2;
		dots.v,dots.v,,dots.v;
		x_1^(n-1), x_2^(n-1), dots.c, x_n^(n-1);
	) $
]

$
D_n
&= sum_(i=1)^n a_i product_(j=1\ i!=j)^n x_j product_(1<=p<q<=n\ i!=p and i!=q) (x_q - x_p) \
&= (product_(i=1)^n x_i) (product_(1<=j<k<=n) (x_k-x_j)) (sum_(i=1)^n a_i/x_i) / (product_(j=1)^(i-1) (x_i-x_j) product_(k=i+1)^n (x_k-x_i))\
&= (product_(i=1)^n x_i) (product_(1<=j<k<=n) (x_k-x_j)) sum_(i=1)^n (a_i (-1)^(n-i))/(x_i product_(j!=i) (x_i-x_j))\
$

= 第三周附加题 T4

#prob[
	求：$ D_n = mat(
		0,a_1+a_2,a_1+a_3,dots.c,a_1+a_n;
		a_2+a_1,0,a_2+a_3,dots.c,a_2+a_n;
		a_3+a_1,a_3+a_2,0,dots.c,a_3+a_n;
		dots.v,dots.v,dots.v,,dots.v;
		a_n+a_1,a_n+a_2,a_n+a_3,dots.c,0
	) $
]

= 第三周附加题 T5

在往年小测中出现过，故略去．