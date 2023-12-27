#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Note #5",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "December 25, 2023",
)

#let xi = math.bold(math.xi)
#let theta = math.bold(math.theta)
#let AA = math.bold(math.italic("A"))
#let BB = math.bold(math.italic("B"))
#let XX = math.bold(math.italic("X"))
#let YY = math.bold(math.italic("Y"))
#let EE = math.bold(math.italic("E"))
#let OO = math.bold(math.italic("O"))
#let TT = math.upright("T")
#let x1 = math.attach(math.italic("x"), br: math.upright("1"))
#let x2 = math.attach(math.italic("x"), br: math.upright("2"))
#let x3 = math.attach(math.italic("x"), br: math.upright("3"))
#let alpha = math.bold(math.alpha)
#let beta = math.bold(math.beta)
#let Lambda = math.bold(math.Lambda)
#let diag = math.upright("diag")
#let ssim = math.attach(sp + math.upright("~") + sp, tl: "", tr:"", t: math.upright("S"))

= 特征值理论

== 特征值和特征向量

设 $AA in PP^(n times n)$，如有数 $lambda_0 in PP$ 及非零列向量 $xi in PP^n$ 使得 $AA xi = lambda_0 xi$，则称 $lambda_0$ 是 $AA$ 的一个 *特征值*，非零列向量 $xi$ 为 $AA$ 的一个 *特征向量*．

#def[性质1]1. 若 $xi$ 是 $AA$ 的一个特征向量，则 $xi$ 只能属于 $AA$ 的唯一一个特征值．

#deft[性质1]2. 属于 $AA$ 的任一个特征值的特征向量有无穷多个．

#def[性质2]设有 $xi != theta$，满足
$
AA_(n times n) xi = lambda_0 xi
&<=> (lambda_0 EE - AA) xi = theta\
&<=> (lambda_0 EE - AA) XX = theta "有非零解" xi\
&<=> r(lambda_0 EE - AA) < n\
&<=> |lambda_0 EE - AA| = 0\
$

== 特征多项式

#set math.mat(delim: "|")
$
f_AA (lambda)
&= |lambda EE - AA|\
&= mat(
	lambda-a_11, -a_12, dots.c, -a_(1 n);
	-a_21, lambda-a_22, dots.c, -a_(2 n);
	dots.v,dots.v,,dots.v;
	-a_(n 1), -a_(n 2), dots.c, lambda-a_(n n);
)\
&= lambda^n - (a_11+a_22+dots.c+a_(n n))lambda^(n-1) + dots.c + (-1)^n |AA|
$
#set math.mat(delim: "(")

称为 $AA$ 的 *特征多项式*，简记为 $f(lambda)$．设 $AA in PP^(n times n)$，则 $f(lambda)$ 是 $n$ 次多项式．

记 $tr(AA) = a_11 + a_22 + dots.c + a_(n n)$ 称为矩阵 $AA$ 的 *迹*．

== 特征值和特征向量的求法

1. 根据 $f(lambda) = (lambda-lambda_1)^(n_1) (lambda-lambda_2)^(n_2) dots.c (lambda-lambda_s)^(n_s) = 0$ 求出 $AA$ 的所有特征值 $lambda_1,lambda_2,dots.c,lambda_s$．（$n_i$ 为每个特征值的重数，那么 $n_1+n_2+dots.c+n_s=n$）（特征值在 $CC$ 上，但不一定在 $PP$ 上）

2. 对每个 $lambda_i$，求特征值 $lambda_i$ 的 *特征线性方程组*
$
(lambda_i EE - AA) XX = OO
$
的一个基础解系 $xi_(i_1),xi_(i_2),dots.c,xi_(i_(r_i))$，则 $lambda_i$ 对应的全体特征向量为：
$
k_(i_1) xi_(i_1) + k_(i_2) xi_(i_2) + dots.c + k_(i_(r_i)) xi_(i_(r_i)) quad (k_(i j) "不同时为" 0)
$
记
$
V_(lambda_i) = {AA "的属于" lambda_i "的全体特征向量"} union {theta}
$
为特征值 $lambda_i$ 的 *特征子空间*．

