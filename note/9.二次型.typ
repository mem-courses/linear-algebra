#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra #9",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "December 29, 2023",
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

= 二次型

#def[定义1]一个系数取自数域 $PP$，含有 $n$ 个变量 $seqn(x,n)$ 的二次齐次多项式，
$
f(seqn(x,n)) = sum_(i=1)^n sum_(j=1)^n a_(i j) x_i x_j = XX^TT AA XX
$
称为数域 $PP$ 上的一个 *二次型*．当且仅当 $AA = AA^TT$ 时，将其称为 *二次型矩阵*（若不施加约束则有多种可能）．

#def[性质1]二次型与一个对称矩阵一一对应．

#def[定义2]只含平方项的二次型称为 *标准形*．

#def[定义3]设有两组变量 (I) $seqn(x,n)$ (II) $seqn(y,n)$，则系数 $C = (c_(i j))_(n times n) in PP^(n times n)$中的一组关系 $XX = bold(C) YY$ 称为从变量 (I) 到 (II) 的 *线性替换*．若 $|bold(C)| != 0$，称为 *非退化线性替换*．特别地，若 $bold(C)^TT bold(C) = EE$（即 $bold(C)$ 的 $n$ 个列向量构成一组标准正交基），则称 $XX = bold(C) YY$ 为 *正交线性替换*．

#def[性质2]正交线性替换向量长度不变．进一步地，对坐标应用正交替换，空间几何体保持形状不变．

#prof[
	#def[证明]
	1. 证明长度不变：$display(
		||XX||^2 = XX^TT XX = (bold(C) YY)^TT bold(C) YY = YY^TT (bold(C)^TT bold(C)) YY = YY^TT YY = ||YY||^2
	)$．

	2. 证明角度不变：$display(
		(alpha,beta) = XX_1^TT XX_2 = (bold(U) YY_1)^TT (bold(U) YY_2) = YY_1^TT (bold(U)^TT bold(U)) YY_2 = YY_1^TT YY_2
	)$．
]

#note[
	#def[应用]可用来求二次曲面（线）的标准方程．
]

== 化二次型为标准形

=== 配方法

#def[例1]$f(x1,x2,x3) = x1^2 + 2 x1 x2 + 2 x1 x3 + x2^2 - 2 x2 x3 - x3^2$．（含有 $x_i^2$）

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
	令 $display(cases(x1=y_1+y_2,x2=y_1-y_2,x_3=y_3))$，$XX=bold(C) YY$ 非退化，此时：$f(x1,x2,x3) = 2 y_1^2 - y_2 ^2 - 4 y_1 y_2 + 8 y_2 y_3$，化为第一种情形．
]

#def[定理]任意一个二次型都可以经过非退化的线性替换化成一个标准形．

=== 利用实对称矩阵的性质

根据实对称矩阵的性质，一定存在可逆矩阵 $bold(C) in PP^(n times n)$ 使 $bold(C)^(-1) AA bold(C) = bold(C)^TT AA bold(C) = diag(seqn(lambda,n))$．

设 $f(seqn(x,n)) = XX^TT AA XX$，对其应用非退化线性变换 $XX = bold(C) YY$ 得
$
f(seqn(x,n)) = (bold(C) YY)^TT AA (bold(C) YY) = YY^TT (bold(C)^TT AA bold(C)) YY = lambda_1 y_1^2 + lambda_2 y_2^2 + dots.c + lambda_n y_n^2
$

由于 $(bold(C)^TT AA bold(C))^TT = bold(C)^TT AA bold(C)$，由性质1得 $bold(C)^TT AA bold(C)$ 即所求的标准形．


== 合同

设 $AA,BB in PP^(n times n)$，若有可逆矩阵 $bold(C) in PP^(n times n)$，使得 $bold(C)^TT AA bold(C) = BB$，则称 $AA,BB$ 在数域 $PP$ 上合同．

#def[性质1]合同具有自反性、对称性、传递性．

#def[性质2]两个合同的矩阵有三个不变：

#deft[性质2]1. 保持秩不变：$r(BB) = r(bold(P)^TT AA bold(P)) = r(AA)$．

#deft[性质2]2. 保持对称性不变：$BB^TT = (bold(P)^TT AA bold(P))^TT = bold(P)^TT AA^TT bold(P)$．

#deft[性质2]3. 保持正定性不变．

== 规范形

=== 二次型的秩

二次型经过非退化线性变换化成标准型后，非平方项的项数相同，将其称为 *二次型的秩*．

#def[定理1]二次型 $f(seqn(x,n)) = display(sum_(i=1)^n sum_(j=i)^n a_(i j) x_i x_j) = XX^TT AA XX$，则二次型的秩等于 $AA$ 的秩．（可将 $AA$ 化为对角矩阵证明）

=== 复数域上的规范形

设复数域上二次型 $f(seqn(x,n))$ 的秩为 $r$，设 $bold(C)^TT AA bold(C) = diag(seqn(d,r),0,dots.c,0)$，进行线性变换 $YY = bold(C) XX$ 得：
$
f(seqn(x,n))
&= d_1 y_1^2 + d_2 y_2^2 + dots.c + d_r y_r^2 + 0 dot y_(r+1)^2 + dots.c + 0 dot y_n^2\
&= (sqrt(d_1) y_1)^2 + (sqrt(d_2) y_2)^2 + dots.c + (sqrt(d_r) y_r)^2\
&= z_1^2 + z_2^2 + dots.c + z_r^2
$


