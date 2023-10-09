#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
  title: "Linear Algebra Homework #2",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "September 25, 2023",
)

= P35 习题二 2

#prob[
	设 $n-$ 排列 $i_1 i_2 dots.c i_(n-1) i_n$ 的逆序对数为 $k$，求排列 $i_n i_(n-1) dots.c i_2 i_1$ 的逆序对数
]

根据定义，新排列的逆序对数即原排列的“顺序对”数，为 $display(1/2 n(n-1) - k)
$．

= P35 习题二 5(1)

#prob[
	确定 $7$ 阶行列式 $|a_(i j)|$ 中该项的符号：$ a_12 a_21 a_34 a_45 a_53 a_66 a_77 $
]

统计排列 $2145367$ 中的逆序对个数．共 $(2,1) (4,3) (5,3)$ 这三个．故该项的符号为 $-$．

= P35 习题二 6(1)

#prob[
	用定义计算行列式的值：
	#set math.mat(delim: "|")
	$ mat(
		0,1,0,dots.c,0;
		0,0,2,dots.c,0;
		dots.v,dots.v,dots.v,,dots.v;
		0,0,0,dots.c,n-1;
		n,0,0,dots.c,0;
	) $
]

注意到仅该项非零：
$ a_12 a_23 a_34 dots.c a_((n-1)n) a_(n 1) $

故
$ |bold(A)| = (-1)^(n-1) n! $

= P35 习题二 6(2)

#prob[
	用定义计算行列式的值：
	#set math.mat(delim: "|")
	$ mat(
		a_1, a_2, a_3, a_4, a_5;
		b_1, b_2, b_3, b_4, b_5;
		c_1, c_2, 0, 0, 0;
		d_1, d_2, 0, 0, 0;
		e_1, e_2, 0, 0, 0;
	) $
]

$ |bold(A)|=(-1)^tau(i_1i_2i_3i_4i_5) a_i_1 b_i_2 c_i_3 d_i_4 e_i_5 $

根据鸽巢原理 $i_3,i_4,i_5$ 中至少有一个数不等于 $1$ 或 $2$，即 $c_i_3, d_i_4, e_i_5$ 中至少有一个为 $0$．所以，$ |bold(A)| = 0 $

= P35 习题二 8(4)

#prob[
	利用行列式的性质计算行列式的值：
	#set math.mat(delim: "|")
	$ mat(
		a^2, (a+1)^2, (a+2)^2, (a+3)^2;
		b^2, (b+1)^2, (b+2)^2, (b+3)^2;
		c^2, (c+1)^2, (c+2)^2, (c+3)^2;
		d^2, (d+1)^2, (d+2)^2, (d+3)^2;
	) $
]

#set math.mat(delim: "|")
$ |bold(A)| = mat(
	a^2, 2a+1, 4a+4, 6a+9;
	b^2, 2b+1, 4b+4, 6b+9;
	c^2, 2c+1, 4c+4, 6c+9;
	d^2, 2d+1, 4d+4, 6d+9;
) = mat(
	a^2, 2a+1, 2, 6;
	b^2, 2b+1, 2, 6;
	c^2, 2c+1, 2, 6;
	d^2, 2d+1, 2, 6;
) = 0 $

= P35 习题二 8(5)

#prob[
	利用行列式的性质计算行列式的值：
	#set math.mat(delim: "|")
	$ mat(
		1,-1,dots.c,-1,-1;
		1,1,dots.c,-1,-1;
		dots.v,dots.v,,dots.v,dots.v;
		1,1,dots.c,1,-1;
		1,1,dots.c,1,1
	)_n quad (n>1) $
]

#set math.mat(delim: "|")
$ |bold(A)| = mat(
	1,-2,-2,dots.c,-2,-2;
	1,0,-2,dots.c,-2,-2;
	1,0,0,dots.c,-2,-2;
	dots.v,dots.v,dots.v,,dots.v,dots.v;
	1,0,0,dots.c,0,-2;
	1,0,0,dots.c,0,0;
)_n = (-1)^(n-1) mat(
	-2,-2,dots.c,-2,-2,1;
	0,-2,dots.c,-2,-2,1;
	0,0,dots.c,-2,-2,1;
	dots.v,dots.v,,dots.v,dots.v,dots.v;
	0,0,dots.c,0,-2,1;
	0,0,dots.c,0,0,1;
)_n = 2^(n-1) quad (n>1) $

= P36 习题二 8(6)

