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
#let OO = math.bold(math.italic("O"))
#let TT = math.upright("T")
#let Lambda = math.bold(math.Lambda)
#let diag = math.upright("diag")
#let ssim = math.attach(sp + math.upright("~") + sp, tl: "", tr:"", t: math.upright("S"))

= P126 习题五 3 #ac
#prob[
  若三元列向量 $alpha,beta$ 满足 $alpha^TT beta = 2$，求矩阵 $beta alpha^TT$ 的所有特征值．
]

设 $AA = beta alpha^TT$，则 $AA beta = (beta alpha^TT) beta = 2 beta$，说明 $2$ 是 $AA$ 的一个特征值，$beta$ 是对应的特征向量。

由于 $r(AA)=1$，故 $AA$ 只有 $2$ 这一个非零特征值。故 $0$ 是 $AA$ 的另一个特征值。

综上，$beta alpha^TT$ 的所有特征值为 $0,2$。

= P126 习题五 4 #ac
#prob[
  设 $AA$ 为二阶矩阵，$alpha_1,alpha_2$ 为线性无关的二元列向量，$AA alpha_1 = theta$，$AA alpha_2 = 2 alpha_1 + alpha_2$，求 $AA$ 的所有特征值．
]

$
AA mat(alpha_1,alpha_2) = mat(theta,2alpha_1+alpha_2) = mat(alpha_1,alpha_2) mat(0,2;0,1) => AA ssim mat(0,2;0,1)
$
故 $AA$ 的特征值为 $0,1$。

= P126 习题五 6(2) #pc
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

解 $(-EE - AA) XX = OO$，应用初等行变换：
$
-EE - AA
= mat(
	-3,1,-2;
	-5,2,-3;
	1,0,1;
) -> mat(
	1,0,1;
	0,2,2;
	0,1,1;
) => XX = k_1 mat(1;0;-1) + k_2 mat(0;1;-1)
$

故 $-1$ 是三重特征值，对应的特征向量为：$display(mat(1,0,-1))^TT,display(mat(0,1,-1))^TT$。

#warn[
  解线性方程组错误，正确的解空间应为 $XX = k_1 display(mat(1,1,-1))^TT sp (k_1 in RR)$。
]

= P127 习题五 6(5) #ac
#prob[
  求出给定矩阵在实数域和复数域上所有的特征值和特征向量．
  $ mat(
    0,0,0,1;
    0,0,1,0;
    0,1,0,0;
    1,0,0,0;
  ) $
]

#set math.mat(delim: "|")
$
|lambda EE - AA|
= mat(
	lambda,0,0,-1;
	0,lambda,-1,0;
	0,-1,lambda,0;
	-1,0,0,lambda;
) = 1/(lambda^2) mat(
	lambda,0,0,-1;
	0,lambda,-1,0;
	0,0,lambda^2-1,0;
	0,0,0,lambda^2-1;
) = (lambda-1)^2 (lambda+1)^2
$
#set math.mat(delim: "(")

令 $(EE - AA) XX = OO$，解得 $XX = k_1 display(mat(1,0,0,1))^TT + k_2 display(mat(0,1,1,0))^TT sp (k_1,k_2 in RR)$；

令 $(-EE - AA) XX = OO$，解得 $XX = k_3 display(mat(1,0,0,-1))^TT + k_4 display(mat(0,1,-1,0))^TT sp (k_3,k_4 in RR)$。

故 $1$ 是其中一个二重特征值，对应的特征向量为 $display(mat(1,0,0,1))^TT,display(mat(0,1,1,0))^TT$；$-1$ 是另一个二重特征值，对应的特征向量为 $display(mat(1,0,0,-1))^TT,display(mat(0,1,-1,0))^TT$。

#set math.mat(delim: "(")

= P127 习题五 12 #ac
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

