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

1. 不满足交换律：一般地，$AA BB != BB AA$；
2. 不满足消去律：$AA BB = AA CC arrow.r.double.not BB = CC$；$AA BB = OO arrow.r.double.not AA = OO or BB = OO$；
3. 满足结合律：$(AA BB) CC = AA (BB CC)$；
4. 满足分配律：$AA (BB + CC) = AA BB + AA CC$，$(BB + CC) AA = BB AA + CC AA$，$k(AA BB) = (k AA)BB = AA (k BB)$。

#warn[
  - $(AA + BB)(AA - BB) = AA^2 - AA BB + BB AA - BB^2 != AA^2 - BB^2$
  - $(AA BB)^2 = AA (BB AA) BB != AA^2 BB^2$
]

=== 性质

1. 设 $AA,BB in PP^(n times n)$，则 $|AA BB| = |AA| dot |BB| = |BB AA|$。（注意：$AA$ 和 $BB$ 都是方阵）

#prof[
  #set math.mat(delim: "|")
  #def[证明]记 $|DD| = display(mat(AA, OO; -EE, BB)) = |AA| |BB|$。

  另一方面，对 $DD$ 做初等行变换 $display(C_(n+j)+sum_(i=1)^n b_(i j)C_i\,sp j=1\,2\,dots.c\,n)$，可得 $|DD|=display(mat(AA,CC;-EE,OO))$，其中 $CC=AA BB$。那么有 $|DD| = (-1)^(n^2) |CC| |-EE| = (-1)^(n(n+1)) |CC| = |AA BB|$。

  因此证得 $|AA BB| = |AA| |BB|$。
]

2. 设 $AA in PP^(n times n), k in PP$，则 $|k AA| = k^n |AA|$。

=== 可交换矩阵

1. 与任何矩阵可交换的矩阵一定是数量矩阵

2. 与对角线上元素互不相同的对角矩阵可交换的矩阵一定是对角矩阵

== 转置

=== 性质

1. 当 $AA$ 为方阵时，$|AA| = |AA^TT|$；

2. $(AA BB)^TT = BB^TT AA^TT$。

=== 对称矩阵与反对称矩阵

设 $AA = (a_(i j))_(n times n)$（注意：$AA$ 必须是方阵），那么：

- 如果 $a_(i j) = a_(j i) <=> AA=AA^TT$，则称 $AA$ 为 *对称矩阵*；

- 如果 $a_(i j) = -a_(j i) <=> AA=-AA^TT$，则称 $AA$ 为 *反对称矩阵*。


= 矩阵的求逆

对于 $n$ 阶方阵 $AA$，若存在 $n$ 阶方阵 $BB$ 使得 $AA BB = BB AA = EE$，则称 $AA$ *可逆*，且 $BB$ 是 $AA$ 的 *逆矩阵*。用 $AA^(-1)$ 表示 $AA$ 的逆矩阵。

== 性质

1. 如果 $AA$ 可逆，则 $AA^(-1)$ 必唯一。

#prof[
  设存在 $n$ 阶方阵 $BB,CC$，满足 $AA BB = BB AA = AA CC = CC AA = EE$，
]