#note[
	#def[总结]求 $AA$ 的特征值的几种特殊方法：

	1. $r(AA) = 1$：说明 $AA = alpha beta^TT$，则 $AA alpha = (alpha beta^TT) alpha = (beta^TT alpha) alpha$，这里 $beta^TT alpha$ 是一个特征根．

	2. $AA$ 的每行元素和为 $c$：说明 $AA display(mat(1,1,dots.c,1)) = c display(mat(1,1,dots.c,1))$，这里 $c$ 是一个特征根．
]

== 特征值和特征向量的基本性质

#def[性质1]1. $display(sum_(i=1)^n a_(i i) = sum_(i=1)^n lambda_i = tr(AA))$．

#deft[性质1]2. $display(product_(i=1)^n lambda_i = |AA|)$．

#def[推论1]$AA "可逆" <=> AA "的所有特征值都不为零"$．

#def[性质2]设 $seqn(lambda,s)$ 是 $AA$ 的 $s$ 个不同的特征值，$seqn(xi,s)$ 分别是属于特征值 $seqn(lambda,s)$ 的特征向量，那么 $seqn(xi,s)$ 线性无关．

#prof[
	#def[证明]用归纳法证明：

	1. 当 $s=1$ 时，$xi_1 != theta$，故线性无关．

	2. 设 $seqn(xi,s-1)$ 线性无关，证 $seqn(xi,s)$ 也线性无关．令
	  $
		k_1 xi_1 + k_2 xi_2 + dots.c + k_s xi_s = theta quad (1)
		$
		左乘 $AA$ 得到
		$
		k_1 lambda_1 xi_1 + k_2 lambda_2 xi_2 + dots.c + k_s lambda_s xi_s = theta quad (2)
		$
		令 (1) $xi_s -$ (2) 得到
		$
		k_1 (lambda_s-lambda_1) xi_1 + k_2 (lambda_s-lambda_2) xi_2 + dots.c + k_(s-1) (lambda_s-lambda_(s-1)) xi_(s-1) = theta
		$
		因为 $seqn(xi,s-1)$ 线性无关，故
		$
		k_1 (lambda_s - 1) = k_2 (lambda_s-lambda_2) = dots.c = k_(s-1) (lambda_s-lambda_(s-1)) = 0
		$
		又因为 $lambda_i$ 两两不同，故 $k_1=k_2=dots.c=k_(s-1) = 0$．代入 (1) 得 $k_s xi_s = 0$，故 $k_s = 0$．所以 $seqn(xi,s)$ 线性无关，由归纳法即原命题成立．
]

#def[性质3]进一步地，向量组 $xi_11,xi_12,dots.c,xi_(1 r_1),sp xi_(21),xi_(22),dots.c,xi_(2 r_2),sp dots.c,sp xi_(s 1),xi_(s 2),dots.c,xi_(s r_s)$ 线性无关，且
$ dim V_(lambda_1) + dim V_(lambda_2) + dots.c + dim V_(lambda_s) = r_1 + r_2 + dots.c + r_s <= n $

#def[性质4]$dim V_(lambda_i) = n - r(lambda_i EE - AA) <= n_i$，其中 $n_i$ 是特征值 $lambda_i$ 作为特征多项式零点的重数．我们称 $dim V_(lambda_i)$ 为特征值 $lambda_i$ 的 *几何重数*，$n_i$ 为特征值 $lambda_i$ 的 *代数重数*．

#def[推论2]$r(AA) >= AA "的非零特征值的个数"$

#note[
	*TODO*\ 1:31:33\ https://classroom.zju.edu.cn/livingroom?course_id=56584&sub_id=1036866&room_id=316&tenant_code=112&sub_public=1
]

#def[定理1]（Hamilton-Cayley 定理）设 $AA in PP^(n times n)$，$f(lambda)$ 为其特征多项式，那么 $f(AA) = OO$．

#def[定理2]设 $AA lambda_0 = lambda_0 xi_0$，则

#deft[定理2]1. $(k AA) xi_0 = (k lambda_0) xi_0$；

#deft[定理2]2. $AA^m xi_0 = lambda_0^m xi_0$；

#deft[定理2]3. $g(AA) xi_0 = g(lambda_0) xi_0$．

#deft[定理2]4. 当 $AA$ 可逆时，$AA^(-1) xi_0 = lambda_0^(-1) xi_0$．

= 矩阵的相似对角化

== 矩阵的相似

设 $AA,BB in PP^(n times n)$，若存在可逆矩阵 $bold(P) in PP^(n times n)$，使得 $bold(P)^(-1) AA bold(P) = bold(B)$，则称 $AA$ 与 $BB$ 相似，记作 $AA ssim BB$．