= P128 习题五 18 #wa
#prob[
  设矩阵 $AA = display(mat(a,-1,c;5,b,3;1-c,0,-a))$，$|AA| = -1$。如果 $xi=display(mat(-1,-1,1)^TT)$ 是伴随矩阵 $AA^*$ 的属于特征值 $lambda_0$ 的一个特征向量，求 $a,b,c$ 和 $lambda_0$ 的值。
]

设矩阵 $AA = display(mat(a,-1,c;5,b,3;1-c,0,-a))$，$|AA| = -1$。如果 $xi=display(mat(-1,-1,1)^TT)$ 是伴随矩阵 $AA^*$ 的属于特征值 $lambda_0$ 的一个特征向量，求 $a,b,c$ 和 $lambda_0$ 的值。

TBD

#warn[加入纠错本。]

= P128 习题五 19 #ac
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

= P128 习题五 22 #ac
#prob[
  设 $AA,BB$ 是可逆矩阵，且 $AA$ 与 $BB$ 相似，则下列结论中错误的是（$quad$）

  (A) $AA^TT$ 与 $BB^TT$ 相似；

  (B) $AA^(-1)$ 与 $BB^(-1)$ 相似；

  (C) $AA+AA^TT$ 与 $BB+BB^TT$ 相似；

  (D) $AA+AA^(-1)$ 与 $BB+BB^(-1)$ 相似。
]

选 (C)。

= P128 习题五 23 #ac
#prob[
  设 $AA$ 为 $n$ 阶复矩阵，$bold(P)$ 为 $n$ 阶可逆复矩阵，证明：
  $
  tr(bold(P)^(-1) AA bold(P)) = tr(bold(A))
  $
  *要求使用两种方法*．
]

#def[方法一]根据迹的性质，$tr(bold(P)^(-1) AA bold(P)) = tr(bold(P) bold(P)^(-1) AA) = tr(AA)$，即原命题得证。

#def[方法二]设 $BB = bold(P)^(-1) AA bold(P)$，即 $AA ssim BB$。根据矩阵相似的必要条件，有 $tr(AA) = tr(BB)$，即原命题得证。

= P128 习题五 25 #ac
#prob[
  判断下列命题是否成立：

  (1) 如果矩阵 $AA,BB$ 均可逆，那么 $AA BB$ 与 $BB AA$ 相似。
]

正确。取 $bold(P) = BB^(-1)$，则 $bold(P)^(-1) (AA BB) bold(P) = BB AA (BB BB^(-1)) = BB AA$，即 $AA BB$ 与 $BB AA$ 相似。

#prob[(2) 相似的两个矩阵的特征值必相同。]

正确。由相似矩阵的必要条件，有 $f(lambda) = |lambda EE - AA| = |lambda EE - BB|$，即两个矩阵的特征多项式相同，即两个矩阵的特征值相同。

#prob[(3) 如果两个矩阵的特征值相同，那么他们相似。]

错误，应要求两个矩阵的都能对角化。

#warn[
  这里结果正确理由错误 #wa，这也只是矩阵相似的必要条件而不是充分条件。

  反例：$display(AA = mat(0,0;1,0)\,sp BB = mat(0,0;0,0))$。
]

#prob[(4) 相似的两个矩阵的特征向量必相同。]

错误。

#warn[
  反例：$display(AA = mat(1,0;0,0)\,sp BB = mat(0,0;0,1))$。
]

= P129 习题五 27 #ac
#prob[
  设三阶矩阵 $AA = display(mat(alpha_1,alpha_2,alpha_3))$ 有 $3$ 个不同的特征值，且 $alpha_3 = alpha_1 + 2 alpha_2$。

  (1) 证明：$r(AA) = 2$。
]

考虑 $AA = display(mat(alpha_1,alpha_2,alpha_1+2alpha_2))$，故 $|AA| = 0<=> r(AA) < 3$，同时说明 $0$ 是 $AA$ 的一个特征根。不妨设 $lambda_1=0$，则 $dim(V_(lambda_0)) = 3-r(AA) <= 1$。即 $r(AA)>=2$。两边夹得 $r(AA)=2$。