#prob[
	利用行列式的性质计算行列式的值：
	#set math.mat(delim: "|")
	$ mat(
		a_1,-a_1,0,dots.c,0,0;
		0,a_2,-a_2,dots.c,0,0;
		dots.v,dots.v,dots.v,,dots.v,dots.v;
		0,0,0,dots.c,a_n,-a_n;
		b,b,b,dots.c,b,b;
	) $
]

#set math.mat(delim: "|")
$ |bold(A)| = mat(
	a_1,0,0,dots.c,0,0;
	0,a_2,0,dots.c,0,0;
	0,0,a_3,dots.c,0,0;
	dots.v,dots.v,dots.v,,dots.v,dots.v;
	0,0,0,dots.c,a_n,0;
	b,2b,3b,dots.c,n b,(n+1)b;
) = (n+1) b dot product_(i=1)^n a_i $

= P36 习题二 9(1)

#prob[
	证明等式成立：
	#set math.mat(delim: "|")
	$ mat(
		a_1+k b_1,b_1+c_1,c_1;
		a_2+k b_2,b_2+c_2,c_2;
		a_3+k b_3,b_3+c_3,c_3;
	) = mat(
		a_1,b_1,c_1;
		a_2,b_2,c_2;
		a_3,b_3,c_3;
	) $
]


#set math.mat(delim: "|")
$ mat(
	a_1+k b_1,b_1+c_1,c_1;
	a_2+k b_2,b_2+c_2,c_2;
	a_3+k b_3,b_3+c_3,c_3;
) = mat(
	a_1+k b_1,b_1,c_1;
	a_2+k b_2,b_2,c_2;
	a_3+k b_3,b_3,c_3;
) = mat(
	a_1,b_1,c_1;
	a_2,b_2,c_2;
	a_3,b_3,c_3;
) $

原命题得证．

= P36 习题二 9(2)

#prob[
	证明等式成立：
	#set math.mat(delim: "|")
	$ mat(
		a_1-b_1,a_1-b_2,dots.c,a_1-b_n;
		a_2-b_1,a_2-b_2,dots.c,a_2-b_n;
		dots.v,dots.v,,dots.v;
		a_n-b_1,a_n-b_2,dots.c,a_n-b_n;
	) = 0 $
]

$ mat(
	a_1-b_1,a_1-b_2,dots.c,a_1-b_n;
	a_2-b_1,a_2-b_2,dots.c,a_2-b_n;
	dots.v,dots.v,,dots.v;
	a_n-b_1,a_n-b_2,dots.c,a_n-b_n;
) = mat(
	a_1-b_1,b_1-b_2,dots.c,b_1-b_n;
	a_2-b_1,b_1-b_2,dots.c,b_1-b_n;
	dots.v,dots.v,,dots.v;
	a_n-b_1,b_1-b_2,dots.c,b_1-b_n;
) = 0 $

原命题得证．

= P40 补充题二 1

#prob[
	试证明在所有的 $n-$ 排列中，奇排列和偶排列的个数相等，并求出奇（偶）排列的个数．
]

定义一个 $n-$ 排列到 $n-$ 排列的映射 $f(i_1i_2i_3 dots.c i_n) = i_2i_1i_3 dots.c i_n$．

1. 排列 $i_1i_2i_3 dots.c i_n$ 与排列 $i_2i_1i_3 dots.c i_n$ 的奇偶性相反．

  证明：其余 $n-2$ 个数内部和开头两个数与这 $n-2$ 个数的逆序对数不变，
	
	- 如果 $i_1>i_2$，则交换后逆序对个数减少一
	- 如果 $i_1<i_2$，则交换后逆序对个数增加一

	可见逆序对个数的奇偶性恰好发生改变．

2. 可以将所有 $n!$ 个排列所组成的二元组 $(x,f(x))$ 恰能找到

= P40 补充题二 2

#prob[
	试证明：如果数域 $PP$ 上的 $n$ 阶方阵 $bold(A)$ 的元素全为 $2$ 或 $-2$，那么 $2^(2n-1)$ 整除 $|bold(A)|$．
]

将第 $2$ 到 $n$ 行减去第 $1$ 行，则每个位置上的数要么为 $4$，要么为 $0$，要么为 $-4$．

根据行列式的定义，考察新矩阵行列式的每一项：

$
(-1)^tau(i_1i_2 dots.c i_n)a_(1,i_1)a_(2,i_2) dots.c a_(n,i_n)
$

其中 $a_(1,i_1) in {-2,2}$，故 $2 | a_(1,i_1)$．

对于 $k>1$，有 $a_(k,i_k) in {-4,0,4}$，故 $4 | a_(k,i_k)$．

可得每一项都是 $2 dot 4^(n-1) = 2^(2n-1)$ 的倍数，故 $2^(2n-1)$ 整除 $|bold(A)|$．