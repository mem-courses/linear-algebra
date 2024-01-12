#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra #6",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "December 3, 2023",
)

#let alpha = math.bold(math.alpha)
#let beta = math.bold(math.beta)
#let gamma = math.bold(math.gamma)
#let theta = math.bold(math.theta)
#let eta = math.bold(math.eta)
#let nu = math.bold(math.nu)
#let xi = math.bold(math.xi)
#let ds = math.dots.c
#let TT = math.upright("T")


= 线性空间的基

== 基和维数

设 $V$ 是数域 $PP$ 上的（非零）线性空间，当我们把 $V$ 中的全体向量看成一个向量组时，如果该向量组存在一个有限个向量所组成的极大线性无关组，则称 $V$ 是有限维的．当 $V$ 是有限维时，称其极大线性无关组的向量个数为它的 *维数*，记为 $dim V$．

若 $dim V = n$ 且 $xi_1,xi_2,dots.c,xi_n$ 为 $V$ 的一个极大线性无关组，则称 $xi_1,xi_2,dots.c,xi_n$ 的任意一个排列为 $V$ 的一组 *基*．

=== 常用基

线性空间 $V$ 中形式最简单的一组基，称为 $V$ 的 *常用基*．

$PP^n$ 的常用基：$e_1=display(mat(1,0,dots.c,0))^TT$，$e_2=display(mat(0,1,dots.c,0))^TT$，$dots.c$，$e_n=display(mat(0,0,dots.c,1))^TT$．

$PP^(m times n)$ 的常用基：$e_(i j) sp(i=1,2,dots.c,m,sp j=1,2,dots.c,n)$（其中 $e_(i j)$ 是第 $i$ 行第 $j$ 列元素为 $1$，其他元素为 $0$ 的矩阵）$=> dim PP^(m times n) = m times n$．

$PP[x]_n$ 的常用基为 $1,x,x^2,dots.c,x^(n-1) => dim PP[x]_n = n$．

== 坐标

设 $V$ 是数域 $PP$ 上的 $n$ 维线性空间，即 $dim V = n$，又设 $xi_1,xi_2,dots.c,xi_n$ 是 $V$ 的一组基，则 $forall alpha in V$，$alpha$ 可由基 $xi_1,xi_2,dots.c,xi_n$ 唯一的线性表示，设
$
alpha = x_1 xi_1 + x_2 xi_2 + dots.c + x_n xi_n
= mat(xi_1,xi_2,dots.c,xi_n) mat(x_1,x_2,dots.c,x_n)^TT
= mat(xi_1,xi_2,dots.c,xi_n) bold(X)
$

其中 $bold(X) in PP^n$ 称为 $alpha$ 在基 $xi_1,xi_2,dots.c,xi_n$ 下的坐标．

#def[定理1]设 $V$ 是数域 $PP$ 上的 $n$ 维线性空间，$xi_1,xi_2,dots.c,xi_n$ 为 $V$ 的一组基，则对于 $V$ 中的任意一个向量组 $alpha_1,alpha_2,dots.c,alpha_s$，设其在基下的坐标分别为 $bold(X)_1,bold(X)_2,dots.c,bold(X)_s$．那么 $alpha_1,alpha_2,dots.c,alpha_s$ 线性无关 $<=>$ $bold(X)_1,bold(X)_2,dots.c,bold(X)_s$ 线性无关 $<=>$ $r(bold(A)_(n times s)) = s$．其中 $bold(A)_(n times s) = display(mat(bold(X)_1,bold(X)_2,dots.c,bold(X)_s))$．

#note[
  由于 $bold(X)_ i in PP^n$，通过这一定理，我们可以把矩阵的秩与任意线性空间的线性无关性的判定联系起来．
]

#def[推论1.1]设 $dim V = n$，$V$ 中的任意 $n+1$ 个向量必线性相关．

#def[推论1.2]设 $dim V=n$，$seqn(alpha,n)$ 线性无关 $<=> |bold(A)_(n times n)| != 0$．（其中 $bold(A)_n = vecn(bold(X),n)$．

#def[推论1.3]设 $dim V = n$，则 $V$ 中任意 $n$ 个线性无关的向量都是 $V$ 的一组基．

#def[定理2]设 $dim V=n$，$seqn(xi,n)$ 为 $V$ 的一组基，向量 $seqn(alpha,s) in V$ 在所给基下的坐标分别为 $seqn(bold(X),n)$，向量 $beta in V$ 在所给基下的坐标为 $bold(Y)$，则：

#deft[定理2]1. $beta = vecn(alpha,s) bold(X)_0 <=> bold(A) bold(X)_0 = bold(Y)$．

#deft[定理2]2. $beta$ 可被向量组 $seqn(alpha,s)$ 线性表示 $<=> bold(A)bold(X) = bold(Y)$ 有解 $<=>$ $bold(Y)$ 可由 $seqn(bold(X),s)$ 线性表示．

#note[
  回顾：如何证明 $PP^n$ 下的向量组 $seqn(alpha,m) sp (m<=n)$ 的线性关系？

  1. 从定义出发：$k_1 alpha_1 + k_2 alpha_2 + dots.c + k_n alpha_n = theta$．

  2. 令 $bold(A) = vecn(alpha,n)$，比较 $r(bold(A))$ 与 $m$．

  3. 利用某组基下的坐标所构成的矩阵 $bold(A)_(n times m)$ 进行判定．
]