#prob[(2) 若 $beta = alpha_1 + alpha_2 + alpha_3$，求方程组 $AA XX = beta$ 的通解。]

设 $XX = display(mat(x_1,x_2,x_3))^TT$，那么
$
AA XX = beta
=> x_1 alpha_1 + x_2 alpha_2 + x_3 (alpha_1+2 alpha_2) = 2 alpha_1 + 3 alpha_2
=> cases(
	x_1+x_3=2,
	x_2+2x_3=3
)
$

解得 $XX=display(mat(1,1,1))^TT + k display(mat(-1,-2,1)) sp (k in RR)$。

= P129 习题五 29 #ac
#prob[
  设矩阵 $AA = display(mat(0,2,-3;-1,3,-3;1,-2,a))$ 与矩阵 $BB = display(mat(1,-2,0;0,b,0;0,3,1))$ 相似。
  
  (1) 求 $a,b$ 的值。
]

$
cases(
	tr(AA) = tr(BB) => 3 + a = 2 + b
	|AA| = |BB| => 2a-3 = b
)
$
解得 $a=4,sp b=5$。

#prob[(2) 求可逆矩阵 $bold(P)$ 使得 $bold(P)^(-1) AA bold(P)$ 为对角矩阵。]

$
|lambda EE-AA|
= (lambda-1) (lambda^2-4lambda+3-2(lambda-1))
= (lambda-1)^2 (lambda-5)
$

设 $(EE-AA) XX = OO => display(mat(1,-2,3;1,-2,3;-1,2,-3)) XX = OO$，解得 $XX = k_1 display(mat(2,1,0))^TT + k_2 display(mat(-3,0,1))^TT sp (k_1,k_2 in RR)$；

设 $(5 EE - AA) XX = OO => display(mat(5,-2,3;1,2,3;-1,2,1)) XX = OO$，解得 $XX = k_3 display(mat(1,1,-1))^TT (k_3 in RR)$。

故取 $bold(P) = display(mat(2,3,1;1,0,1;0,1,-1))$，有 $bold(P)^(-1) AA bold(P) = Lambda = display(mat(1,0,0;0,1,0;0,0,5))$。

#warn[后面的补充题纠错整理在纠错本上。]

= P133 补充题五 2
#prob[
	设 $AA,BB$ 为任意两个 $n$ 阶方阵，试证明：$AA BB$ 与 $BB AA$ 有相同的特征多项式。
]

注意到 $BB (AA BB) BB^(-1) = (BB AA) (BB BB^(-1)) = BB AA$，故 $AA BB ssim BB AA$。故 $AA BB$ 和 $BB AA$ 有相同的特征多项式。

= P133 补充题五 3
#prob[
	设 $AA,BB$ 是数域 $PP$ 上的两个 $n$ 阶方阵，且 $AA$ 在 $PP$ 中的 $n$ 个特征值互异，试证明：$AA$ 的特征向量恒为 $BB$ 的特征向量当且仅当 $AA BB = BB AA$。
]

= P133 补充题五 4
#prob[
	设矩阵 $AA = (a_(i j))_(n times n)$ 满足下述条件：
	$
	forall i=1,2,dots.c,n,quad sum_(j=1)^n a_(i j)=b
	$
	这里 $b$ 是一个常数，证明：如果对任意的 $1<=i,j<=n$ 有 $a_(i j)>=0$，那么 $AA$ 的任意一个实特征值 $lambda$ 满足 $|lambda| <= b$。
]

#let ones(n) = math.display(math.attach(math.mat(1,1,math.dots.c,1), br: math.upright("1") + math.times + n))
#let ttones(n) = math.display(math.attach(math.mat(1,1,math.dots.c,1), tr: TT, br: math.upright("1") + math.times + n))

$
AA_n ttones(n) = b ttones(n)
$