这里进行了非退化线性变换为 $bold(Z) = diag(sqrt(d_1),sqrt(d_2),dots.c,sqrt(d_r),1,dots.c,1) bold(Y)$，将得到的结果称为 *二次型在复数域上的规范形*．

#def[定理2]1. 二次型语言：任意一个复二次型一定可以经过非退化线性变化化为规范形，规范形由二次型的秩唯一确定．

#deft[定理2]2. 矩阵语言：设 $AA = AA^TT in CC^(n times n)$，设 $r(AA) = r$，则 $AA$ 必与 $display(mat(EE_r,;,OO_(n-r)))_(n times n)$ 合同．

#def[推论]对称矩阵 $AA,BB$ 在复数域上合同 $<=>$ $r(AA) = r(BB)$．

=== 实数域上的二次型

$
f(seqn(x,n))
&= d_1 y_1^2 + d_2 y_2^2 + dots.c + d_p y_p^2 + -d_(p+1) y_(p+1)^2 - dots.c - d_r y_r^2 + 0 dot y_(r+1)^2 + dots.c + 0 dot y_n^2\
&= (sqrt(d_1) y_1)^2 + (sqrt(d_2) y_2)^2 + dots.c + (sqrt(d_p) y_p)^2 -(sqrt(d_(p+1)) y_(p+1))^2 - dots.c - (sqrt(d_r) y_r)^2\
&= z_1^2 + z_2^2 + dots.c + z_p^2 - z_(p+1)^2 - dots.c - z_r^2
$
这里同样进行了非退化线性变换 $ZZ = diag(sqrt(d_1),sqrt(d_2),dots.c,sqrt(d_r),1,dots.c,1) bold(CC) XX$，得到的结果称为 *二次型在实数域上的规范形*．

- 正平方项的项数 $p$ 称为 *二次型的正惯性指数*；
- 负平方项的项数 $r-p$ 称为 *二次型的负惯性指数*；
- $p-(r-p) = 2p-r$ 称为 *二次型的符号差*．

该二次型的正（负）惯性指数、符号差也称为实对称矩阵 $AA$ 的正（负）惯性指数、符号差．

#def[定理]（惯性定律）

#deft[定理]1. 二次型语言：任意一个实二次型一定可以经过非退化线性变换化为规范形，规范形是唯一的，由二次型的秩和正（负）惯性指数决定．

#deft[定理]2. 矩阵语言：$n$ 阶实对称矩阵 $AA$ 与对角矩阵 $diag(d_1,d_2,dots.c,d_n)$ 合同时，$d_i$ 中不等于零的个数（即 $r(AA)$）和大（小）于零的个数（$AA$ 的正（负）惯性指数）都是唯一的．即设实对称矩阵 $AA_(n times n)$ 的秩为 $r$，正惯性指数为 $p$，则 $AA$ 与矩阵 $display(mat(EE_p,,;,-EE_(r-p),;,,OO_(n-r)))$ 合同．

特别地，对于实对称矩阵，一定存在正交矩阵 $bold(U)$ 使得 $bold(U)^(-1) AA bold(U) = bold(U)^TT AA bold(U) = diag(seqn(lambda,n))$，即 $AA$ 与对角矩阵既相似又合同．

== 二次型的正定性

设 $AA$ 为 $n$ 阶实对称矩阵，若
$
XX^TT AA XX >= 0 sp (<=0) ,quad forall XX != OO, XX in RR^n
$
则称实二次型 $XX^TT AA XX$ 和矩阵 $AA$ 是 *半正定*（*半负定*）的，若不等号严格成立，则称其是 *正定*（*负定*）的．

=== 正定矩阵的性质

#def[定理1]设 $AA$ 为 $n$ 阶实对称矩阵，则如下结论等价（成立一个则其余全部成立）：

1. 实二次型 $f(seqn(x,n)) = XX^TT AA XX$ 正定（或者说 $AA$ 正定）．

2. $f(seqn(x,n))$ 的正惯性系数等于 $n$．

3. $AA$ 的所有特征值恒正．

4. $AA$ 与单位矩阵合同．

5. 存在 $n$ 阶可逆实矩阵 $BB$，使得 $AA = BB^TT BB$．

#def[定理2]正定（负定）矩阵的判定：

1. $n$ 阶实对称矩阵 $AA$ 正定 $<==>$ $AA$ 的所有 $k$ 阶（$1<=k<=n$）顺序主子式恒正．

2. $n$ 阶实对称矩阵 $AA$ 负定 $<==>$ $AA$ 的所有 $k$ 阶（$1<=k<=n$）顺序主子式与 $(-1)^k$ 的符号相同．

=== 半正定矩阵的性质

#def[定理3]设 $AA$ 为 $n$ 阶实对称矩阵且 $r=r(AA)$，则如下结论等价：

1. 实二次型 $f(seqn(x,n)) = XX^TT AA XX$ 半正定（或者说 $AA$ 半正定）．

2. $f(seqn(x,n))$ 的负惯性系数等于 $0$（或者说正惯性系数等于 $r$）．

3. $AA$ 的所有特征值非负．

4. $AA$ 与其相抵标准形合同．

5. 存在 $n$ 阶实矩阵 $BB$，使得 $AA = BB^TT BB$．

#def[定理4]半正定（半负定）矩阵的判定：

1. $n$ 阶实对称矩阵 $AA$ 半正定 $<==>$ $AA$ 的所有 $k$ 阶（$1<=k<=n$）顺序主子式恒非负．

2. $n$ 阶实对称矩阵 $AA$ 半负定 $<==>$ $AA$ 的所有 $k$ 阶（$1<=k<=n$）顺序主子式为零或与 $(-1)^k$ 的符号相同．