#def[性质1]矩阵的相似具有自反性、对称性、传递性．

#def[性质2]（矩阵相似的必要条件）设 $A ssim B$，则

#deft[性质2]1. $|AA| = |BB|$；

#deft[性质2]2. $r(AA) = r(BB)$；

#deft[性质2]3. $tr(AA) = tr(BB)$；

#deft[性质2]4. 设 $AA,BB$ 都能对角化，$|lambda EE - AA| = |lambda EE - BB|$（反过来也成立）．

#def[性质3]设 $bold(P)^(-1) AA bold(P) = BB$，$lambda$ 为 $AA,BB$ 的特征值，且 $V_lambda^AA =bold(P) V_lambda^BB$．

#prof[
	#def[证明]设 $XX in V_lambda^BB$，则 $BB XX = lambda XX => bold(P)^(-1) AA bold(P) = lambda XX => AA(bold(P) XX) = lambda (bold(P) XX)$．
]

#def[性质4]若 $AA ssim BB$，则 $f(AA) ssim f(BB)$，其中 $f(XX)$ 是任意多项式．

== 矩阵的对角化

设 $AA$ 与 $Lambda = diag(seqn(lambda,n))$ 相似，即存在可逆矩阵 $bold(P)$ 使得
$
bold(P)^(-1) AA bold(P) = Lambda
&<=> AA bold(P) = bold(P) Lambda
<=> AA vecn(alpha,n) = vecn(alpha,n) Lambda\
&<=> mat(AA alpha_1, AA alpha_2, dots.c, AA alpha_n) = mat(lambda alpha_1, lambda alpha_2, dots.c, lambda alpha_n)\
&<=> AA alpha_i = lambda_i alpha_i sp (i=1,2,dots.c,n)\
&<=> AA "中有一组" n "个线性无关的特征向量"
$

故若 $AA$ 能对角化，则：

1. 对角线上的元素为矩阵 $AA$ 的特征值．
2. 矩阵 $bold(P)$ 第 $i$ 列的 $alpha_i$ 是特征值 $lambda_i$ 对应的特征向量．

#def[性质]若 $AA$ 能对角化，则 $f(AA)$ 能对角化，且 $f(AA) = bold(P)^(-1) diag(f(lambda_1),f(lambda_2),dots.c,f(lambda_n)) bold(P)$．

#note[
	#def[总结]如何求 $AA^k$？几种常见的情况：

	1. $AA^2 = lambda EE$：运用乘法结合律．
	
	2. $AA = lambda EE + bold(B)$：运用二项式展开．

	3. $r(AA_(n times n)) = 1$：转换成 $AA = vecn(a,n)^TT vecn(b,n)$，然后利用矩阵乘法的结合律．

	4. $AA$ 能对角化：求出 $AA$ 的特征值和特征向量．
]

== 实对称矩阵的相似对角化

实对称矩阵：$AA = AA^TT in RR^(n times n)$．

#def[性质1]设 $AA = AA^TT in RR^(n times n)$，则 $AA$ 的特征值、特征向量都是实的．

#prof[
	#def[证明]
]

#def[性质2]设 $AA = AA^TT in RR^(n times n)$，则 $AA$ 的 $n$ 个特征向量必正交．

#prof[
	#def[证明]设 $xi_1,xi_2$ 是 $AA$ 的两个特征向量，$lambda_1,lambda_2$ 是其对应的特征根．考察内积 $(AA xi_1,xi_2)$：

	一方面：$(AA xi_1,xi_2) = (lambda_1 xi_1, xi_2) = lambda_1 (xi_1,xi_2)$；

	另一方面：$(AA xi_1, xi_2) = (AA xi_1)^TT xi_2 = xi_1^TT AA^TT xi_2 = (xi_1, AA^TT xi_2) = lambda_2 (xi_1,xi_2)$．

	两式相减得 $(lambda_1-lambda_2) (xi_1,xi_2) = 0$，由于 $lambda_1!=lambda_2$，故 $xi_1,xi_2$ 正交．
]

#def[性质3]设 $AA = AA^TT in RR(n times n)$，则 $AA$ 一定可以对角化且存在正交矩阵 $bold(U)$ 使得
$
bold(U)^TT AA bold(U) = bold(U) AA bold(U)^TT = diag(lambda_1,lambda_2,dots.c,lambda_n)
$

