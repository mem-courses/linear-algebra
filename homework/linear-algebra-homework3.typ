#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
  title: "Linear Algebra Homework #3",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "October 9, 2023",
)

= P36 习题二 12(3)

#prob[
	计算行列式的值：
	#set math.mat(delim: "|")
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
	#set math.mat(delim: "|")
	$ mat(
		x,y,0,dots.c,0,0;
		0,x,y,dots.c,0,0;
		0,0,x,dots.c,0,0;
		dots.v,dots.v,dots.v,,dots.v,dots.v;
		0,0,0,dots.c,x,y;
		y,0,0,dots.c,0,x;
	)_n $
]

#set math.mat(delim: "|")
$
D
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
	#set math.mat(delim: "|")
	$ mat(
		x,-1,0,dots.c,0,0;
		0,x,-1,dots.c,0,0;
		0,0,x,dots.c,0,0;
		dots.v,dots.v,dots.v,,dots.v,dots.v;
		0,0,0,dots.c,x,-1;
		a_n,a_(n-1),a_(n-2),dots.c,a_2,a_1+x;
	) $
]

= P37 习题二 12(11)

#prob[
	计算行列式的值：
	#set math.mat(delim: "|")
	$ mat(
		1,1,1,dots.c,1;
		2,2^2,2^3,dots.c,2^n;
		3,3^3,3^3,dots.c,3^n;
		dots.v,dots.v,dots.v,,dots.v;
		n,n^2,n^3,dots.c,n^n;
	) $
]

#set math.mat(delim: "|")
令 $display(bold(A')=mat(
	1,0,0,0,dots.c,0;
	1,1,1,1,dots.c,1;
	1,2,2^2,2^3,dots.c,2^n;
	1,3,3^3,3^3,dots.c,3^n;
	1,dots.v,dots.v,dots.v,,dots.v;
	1,n,n^2,n^3,dots.c,n^n;
))$，有 $|bold(A')|=(-1)^(1+1) a'_(11)bold(A')_11=|bold(A)|$．

根据 Vandermonde 行列式，可以得到：

$
|bold(A)|
= product_(0<=i<j<=n) (j-i)
= product_(i=1)^n i^(n-i+1)
$

= P37 习题二 13

#prob[
	#set math.mat(delim: "|")
	设 $display(bold(D)_n = mat(
		1,2,3,dots.c,n-1,n;
		1,1,0,dots.c,0,0;
		1,0,1,dots.c,0,0;
		dots.v,dots.v,dots.v,,dots.v,dots.v;
		1,0,0,dots.c,1,0;
		1,0,0,dots.c,0,1;
	))$，计算 $bold(D)_n$ 及 $t_1 A_(11) + t_2A_12 + dots.c + t_n A_(1 n)$，这里 $A_(i j)$ 为 $bold(D)_n$ 的第 $i$ 行第 $j$ 列元素的代数余子式．
]

$
|bold(D)_n|=product_(i=2)^n -(i-1) = (-1)^(n-1) dot (n-1)!
$

= P37 习题二 14

#prob[
	计算行列式
	#set math.mat(delim: "|")
	$ mat(
		1,1,dots.c,1,1;
		x_1,x_2,dots.c,x_(n-1),x_n;
		dots.v,dots.v,,dots.v,dots.v;
		x_1^(n-2),x_2^(n-2),dots.c,x_(n-1)^(n-2),x_n^(n-2);
		x_1^n,x_2^n,dots.c,x_(n-1)^n,x_n^n;
	) $
]

= P38 习题二 16(4)

#prob[
	利用 Laplace 定理计算行列式的值：
	#set math.mat(delim: "|")
	$ mat(
		1,b,c,0,0,0;
		0,0,3,0,0,0;
		a_11,a_12,a_13,0,2,d;
		a_21,a_22,a_23,0,0,1;
		a_31,a_32,a_33,3,e,f;
		0,2,g,0,0,0;
	) $
]

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

= P39 习题二 26

#prob[
	已知 $n$ 阶行列式 $D=|a_(i j)|_n!=0$，证明：线性方程组
	$ cases(
		a_11 x_1 + a_12 x_2 + &&dots.c + a_(1,n-1) x_(n-1) = a_(1 n),
		a_21 x_1 + a_22 x_2 + &&dots.c + a_(2,n-1) x_(n-1) = a_(2 n),
		&&dots.c,
		a_31 x_1 + a_32 x_2 + &&dots.c + a_(3,n-1) x_(n-1) = a_(3 n),
	) $
	无解．
]

= P40 补充题二 3(1)

#prob[
	试计算行列式的值：
	#set math.mat(delim: "|")
	$ mat(
		x,a,a,dots.c,a,a;
		b,x,a,dots.c,a,a;
		b,b,x,dots.c,a,a;
		dots.v,dots.v,dots.v,,dots.v,dots.v;
		b,b,b,dots.c,x,a;
		b,b,b,dots.c,b,x;
	)_n $
]

= P40 补充题二 3(5)

#prob[
	试计算行列式的值：
	#set math.mat(delim: "|")
	$ mat(
		a_0+a_1,a_1,0,dots.c,0,0;
		a_1,a_1+a_2,a_2,dots.c,0,0;
		0,a_2,a_2+a_3,dots.c,0,0;
		dots.v,dots.v,dots.v,,dots.v,dots.v;
		0,0,0,dots.c,a_(n-2)+a_(n-1),a_(n-1);
		0,0,0,dots.c,a_(n-1),a_(n-1)+a_n;
	) $
]

= P41 补充题二 3(6)

#prob[
	试计算行列式的值：
	#set math.mat(delim: "|")
	$ mat(
		2^n-2,2^(n-1)-2,2^(n-2)-2,dots.c,2^2-2;
		3^n-3,3^(n-1)-3,3^(n-2)-3,dots.c,3^2-3;
		4^n-4,4^(n-1)-4,4^(n-2)-4,dots.c,4^2-4;
		dots.v,dots.v,dots.v,,dots.v;
		n^n-n,n^(n-1)-n,n^(n-2)-n,dots.c,n^2-n;
	) $
]

= P41 补充题二 4

#prob[
	设 $n space (n>1)$ 阶行列式 $D=|a_(i j)|_n=4$，且 $D$ 中各列元素之和均为 $3$，并记元素 $a_(i j)$ 的代数余子式为 $A_(i j)$，试求 $display(sum_(i=1)^n sum_(j=1)^n A_(i j))$．
]

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