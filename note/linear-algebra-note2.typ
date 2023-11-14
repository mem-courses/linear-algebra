#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Note #2",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "November 13, 2023",
)

#let AA = math.bold("A")
#let BB = math.bold("B")
#let CC = math.bold("C")
#let DD = math.bold("D")
#let EE = math.bold("E")
#let XX = math.bold("X")
#let II = math.bold("I")
#let OO = math.bold("O")
#let TT = math.upright("T")

= 矩阵的运算

== 数乘

矩阵数乘的四条定理：

#box(height: 27pt)[
  #columns(2)[
    1. $k(AA + BB) = k AA + k BB$；
    2. $(k+t) AA = k AA + t AA$；
    3. $(k t) AA = k(t AA)$；
    4. $1 dot AA = AA$。
  ]
]

== 加法

矩阵加法的四条定理：

#box(height: 27pt)[
  #columns(2)[
    1. 加法交换律：$AA + BB = BB + AA$；
    2. 加法结合律：$(AA + BB) + CC = AA + (BB + CC)$；
    3. 零矩阵：$OO + AA = AA + OO = AA$；
    4. 负矩阵：$AA + (-AA) = OO$。
  ]
]

== 乘法

只有第一个矩阵的 *列数* 等于第二个矩阵的 *行数* 时，两个矩阵才可以相乘。结果矩阵的第 $i$ 行第 $j$ 个元素等于第一个矩阵的第 $i$ 行与第二个矩阵的第 $j$ 列的点积。

1. 不满足交换律：一般地，$AA BB != BB AA$（如果 $AA BB = BB AA$，则称 $AA$ 与 $BB$ 是可交换的）；
2. 不满足消去律：$AA BB = AA CC arrow.r.double.not BB = CC$；$AA BB = OO arrow.r.double.not AA = OO or BB = OO$（如果 $AA$ 可逆，那么消去律满足）；
3. 满足结合律：$(AA BB) CC = AA (BB CC)$；
4. 满足分配律：$AA (BB + CC) = AA BB + AA CC$，$(BB + CC) AA = BB AA + CC AA$，$k(AA BB) = (k AA)BB = AA (k BB)$。

#warn[
  - $(AA + BB)(AA - BB) = AA^2 - AA BB + BB AA - BB^2 != AA^2 - BB^2$
  - $(AA BB)^2 = AA (BB AA) BB != AA^2 BB^2$
]

#def[性质1]设 $AA,BB in PP^(n times n)$，则 $|AA BB| = |AA| dot |BB| = |BB AA|$。（注意：$AA$ 和 $BB$ 都是方阵）

#prof[
  #set math.mat(delim: "|")
  #def[证明]记 $|DD| = display(mat(AA, OO; -EE, BB)) = |AA| |BB|$。

  另一方面，对 $DD$ 做初等行变换 $display(C_(n+j)+sum_(i=1)^n b_(i j)C_i\,sp j=1\,2\,dots.c\,n)$，可得 $|DD|=display(mat(AA,CC;-EE,OO))$，其中 $CC=AA BB$。那么有 $|DD| = (-1)^(n^2) |CC| |-EE| = (-1)^(n(n+1)) |CC| = |AA BB|$。

  因此证得 $|AA BB| = |AA| |BB|$。
]

#def[性质2]设 $AA in PP^(n times n), k in PP$，则 $|k AA| = k^n |AA|$。

=== 可交换矩阵

1. 与任何矩阵可交换的矩阵一定是数量矩阵

2. 与对角线上元素互不相同的对角矩阵可交换的矩阵一定是对角矩阵

== 转置

#def[性质1]当 $AA$ 为方阵时，$|AA| = |AA^TT|$；

#def[性质2]$(AA BB)^TT = BB^TT AA^TT$。

=== 对称矩阵与反对称矩阵

设 $AA = (a_(i j))_(n times n)$（注意：$AA$ 必须是方阵），那么：

- 如果 $a_(i j) = a_(j i) <=> AA=AA^TT$，则称 $AA$ 为 *对称矩阵*；

- 如果 $a_(i j) = -a_(j i) <=> AA=-AA^TT$，则称 $AA$ 为 *反对称矩阵*。


= 矩阵的逆

对于 $n$ 阶方阵 $AA$，若存在 $n$ 阶方阵 $BB$ 使得 $AA BB = BB AA = EE$，则称 $AA$ *可逆*，且 $BB$ 是 $AA$ 的 *逆矩阵*。用 $AA^(-1)$ 表示 $AA$ 的逆矩阵。