如何求 $bold(U)$？分别对每个特征线性方程组的解向量组做 Schmid 正交单位化．


= 二次型

#def[定义1]一个系数取自数域 $PP$，含有 $n$ 个变量 $seqn(x,n)$ 的二次齐次多项式，
$
f(seqn(x,n)) = sum_(i=1)^n sum_(j=1)^n a_(i j) x_i x_j = XX^TT AA XX
$
称为数域 $PP$ 上的一个 *二次型*。当且仅当 $AA = AA^TT$ 时，将其称为 *二次型矩阵*（若不施加约束则有多种可能）。

#def[性质1]二次型与一个对称矩阵一一对应。

#def[定义2]只含平方项的二次型称为 *标准形*。

#def[定义3]设有两组变量 (I) $seqn(x,n)$ (II) $seqn(y,n)$，则系数 $C = (c_(i j))_(n times n) in PP^(n times n)$中的一组关系 $XX = bold(C) YY$ 称为从变量 (I) 到 (II) 的 *线性替换*。若 $|bold(C)| != 0$，称为 *非退化线性替换*。特别地，若 $bold(C)^TT bold(C) = EE$，则称 $XX = bold(C) YY$ 为 *正交线性替换*。

#def[性质2]正交线性替换向量长度不变。

#prof[
	#def[证明]$display(
		||XX||^2 = XX^TT XX = (bold(C) YY)^TT bold(C) YY = YY^TT (bold(C)^TT bold(C)) YY = YY^TT YY = ||YY||^2
	)$。
]

== 化二次型为标准形

=== 配方法

#def[例1]$f(x1,x2,x3) = x1^2 + 2 x1 x2 + 2 x1 x3 + x2^2 - 2 x2 x3 - x3^2$。（含有 $x_i^2$）

#prof[
	$
	f(x1,x2,x3)
	&= (x1^2+2x1 x2+2x1 x3) + x2^2 - 2x2 x3 - x3^2\
	&= (x1 + x2 + x3)^2 - 4 x2 x3 - 2 x3^2\
	&= (x1+x2+x3)^2 - 2 (x2+x3)^2 + 2x2^2
	$
]

#def[例2]$f(x1,x2,x3) = 2x1 x2 + 2x1 x3 - 6 x2 x3$（不含有 $x_i^2$）

#prof[
	令 $display(cases(x1=y_1+y_2,x2=y_1-y_2,x_3=y_3))$，$XX=bold(C) YY$ 非退化，此时：$f(x1,x2,x3) = 2 y_1^2 - y_2 ^2 - 4 y_1 y_2 + 8 y_2 y_3$，化为第一种情形。
]

#def[定理]任意一个二次型都可以经过非退化的线性替换化成一个标准形。

=== 对称矩阵的原理

设 $f(seqn(x,n)) = XX^TT AA XX = (bold(C) YY)^TT AA (bold(C) YY) = YY^TT (bold(C)^TT AA bold(C)) YY = d_1 y_1^2 + d_2 y_2^2 + dots.c + d_n y_n^2$。

由于 $(bold(C)^TT AA bold(C))^TT = bold(C)^TT AA bold(C)$，由性质 1 可得 $bold(C)^TT AA bold(C) = diag(seqn(d,n))$。

#def[定理]$forall AA = AA^TT in PP^(n times n)$，一定存在可逆矩阵 $bold(C) in PP^(n times n)$ 使得 $bold(C)^TT AA bold(C) = diag(seqn(d,n))$ 为对角阵。 

== 合同

设 $AA,BB in PP^(n times n)$，若有可逆矩阵 $bold(C) in PP^(n times n)$，使得 $bold(C)^TT AA bold(C) = BB$，则称 $AA,BB$ 在数域 $PP$ 上合同。

#def[性质1]合同具有自反性、对称性、传递性。

#def[性质2]两个合同的矩阵有三个不变：

#deft[性质2]1. 保持秩不变：$r(BB) = r(bold(P)^TT AA bold(P)) = r(AA)$。

#deft[性质2]2. 保持对称性不变：$BB^TT = (bold(P)^TT AA bold(P))^TT = bold(P)^TT AA^TT bold(P)$。

#deft[性质2]3. 保持正定性不变。

== 规范形

