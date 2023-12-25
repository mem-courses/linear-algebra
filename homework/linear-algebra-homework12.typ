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
#let xi = math.bold(math.xi)
#let AA = math.bold(math.italic("A"))
#let BB = math.bold(math.italic("B"))
#let EE = math.bold(math.italic("E"))
#let XX = math.bold(math.italic("X"))
#let TT = math.upright("T")
#let Lambda = math.bold(math.Lambda)
#let diag = math.upright("diag")
#let ssim = math.attach(sp + math.upright("~") + sp, tl: "", tr:"", t: math.upright("S"))

= P126 习题五 3
#prob[
	若三元列向量 $alpha,beta$ 满足 $alpha^TT beta = 2$，求矩阵 $beta alpha^TT$ 的所有特征值．
]

设 $AA = beta alpha^TT$，则 $AA beta = (beta alpha^TT) beta = 2 beta$，说明 $2$ 是 $AA$ 的一个特征值，$beta$ 是对应的特征向量。

由于 $r(AA)=1$，故 $AA$ 只有 $2$ 这一个非零特征值。故 $0$ 是 $AA$ 的另一个特征值。

综上，$beta alpha^TT$ 的所有特征值为 $0,2$。

= P126 习题五 4
#prob[
	设 $AA$ 为二阶矩阵，$alpha_1,alpha_2$ 为线性无关的二元列向量，$AA alpha_1 = theta$，$AA alpha_2 = 2 alpha_1 + alpha_2$，求 $AA$ 的所有特征值．
]

$
AA mat(alpha_1,alpha_2) = mat(theta,2alpha_1+alpha_2) = mat(alpha_1,alpha_2) mat(0,2;0,1) => AA ssim mat(0,2;0,1)
$
故 $AA$ 的特征值为 $0,1$。

= P126 习题五 6(2)
#prob[
	求出给定矩阵在实数域和复数域上所有的特征值和特征向量．
	$ mat(
		2,-1,2;
		5,-3,3;
		-1,0,-2;
	) $
]

通过初等行变换得
$
|lambda EE - AA|
&= -3 + 5(lambda+2) - (lambda+3)(2-lambda^2)\
&= lambda^3 + 3lambda^2 + 3lambda + 1\
&= (lambda+1)^3
$

故 $-1$ 是三重特征值，对应的特征向量为：$$

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
#prob[
	设二阶矩阵 $AA$ 有两个不同的特征值，$alpha_1,alpha_2$ 是 $AA$ 的线性无关的特征向量，且满足
	$
	AA^2 (alpha_1 + alpha_2) = alpha_1 + alpha_2
	$
	求 $|AA|$．
]

$
&AA^2 (alpha_1 + alpha_2) = alpha_1 + alpha_2\
=> &(lambda_1^2 alpha_1 + lambda_2^2 alpha_2) = alpha_1+ alpha_2\
=> &(lambda_1^2 - 1) alpha_1 + (lambda_2^2 - 1) alpha_2 = theta
$

由于 $alpha_1,alpha_2$ 线性无关，故等式成立只可能 $lambda_1^2 - 1 = lambda_2^2 - 1 = 0$，由于 $lambda_1 != lambda_2$，不妨令 $lambda_1 = 1$，$lambda_2 = -1$。故 $|AA| = lambda_1 dot lambda_2 = -1$。

= P128 习题五 18
#prob[
	设矩阵 $AA = display(mat(a,-1,c;5,b,3;1-c,0,-a))$，$|AA| = -1$。如果 $xi=display(mat(-1,-1,1)^TT)$ 是伴随矩阵 $AA^*$ 的属于特征值 $lambda_0$ 的一个特征向量，求 $a,b,c$ 和 $lambda_0$ 的值。
]

= P128 习题五 19
#prob[
	已知三阶矩阵 $AA$ 的特征值为 $1,2,-3$，求 $|AA^* + 3 AA + 2 EE|$。
]

$
AA AA^* = |AA| EE => AA^* = |AA| AA^(-1) = -6 AA^(-1)
$
设 $f(x) = -6 x^(-1) + 3x + 2$，即
$
|AA^* + 3 AA + 2 EE|
&= |f(AA)|
= f(lambda_1) dot f(lambda_2) dot f(lambda_3)\
&= (-1) dot 5 dot (-5) = 25
$

= P128 习题五 22
#prob[
	设 $AA,BB$ 是可逆矩阵，且 $AA$ 与 $BB$ 相似，则下列结论中错误的是（$quad$）

	(A) $AA^TT$ 与 $BB^TT$ 相似；

	(B) $AA^(-1)$ 与 $BB^(-1)$ 相似；

	(C) $AA+AA^TT$ 与 $BB+BB^TT$ 相似；

	(D) $AA+AA^(-1)$ 与 $BB+BB^(-1)$ 相似。
]

选 (C)。

= P128 习题五 23
#prob[
	设 $AA$ 为 $n$ 阶复矩阵，$bold(P)$ 为 $n$ 阶可逆复矩阵，证明：
	$
	tr(bold(P)^(-1) AA bold(P)) = tr(bold(A))
	$
	*要求使用两种方法*．
]

#def[方法一]根据迹的性质，$tr(bold(P)^(-1) AA bold(P)) = tr(bold(P) bold(P)^(-1) AA) = tr(AA)$，即原命题得证。

#def[方法二]设 $BB = bold(P)^(-1) AA bold(P)$，即 $AA ssim BB$。根据矩阵相似的必要条件，有 $tr(AA) = tr(BB)$，即原命题得证。

= P128 习题五 25
#prob[
	判断下列命题是否成立：

	(1) 如果矩阵 $AA,BB$ 均可逆，那么 $AA BB$ 与 $BB AA$ 相似。
]

正确。取 $bold(P) = BB^(-1)$，则 $bold(P)^(-1) (AA BB) bold(P) = BB AA (BB BB^(-1)) = BB AA$，即 $AA BB$ 与 $BB AA$ 相似。

#prob[(2) 相似的两个矩阵的特征值必相同。]

正确。由相似矩阵的必要条件，有 $f(lambda) = |lambda EE - AA| = |lambda EE - BB|$，即两个矩阵的特征多项式相同，即两个矩阵的特征值相同。

#prob[(3) 如果两个矩阵的特征值相同，那么他们相似。]

正确。不妨设两个矩阵的特征值都为 $seqn(lambda,n)$，那么他们都与 $Lambda = diag(seqn(lambda,n))$ 相似，根据相似的传递性，这两个矩阵相似。

#prob[(4) 相似的两个矩阵的特征向量必相同。]

错误，

= P129 习题五 27
#prob[
	设三阶矩阵 $AA = display(mat(alpha_1,alpha_2,alpha_3))$ 有 $3$ 个不同的特征值，且 $alpha_3 = alpha_1 + 2 alpha_2$。

	(1) 证明：$r(AA) = 2$。
]

#prob[(2) 若 $beta = alpha_1 + alpha_2 + alpha_3$，求方程组 $AA XX = beta$ 的通解。]

= P129 习题五 29
#prob[
	设矩阵 $AA = display(mat(0,2,-3;-1,3,-3;1,-2,a))$ 与矩阵 $BB = display(mat(1,-2,0;0,b,0;0,3,1))$ 相似。
	
	(1) 求 $a,b$ 的值。
]

#prob[(2) 求可逆矩阵 $bold(P)$ 使得 $bold(P)^(-1) AA bold(P)$ 为对角矩阵。]

= P133 补充题五 2
= P133 补充题五 3
= P133 补充题五 4