== 伴随矩阵

$n$ 阶矩阵 $AA$ 的各个元素的代数余子式 $A_(i j)$ 所构成的如下矩阵：$ AA^* = mat(A_(11),A_(21),dots.c,A_(n 1);A_(12),A_(22),dots.c,A_(n 2);dots.v,dots.v,,dots.v;A_(1 n),A_(2 n),dots.c,A_(n n)) $称为 $AA$ 的伴随矩阵。（注意：原先第 $i$ 行各元素的代数余子式在伴随矩阵的第 $j$ 列）

#def[引理]$AA dot AA^* = AA^* dot AA = |AA| dot EE$

#prof[
  可以通过 $sum_(i=1)^n a_(j i) A_(k i) = |AA| [j=k]$ 来证明。
]

#def[性质]

1. $AA$ 可逆 $<=>$ $AA^*$ 可逆；

2. $|AA^*| = |AA|^(n-1)$（由 1. 得无论 $AA$ 是否可逆都成立）；

3. $(AA^*)^* = |AA|^(n-2) AA$

4. $(k AA)^* = k^(n-1) AA^*$

5. $(AA BB)^* = BB^* AA^*$；

6. $r(AA^*) = display(cases(
      n\,quad& r(AA) = n,
      1\,quad& r(AA) = n-1,
      0\,quad& r(AA) < n-1,
    ))$。

== 性质

#def[性质1]$AA$ 可逆 $<=>$ $|AA| != 0$ $<=>$ $AA$ 满秩 $<=>$ 以 $AA$ 为系数矩阵的线性方程组有唯一解。

#def[性质2]如果 $AA$ 可逆，则 $AA^(-1)$ 必唯一。

#def[性质3]当 $AA$ 可逆时，$AA^(-1) = display(AA^* / |AA|)$。

#prof[
  *必要性*：设 $AA$ 可逆，两边取行列式得到$ |AA||BB| = |BB||AA| = |EE| = 1 => |AA|!=0 $
  *充分性*：设 $|AA|!=0$，由引理 $AA dot AA^* = AA^* dot AA = |AA| dot EE$ 两边同除 $|AA|$ 得到$ AA dot (AA^*)/(|AA|) = (AA^*)/(|AA|) dot AA = EE $
  
  比较定义可知，$AA$ 可逆，那么 $AA^(-1) = display(frac(AA^*,|AA|))$。
]

#def[性质4]设 $AA$ 可逆，那么：

#box(height: 30pt)[
  #columns(2)[
    1. $AA^(-1)$ 可逆，且 $(AA^(-1))^(-1) = AA$；
    2. $k!=0$ 时，$k AA$ 可逆，且 $(k AA)^(-1) = display(1/k) AA^(-1)$；
    3. $AA^TT$ 可逆，且 $(AA^TT)^(-1) = (AA^(-1))^TT$；
    4. $|AA^(-1)| = |AA|^(-1)$。
  ]
]

#def[性质5]若 $AA,BB$ 都是 $n$ 阶可逆矩阵，且 $AA BB$ 可逆，那么 $(AA BB)^(-1) = BB^(-1) AA^(-1)$。

#def[性质6]若对角矩阵 $bold(Lambda) = op("diag")(lambda_1,lambda_2,dots.c,lambda_n)$ 可逆，那么 $bold(Lambda)^(-1) = op("diag")(lambda_1^(-1),lambda_2^(-1),dots.c,lambda_n^(-1))$。

#def[性质7]（Cramer 法则）对于线性方程组 $AA bold(X) = bold(beta)$，若 $AA$ 为 $n$ 阶方阵，且 $D = |AA| != 0$，有唯一解：
  #set math.mat(delim: "(")
  $
  bold(X)
  = mat(x_1;x_2;dots.v;x_n)
  = AA^(-1) bold(beta)
  = frac(AA^*,|AA|) bold(beta)
  = frac(1,|AA|) mat(
    AA_11,AA_21,dots.c,AA_(n 1);
    AA_12,AA_22,dots.c,AA_(n 2);
    dots.v,dots.v,,dots.v;
    AA_(1 n),AA_(2 n),dots.c,AA_(n n);
  ) mat(b_1;b_2;dots.v;b_n)
  = frac(1,D) mat(D_1;D_2;dots.v;D_n)
  $

