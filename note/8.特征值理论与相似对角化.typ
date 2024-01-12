#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Note #8",
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

设 $AA in PP^(n times n)$，如有数 $lambda_0 in PP$ 及列向量 $xi in PP^n sp (xi != theta)$ 使得 $AA xi = lambda_0 xi$，则称 $lambda_0$ 是 $AA$ 的一个 *特征值*，非零列向量 $xi$ 为 $AA$ 的一个 *特征向量*．

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

== 特征子空间

对特征值 $lambda_i$，其对应的线性方程组（称为 *特征线性方程组*）
$
(lambda_i EE - AA) XX = OO
$
的一个基础解系为 $xi_(i_1),xi_(i_2),dots.c,xi_(i_(r_i))$，则 $lambda_i$ 对应的所有特征向量可被表示为：
$
k_(i_1) xi_(i_1) + k_(i_2) xi_(i_2) + dots.c + k_(i_(r_i)) xi_(i_(r_i)) quad (k_(i j) "不同时为" 0)
$
记
$
V_(lambda_i) = {AA "的属于" lambda_i "的全体特征向量"} union {theta}
$
为特征值 $lambda_i$ 的 *特征子空间*．

== 特征值和特征向量的求法

1. 根据 $f(lambda) = (lambda-lambda_1)^(n_1) (lambda-lambda_2)^(n_2) dots.c (lambda-lambda_s)^(n_s) = 0$，去掉不在 $PP$ 里的根，得到 $AA$ 的所有特征值 $lambda_1,lambda_2,dots.c,lambda_s$．（$n_i$ 为每个特征值的重数，那么 $n_1+n_2+dots.c+n_s=n$）（特征值在 $CC$ 上，但不一定在 $PP$ 上）

2. 对于每个 $lambda_i$，求出其特征线行线性方程组的基础解系．

#note[
	#def[总结]特殊矩阵的特征值和特征向量求法：

	1. $r(AA) = 1$：说明 $AA = alpha beta^TT$，则 $AA alpha = (alpha beta^TT) alpha = (beta^TT alpha) alpha$，这里 $beta^TT alpha$ 是一个特征根．

	2. $AA$ 的每行元素和为 $c$：说明 $AA display(mat(1,1,dots.c,1)) = c display(mat(1,1,dots.c,1))$，这里 $c$ 是一个特征根．
]


== 常用性质及结论

#def[性质1]1. $display(sum_(i=1)^n a_(i i) = sum_(i=1)^n lambda_i = tr(AA))$．

#deft[性质1]2. $display(product_(i=1)^n lambda_i = |AA|)$．

#def[推论1]$AA "可逆" <=> AA "的所有特征值都不为零"$．

#note[常利用这两条性质来简化求解矩阵的特征多项式．]

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

#def[性质5]设 $AA$ 的某特征向量 $x$ 对应的特征值为 $lambda$，则满足（反过来不成立）：
#table(
  columns: 7,
  inset: 10pt,
  align: center,
	[$AA$], [$a AA + b EE$], [$f(AA)$], [$AA^(-1)$], [$AA^*$], [$AA^TT$], [$bold(P)^(-1) AA bold(P)$],
	[*特征值*], [$a lambda + b$], [$f(lambda)$], [$1/lambda$], [$1/lambda abs(AA)$], [$lambda$], [$lambda$],
	[*特征向量*], [$x$], [$x$], [$x$], [$x$], [无关系], [$bold(P)^(-1) x$], 
)

#def[推论4.1]$r(AA) >= AA "的非零特征值个数"$．

#prof[
	#def[证明]由性质4可得 $n-r(AA) <= n_0$，其中 $n_0$ 是 $0$ 作为特征根的重数，故 $r(AA) >= n - n_0$．
]

#def[推论4.2]$r(AA) >= AA "的不同特征值的个数"$．

#def[定理1]（Hamilton-Cayley 定理）设 $AA in PP^(n times n)$，$f(lambda)$ 为其特征多项式，那么 $f(AA) = OO$．

#def[定理2]设 $AA lambda_0 = lambda_0 xi_0$，$g(x)$ 是多项式（若 $AA$ 可逆，则还可包含逆元），则 $g(AA) xi_0 = g(lambda_0) xi_0$．进一步地，$AA$ 的特征子空间与 $g(AA)$ 相同．

#def[结论1.1]幂等矩阵必有特征值且为 $1$ 或 $0$．

#def[结论1.2]幂零矩阵必有特征值且必为 $0$．

#def[结论2]设 $AA$ 是正交矩阵，则若 $AA$ 有特征值，则特征值必为 $1$ 或 $-1$．

#def[结论3]设 $AA in PP^(s times n),sp BB in PP^(n times s)$，则