=== 二次型的秩

二次型经过非退化线性变换化成标准型后，非平方项的项数相同，将其称为 *二次型的秩*。

#def[定理1]二次型 $f(seqn(x,n)) = display(sum_(i=1)^n sum_(j=i)^n a_(i j) x_i x_j) = XX^TT AA XX$，则二次型的秩等于 $AA$ 的秩。（可将 $AA$ 化为对角矩阵证明）

=== 复数域上的规范形

设复数域上二次型 $f(seqn(x,n))$ 的秩为 $r$，设 $bold(C)^TT AA bold(C) = diag(seqn(d,r),0,dots.c,0)$，进行线性变换 $YY = bold(C) XX$ 得：
$
f(seqn(x,n))
&= d_1 y_1^2 + d_2 y_2^2 + dots.c + d_r y_r^2 + 0 dot y_(r+1)^2 + dots.c + 0 dot y_n^2\
&= (sqrt(d_1) y_1)^2 + (sqrt(d_2) y_2)^2 + dots.c + (sqrt(d_r) y_r)^2\
&= z_1^2 + z_2^2 + dots.c + z_r^2
$


这里进行了非退化线性变换为 $bold(Z) = diag(sqrt(d_1),sqrt(d_2),dots.c,sqrt(d_r),1,dots.c,1) bold(Y)$，将得到的结果称为 *二次型在复数域上的规范形*。

#def[定理2]1. 二次型语言：任意一个复二次型一定可以经过非退化线性变化化为规范形，规范形由二次型的秩唯一确定。

#deft[定理2]2. 矩阵语言：设 $AA = AA^TT in CC^(n times n)$，设 $r(AA) = r$，则 $AA$ 必与 $display(mat(EE_r,;,OO_(n-r)))_(n times n)$ 合同。

#def[推论]对称矩阵 $AA,BB$ 在复数域上合同 $<=>$ $r(AA) = r(BB)$。

=== 实数域上的二次型

$
f(seqn(x,n))
&= d_1 y_1^2 + d_2 y_2^2 + dots.c + d_p y_p^2 + -d_(p+1) y_(p+1)^2 - dots.c - d_r y_r^2 + 0 dot y_(r+1)^2 + dots.c + 0 dot y_n^2\
&= (sqrt(d_1) y_1)^2 + (sqrt(d_2) y_2)^2 + dots.c + (sqrt(d_p) y_p)^2 -(sqrt(d_(p+1)) y_(p+1))^2 - dots.c - (sqrt(d_r) y_r)^2\
&= z_1^2 + z_2^2 + dots.c + z_p^2 - z_(p+1)^2 - dots.c - z_r^2
$
这里同样进行了非退化线性变换 $ZZ = diag(sqrt(d_1),sqrt(d_2),dots.c,sqrt(d_r),1,dots.c,1) bold(CC) XX$，得到的结果称为 *二次型在实数域上的规范形*。

- 正平方项的项数 $p$ 称为 *二次型的正惯性指数*；
- 负平方项的项数 $r-p$ 称为 *二次型的负惯性指数*；
- $p-(r-p) = 2p-r$ 称为 *二次型的符号差*。

该二次型的正（负）惯性指数、符号差也称为实对称矩阵 $AA$ 的正（负）惯性指数、符号差。

#def[定理]（惯性定律）

#deft[定理]1. 二次型语言：任意一个实二次型一定可以经过非退化线性变换化为规范形，规范形是唯一的，由二次型的秩和正（负）惯性指数决定。

#deft[定理]2. 矩阵语言：$n$ 阶实对称矩阵 $AA$ 与对角矩阵 $diag(d_1,d_2,dots.c,d_n)$ 合同时，$d_i$ 中不等于零的个数（即 $r(AA)$）和大（小）于零的个数（$AA$ 的正（负）惯性指数）都是唯一的。即设实对称矩阵 $AA_(n times n)$ 的秩为 $r$，正惯性指数为 $p$，则 $AA$ 与矩阵 $display(mat(EE_p,,;,-EE_(r-p),;,,OO_(n-r)))$ 合同。

特别地，对于实对称矩阵，一定存在正交矩阵 $bold(U)$ 使得 $bold(U)^(-1) AA bold(U) = bold(U)^TT AA bold(U) = diag(seqn(lambda,n))$，即 $AA$ 与对角矩阵既相似又合同。