= 矩阵的分块

== 加法

设 $AA=(a_(i j))_(m times n)=(AA_(i j))_(s times t), BB=(b_(i j))_(m times n)=(BB_(i j))_(s times t)$，如果有相同分块法，则$ AA + BB = (AA_(i j) + BB_(i j))_(s times t) $

== 数乘

设 $AA=(AA_(i j))_(s times t)$，那么 $k dot AA = (k dot AA_(i j))_(s times t)$。

== 乘法

设 $AA=(a_(i j))_(m times s),BB=(b_(i j))_(s times n)$，只要求 $AA$ 的行的分法和 $BB$ 的列的分法完全一样，那么可用类似于矩阵乘法的规则相乘。

== 转置

等于将分块矩阵转置并将每个元素转置。

== 求逆

当矩阵分块后，对于以下特殊情形：（其中 $AA in PP^(r times r),BB in PP^(s times s)$）

$
bold(G)_1 = mat(AA,OO;CC,BB), quad
bold(G)_2 = mat(AA,CC;OO,BB), quad
bold(G)_3 = mat(OO,AA;BB,CC), quad
bold(G)_4 = mat(CC,AA;BB,OO).
$

由于 $|bold(G)_1| = |bold(G)_2| = |AA||BB|,sp |bold(G)_3| = |bold(G)_4| = (-1)^(s times t)|AA||BB|$，所以 $bold(G)_1 (bold(G)_2,bold(G)_3,bold(G)_4)$ 可逆 $<=>$ $AA$ 和 $BB$ 均可逆。可以证明：

$
(bold(G)_1)^(-1) = mat(AA^(-1),OO;-BB^(-1)CC AA^(-1),BB^(-1)),&quad
(bold(G)_2)^(-1) = mat(AA^(-1),-AA^(-1) CC BB^(-1);OO,BB^(-1)),\
(bold(G)_3)^(-1) = mat(-BB^(-1) CC AA^(-1),BB^(-1);AA^(-1),OO),&quad
(bold(G)_4)^(-1) = mat(OO,BB^(-1);AA^(-1),-AA^(-1)CC BB^(-1)).
$

#prof[
  设 $bold(G)=display(mat(AA,OO;CC,BB))$ 且 $bold(G)$ 可逆。设 $bold(G)^(-1) = display(mat(XX_11,XX_12;XX_21,XX_22))$，那么

  $
  &mat(AA,OO;CC,BB) mat(XX_11,XX_12;XX_21,XX_22) = mat(EE_r,;"",EE_s)\
  =>& display(mat(AA XX_11,AA XX_12;CC XX_11 + BB XX_21,CC XX_12 + BB XX_22
  ))= mat(EE_r,;"",EE_s)\
  $

  从而可以解得 $bold(G)^(-1)$。
]

== 准对角阵

$AA = op("diag")(AA_1,AA_2,dots.c,AA_n)$。其中 $AA$ 是方阵，$AA_(i) (i=1,2,dots.c,n)$ 也都是方阵。

那么 $AA$ 的数乘、加法、乘法、方幂、行列式、求逆运算都可以类比对角矩阵。

= 初等矩阵

矩阵的初等行（列）变换中的 $R_(s t),sp c R_s,sp R_s + c R_t$ 三种运算分别对应第一、二、三型初等矩阵。

#def[性质]初等矩阵是可逆的，且初等矩阵的逆是初等矩阵。

#def[定理1]对 $AA_(m times n)$ 施行一次初等行（列）变换得到的新矩阵，等于用该初等行变换对应的 $m$（$n$）阶初等矩阵左乘（右乘）$AA_(m times n)$；

#def[推论1.1] $r(AA_(m times n))=r <=>$ 存在 $m$ 阶可逆阵 $bold(P)$ 和 $n$ 阶可逆阵 $bold(Q)$，使得 $display(bold(P A Q) = mat(EE_r,OO;OO,OO))$。

#def[推论1.2] 设 $AA,BB in PP^(m times n)$，那么 $AA$ 和 $BB$ 相抵 $<=>$ 一定存在 $m$ 阶可逆阵 $bold(P)$ 和 $n$ 阶可逆阵 $bold(Q)$ 使得 $bold(P A Q) = bold(B)$。

#def[推论1.3] 设 $AA in PP^(n times n)$ 可逆，那么 $AA$ 一定可以被表示为一系列初等矩阵的乘积。