#deft[结论3]1. $AA BB$ 与 $BB AA$ 有相同的非零特征值且重数相同．

#deft[结论3]2. 若 $alpha$ 是 $AA BB$ 属于 $lambda_0$ 的一个特征向量（$lambda_0 != 0$），则 $BB alpha$ 是 $BB AA$ 属于 $lambda_0$ 的一个特征向量．

#def[结论4]设 $AA in CC^(n times n)$ 且 $a_(i j) in RR$，则当 $lambda_0$ 是 $AA$ 的一个特征值且 $alpha$ 是 $lambda_0$ 的一个特征向量时，$overline(lambda_0)$ 也是 $AA$ 的一个特征值，$overline(alpha)$ 也是 $overline(lambda_0)$ 的一个特征向量．

#def[结论5]若 $AA$ 的每行元素之和为 $k$，则 $k$ 是 $AA$ 的一个特征值，$display(mat(1,1,dots.c,1))$ 是 $AA$ 的一个特征向量．

= 矩阵的相似对角化

== 矩阵的相似

设 $AA,BB in PP^(n times n)$，若存在可逆矩阵 $bold(P) in PP^(n times n)$，使得 $bold(P)^(-1) AA bold(P) = bold(B)$，则称 $AA$ 与 $BB$ 相似，记作 $AA ssim BB$．

#def[性质1]矩阵的相似具有自反性、对称性、传递性．

#def[性质2]（矩阵相似的必要条件）设 $A ssim B$，则

#deft[性质2]1. $|AA| = |BB|$；

#deft[性质2]2. $r(AA) = r(BB)$；

#deft[性质2]3. $tr(AA) = tr(BB)$；

#deft[性质2]4. 设 $AA,BB$ 都能对角化，$|lambda EE - AA| = |lambda EE - BB|$（反过来也成立）．

#deft[性质2]5. 若 $AA$ 不可逆，则 $BB$ 也不可逆；若 $AA$ 可逆，则 $BB$ 也可逆，且 $AA^(-1) ssim BB^(-1)$．

#def[性质3]设 $bold(P)^(-1) AA bold(P) = BB$，$lambda$ 为 $AA,BB$ 的特征值，且 $V_lambda^AA =bold(P) V_lambda^BB$．

#prof[
	#def[证明]设 $XX in V_lambda^BB$，则 $BB XX = lambda XX => bold(P)^(-1) AA bold(P) XX = lambda XX => AA(bold(P) XX) = lambda (bold(P) XX)$．
]

#def[性质4]若 $AA ssim BB$，则 $f(AA) ssim f(BB)$，其中 $f(XX)$ 是任意多项式．

#def[结论1.1]与幂等矩阵相似的矩阵也是幂等矩阵．（幂等矩阵：$AA^2 = AA$）

#def[结论1.2]与幂零矩阵相似的矩阵也是幂零矩阵．（幂零矩阵：$exists p in NN_+$，$st AA^p = OO$）

#def[结论1.3]与周期矩阵相似的矩阵也是周期矩阵且周期相同．（周期矩阵：$exists m in NN_+, sp st AA^m = EE$）

#def[结论2]若与 $AA$ 相似的矩阵有且只有一个，则 $AA$ 必是一个数量矩阵．

#def[结论3]若 $AA$ 可逆，则 $AA BB ssim BB AA$．

== 相似对角化

设 $AA$ 与对角矩阵 $Lambda = diag(seqn(lambda,n))$ 相似，则称 $AA$ 可对角化．即存在可逆矩阵 $bold(P)$ 使得
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

#def[定理]（矩阵可对角化的充要条件）$AA$ 可对角化

#deft[定理]$<==>$ $AA$ 与 $PP$ 上的某个对角矩阵相似。

#deft[定理]$<==>$ $AA$ 在 $PP^n$ 中有 $n$ 个线性无关的特征向量 $seqn(alpha,n)$．

#deft[定理]$<==>$ $AA$ 的不同特征值的特征解空间的维数之和为 $n$．

#deft[定理]$<==>$ $AA$ 的每个特征值的代数重数 $=$ 几何重数．

== 相似对角化的基本性质

#def[性质1]若 $AA$ 能对角化，则 $f(AA)$ 能对角化，且 $f(AA) = bold(P)^(-1) diag(f(lambda_1),f(lambda_2),dots.c,f(lambda_n)) bold(P)$．

#note[
	#def[总结]如何求 $AA^k$？几种常见的情况：

	1. $AA^2 = lambda EE$：运用乘法结合律．
	
	2. $AA = lambda EE + bold(B)$：运用二项式展开．

	3. $r(AA_(n times n)) = 1$：转换成 $AA = vecn(a,n)^TT vecn(b,n)$，然后利用矩阵乘法的结合律．

	4. $AA$ 能对角化：求出 $AA$ 的特征值和特征向量．
]