== 过渡矩阵

设 $dim V = n$，$V$ 的两组基 (I) $seqn(xi,n)$ 和 (II) $seqn(eta,n)$，
$
vecn(eta,n) = vecn(xi,n) mat(
  m_11,m_12,dots.c,m_(1 n);
  m_21,m_22,dots.c,m_(2 n);
  dots.v,dots.v,,dots.v;
  m_(n 1),m_(n 2),dots.c,m_(n n);
) = vecn(xi,n) bold(M)
$

则称矩阵 $bold(M)$ 为从基 (I) 到基 (II) 的过渡矩阵．

#note[
  1. 过渡矩阵是有方向的：$upright("(II)") = upright("(I)") bold(M)$，则 $bold(M)$ 是向量组 (I) 过渡到向量组 (II) 的过渡矩阵．

  2. $bold(M)$ 可逆．$bold(M)^(-1)$ 是从基 (II) 到基 (I) 的过渡矩阵

  3. $PP^n$ 下 *求过渡矩阵的方法*：记 $bold(A) = vecn(xi,n)$，$bold(B) = vecn(eta,n)$，则有 $bold(B) = bold(A M)$ $=>$ $bold(M) = bold(A)^(-1) bold(B)$．那么写成分块矩阵 $display(mat(bold(A),:,bold(B)))$ 的形式，通过初等行变换将左边消成单位矩阵，那么右边就是 $bold(M)$．
]

=== 坐标变换公式

设 $alpha in V$，设 $alpha$ 在基 (I) 下坐标为 $bold(X)$，在基 (II) 下坐标为 $bold(Y)$，$bold(M)$ 是从基 (I) 到基 (II) 的过渡矩阵，即：
$
alpha = vecn(xi,n) bold(X) = vecn(eta,n) bold(Y) = vecn(xi,n) bold(M Y)
$
则 $bold(X) = bold(M Y)$ 或称 $bold(Y) = bold(M)^(-1) bold(X)$．

= 线性空间的子空间

数域 $PP$ 上一个线性空间 $V$ 的一个非空集合 $W$，如果关于 $V$ 的加法和数乘也构成 $PP$ 上的线性空间，那么称 $W$ 是 $V$ 的一个 *子空间*．显然 ${theta}$ 和 $V$ 是 $V$ 的两个字空间，称为 $V$ 的平凡子空间．

#def[定理]线性空间 $V$ 的任意一个非空子集 $W$，如果满足 *加法封闭*、*乘法封闭*，则称 $W$ 是 $V$ 的一个子空间．

== 张成

设 $V$ 是数域 $PP$ 上的线性空间，$seqn(alpha,t) in V$，记
$
L(seqn(alpha,t)) = {k_1 alpha_1 + k_2 alpha_2 + dots.c + k_t alpha_t | t_i in PP}
$
可以证明 $L(seqn(alpha,t))$ 是 $V$ 的一个子空间，记 $L(seqn(alpha,t))$ 为由向量组 $seqn(alpha,t)$ *张成* 的子空间．

== 线性方程组解的结构

对线性方程组 $bold(A)_(m times n) bold(X) = beta (!= theta)$ 和 $bold(A)_(m times n) bold(X) = theta$，当 $r(bold(A)) = r display(mat(bold(A),:,beta)) = r$ 时，第一个线性方程组有解．特别地当 $r<n$ 时这两个线性方程组有无穷多解．

记 $W={bold(A) bold(X) = beta | bold(X) in PP^n}$，$W_0={bold(A) bold(X) =theta | bold(X) in PP^n}$，则 $W,W_0$ 都是 $PP^n$ 的子集．但 $W_0$ 是 $PP^n$ 的子空间，$W$ 不是 $PP^n$ 的子空间．

- $W_0$ 的结构：由基础解系（极大线性无关组）张成
- $W$ 的结构：由对应齐次线性方程组的解空间平移而成

=== 齐次线性方程组解的结构

$bold(A X) = theta$ 的解空间 $W_0$ 的任意一个极大线性无关组 $seqn(xi,n-r)$ 称为 $W_0$ 的一个 *基础解系*．有 $W_0 = L(seqn(xi,n-r))$．

TBD

#prof[
  #def[证明]：$seqn(xi,n-r)$ 为 $W_0$ 的一个基础解系．

  1. $seqn(xi,n-r) in W_0$（即 $bold(A) xi_i = theta, sp i=1,2,dots.c,n-r$）；
  2. $seqn(xi,n-r)$ 线性无关；
  3. $forall bold(X) in W$，$bold(X)$ 可被 $seqn(xi,n-r)$ 表示．

  其中：记：$bold(B) = vecn(xi,n-r) = display(mat(bold(C)_(r times (n-r)); bold(E)_((n-r)times(n-r))))$．

  由 $r(bold(B))<=n-r$ 且 $r(bold(B)) >= r(bold(E)_((n-r)times(n-r))) =n-r$ 得 $r(bold(B))=n-r$，即 $seqn(xi,n-r)$ 线性无关．
]

=== 解的结构定理

$bold(A X) = beta$ 的任意解，$bold(X) = xi_0 + (t_1 xi_1 + t_2 xi_2 + dots.c + t_(n-r) xi_(n-r))$．其中 $xi_0$ 是 $bold(A X) = beta$ 的某个特解，$seqn(xi,n-r)$ 是 $bold(A X) = theta$ 的基础解系．

=== 例题

01:29:42
