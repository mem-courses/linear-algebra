#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Homework #12",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "December 21, 2023",
)

#let alpha = math.bold(math.alpha)
#let beta = math.bold(math.beta)
#let theta = math.bold(math.theta)
#let AA = math.bold(math.italic("A"))
#let BB = math.bold(math.italic("B"))
#let TT = math.upright("T")

= P126 习题五 3
#prob[
	若三元列向量 $alpha,beta$ 满足 $alpha^TT beta = 2$，求矩阵 $beta alpha^TT$ 的所有特征值．
]

= P126 习题五 4
#prob[
	设 $AA$ 为二阶矩阵，$alpha_1,alpha_2$ 为线性无关的二元列向量，$AA alpha_1 = theta$，$AA alpha_2 = 2 alpha_1 + alpha_2$，求 $AA$ 的所有特征值．
]

= P126 习题五 6(2)
#prob[
	求出给定矩阵在实数域和复数域上所有的特征值和特征向量．
	$ mat(
		2,-1,2;
		5,-3,3;
		-1,0,-2;
	) $
]

= P127 习题五 6(5)
#prob[
	求出给定矩阵在实数域和复数域上所有的特征值和特征向量．
	$ mat(
		0,0,0,1;
		0,0,1,0;
		0,1,0,0;
		1,0,0,0;
	) $
]

= P127 习题五 12
#prob[设二阶矩阵 $AA$ 有两个不同的特征值，$alpha_1,alpha_2$ 是 $AA$ 的线性无关的特征向量，且满足 $AA^2 (alpha_1 + alpha_2) = alpha_1 + alpha_2$，求 $|AA|$．]

= P128 习题五 18
= P128 习题五 19
= P128 习题五 22
= P128 习题五 23
#prob[
	设 $AA$ 为 $n$ 阶复矩阵，$bold(P)$ 为 $n$ 阶可逆复矩阵，证明：
	$
	tr(bold(P)^(-1) AA bold(P)) = tr(bold(A))
	$
	*要求使用两种方法．*
]
= P128 习题五 25
= P129 习题五 27
= P129 习题五 29
= P133 补充题五 2
= P133 补充题五 3
= P133 补充题五 4