#def[性质2]若 $AA$ 可逆且 $AA$ 可对角化，则 $AA^(-1)$、$AA^*$ 均可对角化．

== 相似对角化的常用结论

#def[结论1.1]幂等矩阵必可对角化．

#def[结论1.2]幂零矩阵若非零，则必不可对角化．

#prof[
	#def[证明]由于 $AA!=OO$，故 $r(AA)>=1$，故 $AA$ 的唯一特征解空间 $dim W_0<=n-1$，不可相似对角化。
]

#def[结论2]幂等矩阵的迹等于它的秩 $==>$ $seqn(AA,s) in PP^n$，$display(sum_(i=1)^n AA_i = EE)$ 且 $AA_i sp (1<=i<=n)$ 是幂等矩阵，则 $display(sum_(i=1)^n r(AA_i) = n)$．

#prof[
	#def[证明]由幂等矩阵的特征值只有 $0$ 或 $1$，且相似对角化不改变矩阵的秩，故幂等矩阵的秩与迹相同。再考虑将等式两边同时取 $tr$ 并相加，可以得到结论。
]

#def[结论3]设 $AA in PP^(n times n)$，若 $forall beta in PP^n$，$beta$ 均为 $AA$ 的特征向量，则 $AA$ 必是一个数量矩阵．

#def[结论4]设 $AA$ 是 $n$ 阶上三角矩阵，则

#deft[结论4]1. 若 $a_11,a_22,dots.c,a_(n n)$ 两两不等，则 $AA$ 可对角化．

#deft[结论4]2. 若 $a_11=a_22=dots.c=a_(n n)$ 且 $AA$ 不是对角矩阵，则 $AA$ 不可对角化．

== 实对称矩阵的特性

实对称矩阵：$AA = AA^TT in RR^(n times n)$．

#def[性质1]设 $AA = AA^TT in RR^(n times n)$，则 $AA$ 的所有特征值、特征向量都是实的．

#prof[
	#def[证明]设 $AA = AA^TT in RR^(n times n)$，若 $lambda$ 为 $AA$ 在 $CC$ 中的一个特征值，$xi = vecn(a,n)^TT in CC^n$ 为 $AA$ 的属于 $lambda$ 的特征向量（$xi!=theta$），令 $abs(xi) = display(sum_(i=1)^n abs(a_i)^2)$（这里的 $abs(sp dot sp)$ 表示复数的模长），则：
	$
	overline(xi) AA xi
	= lambda overline(xi)^TT xi
	= lambda |xi|^2\
	overline(xi) AA xi
	= (AA^TT overline(xi))^TT xi
	= (AA overline(xi))^TT xi
	= (overline(AA xi))^TT xi
	= (overline(lambda xi))^TT xi
	= overline(lambda) abs(xi)^2\
	$
  由 $xi$ 是非零向量知 $abs(xi)^2 != 0$，故 $lambda=overline(lambda)$，即 $lambda$ 必须是实数。
]

#def[性质2]设 $AA = AA^TT in RR^(n times n)$，则 $AA$ 的属于不同特征根的特征向量必正交．

#prof[
	#def[证明]设 $xi_1,xi_2$ 是 $AA$ 的两个特征向量，$lambda_1,lambda_2$ 是其对应的特征根．考察内积 $(AA xi_1,xi_2)$：

	一方面：$(AA xi_1,xi_2) = (lambda_1 xi_1, xi_2) = lambda_1 (xi_1,xi_2)$；

	另一方面：$(AA xi_1, xi_2) = (AA xi_1)^TT xi_2 = xi_1^TT AA^TT xi_2 = (xi_1, AA^TT xi_2) = lambda_2 (xi_1,xi_2)$．

	两式相减得 $(lambda_1-lambda_2) (xi_1,xi_2) = 0$，由于 $lambda_1!=lambda_2$，故 $xi_1,xi_2$ 正交．
]

#def[性质3]设 $AA in AA^TT in RR^(n times n)$，则 $AA$ 任一特征值的代数重数 $t$ 一定等于几何重数 $k$．

#def[定理]设 $AA = AA^TT in RR^(n times n)$，则 $AA$ 一定可相似对角化．且存在正交矩阵 $bold(U)$ 使得
$
bold(U)^TT AA bold(U) = bold(U) AA bold(U)^TT = diag(lambda_1,lambda_2,dots.c,lambda_n)
$

#note[
	#def[思考]如何求 $bold(U)$？

	可以分别对每个特征线性方程组的解向量组做 Schmid 正交单位化．
]

#def[结论1]若实矩阵 $AA$ 正交相似于对角阵 $bold(D)$，则 $AA$ 必对称．

#def[结论2]两个实对称矩阵正交相似的充要条件是它们相似．