#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Note #3",
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

= 线性空间

== 运算的刻画

1. 设 $X,Y,Z$ 为三个非空集合，若 $phi:sp X times Y -> Z$ 是一个在积集 $X times Y$ 上，取值于非空集合 $Z$ 中的映射．则称 $phi$ 是一个从集合 $X,Y$ 到集合 $Z$ 的 *二元运算*．称映射 $phi:sp X times X -> X$ 是一个定义在集合 $X$ 上的二元运算．

2. 设 $PP$ 是数域，$X$ 为一个非空集合，称任何一个定义在 $PP times X$ 上，取值于 $X$ 中的映射 $phi$ 为 $X$ 的一个关于 $PP$ 的 *数乘运算*．通常，若 $x,y in X$，$c in PP$，满足 $y = phi(c,x)$，则记 $y=c x$．

== 线性空间的定义

设 $PP$ 是一个数域（其中元素用 $a,b,c,dots$ 表示），$V$ 是一个非空集合（其中元素用 $alpha,beta,gamma,dots$ 表示，一般称为向量），如果下列条件满足，则称 $V$ 为数域 $PP$ 上的一个线性空间，当且仅当定义两种运算：

1. 加法封闭：$forall alpha,beta in V,sp exists "唯一的" gamma in V st gamma = alpha + beta$．

2. 数乘封闭：$forall alpha in V, sp forall k in PP, sp exists "唯一的" gamma in V st gamma = k alpha$．

且这两种运算还要满足下面八条运算规律：

1. 加法交换律：$alpha+beta = beta+alpha$；
2. 加法结合律：$(alpha+beta)+gamma = alpha+(beta+gamma)$；
3. 零向量：$exists theta in V st forall alpha in V, alpha + theta = theta + alpha$；
4. 负向量：$forall alpha in V , sp exists beta in V st alpha + beta = theta$；
5. $k(alpha + beta) = k alpha + k beta$；
6. $(k + l)alpha = k alpha + l alpha$；
7. $(k l) alpha = k (l alpha)$；
8. $1 dot alpha = alpha$．

这时，记这个数域 $PP$ 上的线性空间为 ${V,+,dot,PP}$．

#note[
  #def[例]
  1. 记 $P[x]_n$ 为定义为数域 $PP$ 上的最高次幂小于 $n$ 的多项式，则 $P[x]_n$ 的多项式加法和数乘运算可以构成数域 $PP$ 上的线性空间．\
  2. 复数域 $CC$ 关于数的加法和乘法，可以构成实数域 $RR$ 上的线性空间．\
  3. 实数域 $RR$ 关于数的加法和乘法，可以构成有理数域 $QQ$ 上的线性空间．\
]

#warn[判断是否是线性空间要注意指定数域 $PP$．]

#def[定理1]设 $V$ 是数域 $PP$ 上的一个线性空间，则 (1) 零向量 $theta$ 唯一；(2) 每个向量的负向量唯一．

== 线性组合与线性表示

设 $%alpha_1,alpha_2,dots.c,alpha_s$ 是 $V$ 中的 $s$ 个向量，$k_1,k_2,dots.c,k_s$ 是数域 $PP$ 中的任意 $s$ 个数，则称 $k_1 alpha_1 + k_2 alpha_2 + dots.c + k_s alpha_s$ 为向量组 $alpha_1,alpha_2,dots.c,alpha_s$ 的一个 *线性组合*．

若对 $beta in V$，当且仅当存在数 $c_1,c_2,dots.c,c_s in PP st beta = c_1 alpha_1 + c_2 alpha_2 + dots.c + c_s alpha_s$ 时，称 $beta$ 可由向量组 $alpha_1,alpha_2, dots.c, alpha_s$ *线性表示*．

#note[
  1. 这两条用来定义 *一个* 向量与 *一组* 向量的联系．
  2. 对于向量组 $alpha_1,alpha_2,dots.c,alpha_s$ 的所有线性组合，如果其中有一个等于 $beta$，则 $beta$ 可被该向量组线性表示，否则不行．
]

=== 与线性方程组的联系

设向量 $beta = display(mat(b_1,b_2,dots.c,b_n))^TT$ 和向量组 $alpha_i = display(mat(a_(1 i),a_(2 i),dots.c,a_(n i)))^TT,sp i = 1,2,dots.c,s$．则：

$beta$ 能被向量组 $alpha_1,alpha_2,dots.c,alpha_s$ 线性表示

$<==>$ 能找到一组数 $k_1,k_2,dots.c,k_s in PP$ 使得 $beta=k_1 alpha_1 + k_2 alpha_2 + dots.c + k_s alpha_s$．

$<==>$ $display(k_1 mat(a_11;a_21;dots.v;a_(n 1)) + k_2 mat(a_12;a_22;dots.v;a_(n 2)) + dots.c + k_s mat(a_(1 s);a_(2 s);dots.v;a_(n s)) = mat(b_1;b_2;dots.v;b_n))$．

$<==>$ 线性方程组 $bold(A) X = beta$ 有解，其中 $X$ = $display(mat(k_1;k_2;dots.v;k_s))$．

$<==>$ $r(bold(A)) = r(overline(bold(A)))$，其中 $overline(bold(A)) = display(mat(bold(A), dots.v ,beta))$．

特别地，当 $r(bold(A)) = r(overline(bold(A))) = s$ 时，表示方法唯一；当 $r(bold(A)) = r(overline(bold(A))) < s$ 时，表示方法有无穷多种．

== 线性相关与线性无关

设 $alpha_1,alpha_2,dots.c,alpha_s in V$，如果存在一组不全为 $0$ 的数域 $PP$ 中的数 $k_1,k_2,dots.c,k_s$ 使得 $ k_1 alpha_1 + k_2 alpha_2 + dots.c + k_s alpha_s = theta $ 则称向量组 $alpha_1,alpha_2,dots.c,alpha_s$ *线性相关*，否则称该向量组 *线性无关*．

=== 性质

1. 一个向量组中的部分向量线性相关 $=>$ 这个向量组必线性相关．

2. 一个向量组线性无关 $=>$ 这个向量组的任一部分向量必线性无关．

3. 含零向量的向量组必线性相关．

4. 对于单个向量 $alpha$ 构成的向量组，它线性无关当且仅当 $alpha != beta$．

5. 两个非零向量 $alpha,beta$ 线性相关，则必存在 $0 != k in PP st alpha + k beta = theta$．

6. 在 $R^2$ 上，非零向量 $alpha,beta$ 线性相关 $=>$ $alpha,beta$ 共线或平行；线性无关 $=>$ $alpha,beta$ 相交．

7. 在 $R^3$ 上，非零向量 $alpha,beta,gamma$ 线性相关 $=>$ $alpha,beta,gamma$ 共面；$alpha,beta,gamma$ 线性无关 $=>$ $alpha,beta,gamma$ 异面．

=== 与线性方程组的联系

设 $alpha_1,alpha_2,dots.c,alpha_s in PP^n$ 线性相关

$<==>$ 存在一组不全为零的数 $k_1,k_2,dots.c,k_s in PP$ 使得 $k_1 alpha_1 + k_2 alpha_2 + dots.c + k_s alpha_s = theta$．

$<==>$ $display(k_1 mat(a_11;a_21;dots.v;a_(n 1)) + k_2 mat(a_12;a_22;dots.v;a_(n 2)) + dots.c + k_s mat(a_(1 s);a_(2 s);dots.v;a_(n s)) = mat(0;0;dots.v;0))$

$<==>$ $bold(A) X = theta$ 有非零解，其中 $X$ = $display(mat(k_1;k_2;dots.v;k_s))$．

$<==>$ $r(bold(A)_(n times s)) < s$（秩小于向量组中向量的个数）．

也就是说：

- $alpha_1,alpha_2,dots.c,alpha_s$ 线性相关 $<==>$ $bold(A)_(n times s) X = 0$ 有非零解 $<==>$ $R(bold(A)_(n times s)) < s$
- $alpha_1,alpha_2,dots.c,alpha_s$ 线性无关 $<==>$ $bold(A)_(n times s) X = 0$ 只有零解 $<==>$ $R(bold(A)_(n times s)) = s$

特别的，对于 $PP^n$ 中任意 $n$ 个向量组成的向量组 $alpha_1,alpha_2,dots.c,alpha_n$，他们线性无关当且仅当 $|bold(A)| != 0$ $<=>$ $r(bold(A)) = n$．

=== 与线性表示的关系

#def[定理1]向量组 $alpha_1,alpha_2,dot.c,alpha_s$ 线性相关 $<=>$ 其中至少有一个向量可以被其余向量线性表示．

#warn[不是每一个向量都可以被其余向量线性表示哦！]

#def[定理2]若向量组 $alpha_1,alpha_2,dot.c,alpha_s$ 线性无关而向量组 $alpha_1,alpha_2,dot.c,alpha_s,beta$ 线性相关 $=>$ 向量 $beta$ 一定可以被向量组 $alpha_1,alpha_2,dot.c,alpha_s$ 线性表示，且表示方法唯一．

#prof[
  #def[证明]因为向量组 $alpha_1,alpha_2,dot.c,alpha_s,beta$ 线性相关，故存在一组 $k_1,k_2,dots.c,k_s,k_0$ 使得 $ k_1 alpha_1 + k_2  alpha_2 + dots.c + k_s alpha_s + k_0 beta = theta $反设 $k_0 = 0$，则 $k_0 beta = theta$，与 $alpha_1,alpha_2,dots.c,alpha_s$ 线性无关矛盾；所以 $k_0!=0$，则存在一组 $ beta = -1/k_0 (k_1 alpha_1 + k_2 alpha_2 + dots.c + k_s alpha_s) $

  再证唯一性：若存在
  $
  &beta = t_1 alpha_1 + t_2 alpha_2 + dots.c + t_s alpha_s = l_1 alpha_1 + l_2 alpha_2 + dots.c + l_s alpha_s\
  => &(t_1-l_1) alpha_1 + (t_2 l_2) alpha_2 + dots.c (t_s - l_s) alpha_s = theta
  $
  其中 $t_1,t_2,dots.c,t_s$ 与 $l_1,l_2,dots.c,l_s$ 不完全形同，与 $alpha_1,alpha_2,dots.c,alpha_s$ 线性无关矛盾，故唯一性成立．
]

== 向量组的线性表示

设数域 $PP$ 上的线性空间 $V$ 中有两个向量组 (I) $alpha_1,alpha_2,dots.c,alpha_r$ 和 (II) $beta_1,beta_2,dots.c,beta_s$．如果向量组 (I) 中的每个向量都可被向量组 (II) 线性表示，则称向量组 (I) 可被向量组 (II) 线性表示．

由定义设
$
alpha_j
&= m_(1 j) beta_1 + m_(2 j) beta_2 + dots.c + m_(s j) beta_s\
&= mat(beta_1, beta_2, dots.c, beta_s) mat(m_(1 j); m_(2 j); dots.v; m_(s j))sp (j = 1,dots.c,r)\
$，

称 $display(mat(beta_1, beta_2, dots.c, beta_s))$ 是形式矩阵．形式矩阵的运算具有：

- *结合律*：$display( mat(beta_1,beta_2,dots.c,beta_t) (bold(A B)) = (mat(beta_1,beta_2,dots.c,beta_t) bold(A)) bold(B) )$；
- *传递性*：若 $display( mat(alpha_1,alpha_2,dots.c,alpha_t) = mat(beta_1,beta_2,dots.c,beta_t) bold(C) )$ 且 $display( mat(beta_1,beta_2,dots.c,beta_t) = mat(gamma_1,gamma_2,dots.c,gamma_t) bold(D) )$，那么 $display( mat(alpha_1,alpha_2,dots.c,alpha_t) = mat(gamma_1,gamma_2,dots.c,gamma_t) bold(D C) )$．

#warn[
  形式矩阵不一定是 $PP^(r times s)$ 的矩阵，除非 $V$ 是定义在 $PP^n$ 上的线性空间．也就是说，不能直接套用矩阵的运算法则来计算．
]

#def[定理1]设数域 $PP$ 上的线性空间 $V$ 中有两个向量组 (I) $alpha_1,alpha_2,dots.c,alpha_r$ 和 (II) $beta_1,beta_2,dots.c,beta_s$．如果向量组 (I) 可被向量组 (II) 线性表示且 $r>s$，那么向量组 (I) 必线性相关．

#prof[
  #def[证明]由已知存在 $M_(s times r)$ 使得 $display(mat(alpha_1, alpha_2, dots.c, alpha_r) = mat(beta_1, beta_2, beta_s) bold(M)_(s times r))$．考虑：
  $
  theta &= k_1 alpha_1 + k_2 alpha_2 + dots.c + k_r alpha_r\
  &= mat(alpha_1,alpha_2,dots.c,alpha_r) mat(k_1;k_2;dots.v;k_r)\
  &= mat(beta_1,beta_2,dots.c,beta_s) bold(M)_(s times r) mat(k_1;k_2;dots.v;k_r)
  $
  其中 $r(bold(M)_(s times r)) <= min(s,r) = s<r$，所以
]

#def[定理2]设数域 $PP$ 上的线性空间 $V$ 中有两个向量组 (I) $alpha_1,alpha_2,dots.c,alpha_r$ 和 (II) $beta_1,beta_2,dots.c,beta_s$．如果向量组 (I) 可被向量组 (II) 线性表示且向量组 (I) 线性无关，那么 $r<=s$。

#prof[即上一个命题的逆否命题。]

=== 向量组的等价

在数域 $PP$ 中，如果两个向量组能互相线性表示，则称这两个向量组等价。

#def[定理1]两个等价的，线性无关的且含有有限向量个数的两个向量组，所含向量个数相等。

=== 向量组的极大线性无关组

对于给定向量组的一个部分组，如果其线性无关且添加任意一个原向量组的向量都会变得线性相关。那么这个不分组是原向量组的一个极大线性无关组。

#def[性质1]任意一个有限向量个数的向量组，一定含有一个极大线性向量组。且向量组与它的极大线性向量组等价。

#def[性质2]一个向量组的任意两个极大线性向量组必等价且所含向量个数相等。

=== 向量组的秩

一个向量组的极大线性无关组的向量个数称为这个向量组的秩。

#def[性质1]秩为 $r$ 的向量组中。任意 $r+1$ 个向量必线性相关；任意 $r$ 个线性无关的向量都是原向量组的一个极大线性无关组。

#def[性质2]任意一个有限秩的向量组的线性无关的部分组，一定可以扩充成原向量组的一个极大线性无关组。

= 基

== 基和维数

设 $V$ 是数域 $PP$ 上的（非零）线性空间，当我们把 $V$ 中的全体向量看成一个向量组时，如果该向量组存在一个有限个向量所组成的极大线性无关组，则称 $V$ 是有限维的。当 $V$ 是有限维时，称其极大线性无关组的向量个数为它的 *维数*，记为 $dim V$。

若 $dim V = n$ 且 $xi_1,xi_2,dots.c,xi_n$ 为 $V$ 的一个极大线性无关组，则称 $xi_1,xi_2,dots.c,xi_n$ 的任意一个排列为 $V$ 的一组 *基*。

=== 常用基

线性空间 $V$ 中形式最简单的一组基，称为 $V$ 的 *常用基*。

$PP^n$ 的常用基：$e_1=display(mat(1,0,dots.c,0))^TT$，$e_2=display(mat(0,1,dots.c,0))^TT$，$dots.c$，$e_n=display(mat(0,0,dots.c,1))^TT$。

$PP^(m times n)$ 的常用基：$e_(i j) sp(i=1,2,dots.c,m,sp j=1,2,dots.c,n)$（其中 $e_(i j)$ 是第 $i$ 行第 $j$ 列元素为 $1$，其他元素为 $0$ 的矩阵）$=> dim PP^(m times n) = m times n$。

$PP[x]_n$ 的常用基为 $1,x,x^2,dots.c,x^(n-1) => dim PP[x]_n = n$。

== 坐标

设 $V$ 是数域 $PP$ 上的 $n$ 维线性空间，即 $dim V = n$，又设 $xi_1,xi_2,dots.c,xi_n$ 是 $V$ 的一组基，则 $forall alpha in V$，$alpha$ 可由基 $xi_1,xi_2,dots.c,xi_n$ 唯一的线性表示，设
$
alpha = x_1 xi_1 + x_2 xi_2 + dots.c + x_n xi_n
= mat(xi_1,xi_2,dots.c,xi_n) mat(x_1,x_2,dots.c,x_n)^TT
= mat(xi_1,xi_2,dots.c,xi_n) bold(X)
$

其中 $bold(X) in PP^n$ 称为 $alpha$ 在基 $xi_1,xi_2,dots.c,xi_n$ 下的坐标。

#def[定理1]设 $V$ 是数域 $PP$ 上的 $n$ 维线性空间，$xi_1,xi_2,dots.c,xi_n$ 为 $V$ 的一组基，则对于 $V$ 中的任意一个向量组 $alpha_1,alpha_2,dots.c,alpha_s$，设其在基下的坐标分别为 $bold(X)_1,bold(X)_2,dots.c,bold(X)_s$。那么 $alpha_1,alpha_2,dots.c,alpha_s$ 线性无关 $<=>$ $bold(X)_1,bold(X)_2,dots.c,bold(X)_s$ 线性无关 $<=>$ $r(bold(A)_(n times s)) = s$。其中 $bold(A)_(n times s) = display(mat(bold(X)_1,bold(X)_2,dots.c,bold(X)_s))$。

#note[
  由于 $bold(X)_ i in PP^n$，通过这一定理，我们可以把矩阵的秩与任意线性空间的线性无关性的判定联系起来。
]

#def[推论1.1]设 $dim V = n$，$V$ 中的任意 $n+1$ 个向量必线性相关。

#def[推论1.2]设 $dim V=n$，$seqn(alpha,n)$ 线性无关 $<=> |bold(A)_(n times n)| != 0$。（其中 $bold(A)_n = vecn(bold(X),n)$。

#def[推论1.3]设 $dim V = n$，则 $V$ 中任意 $n$ 个线性无关的向量都是 $V$ 的一组基。

#def[定理2]设 $dim V=n$，$seqn(xi,n)$ 为 $V$ 的一组基，向量 $seqn(alpha,s) in V$ 在所给基下的坐标分别为 $seqn(bold(X),n)$，向量 $beta in V$ 在所给基下的坐标为 $bold(Y)$，则：

#deft[定理2]1. $beta = vecn(alpha,s) bold(X)_0 <=> bold(A) bold(X)_0 = bold(Y)$。

#deft[定理2]2. $beta$ 可被向量组 $seqn(alpha,s)$ 线性表示 $<=> bold(A)bold(X) = bold(Y)$ 有解 $<=>$ $bold(Y)$ 可由 $seqn(bold(X),s)$ 线性表示。

#note[
  回顾：如何证明 $PP^n$ 下的向量组 $seqn(alpha,m) sp (m<=n)$ 的线性关系？

  1. 从定义出发：$k_1 alpha_1 + k_2 alpha_2 + dots.c + k_n alpha_n = theta$。

  2. 令 $bold(A) = vecn(alpha,n)$，比较 $r(bold(A))$ 与 $m$。

  3. 利用某组基下的坐标所构成的矩阵 $bold(A)_(n times m)$ 进行判定。
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

则称矩阵 $bold(M)$ 为从基 (I) 到基 (II) 的过渡矩阵。

#note[
  1. 过渡矩阵是有方向的：$upright("(II)") = upright("(I)") bold(M)$，则 $bold(M)$ 是向量组 (I) 过渡到向量组 (II) 的过渡矩阵。

  2. $bold(M)$ 可逆。$bold(M)^(-1)$ 是从基 (II) 到基 (I) 的过渡矩阵

  3. $PP^n$ 下 *求过渡矩阵的方法*：记 $bold(A) = vecn(xi,n)$，$bold(B) = vecn(eta,n)$，则有 $bold(B) = bold(A M)$ $=>$ $bold(M) = bold(A)^(-1) bold(B)$。那么写成分块矩阵 $display(mat(bold(A),:,bold(B)))$ 的形式，通过初等行变换将左边消成单位矩阵，那么右边就是 $bold(M)$。
]

=== 坐标变换公式

设 $alpha in V$，设 $alpha$ 在基 (I) 下坐标为 $bold(X)$，在基 (II) 下坐标为 $bold(Y)$，$bold(M)$ 是从基 (I) 到基 (II) 的过渡矩阵，即：
$
alpha = vecn(xi,n) bold(X) = vecn(eta,n) bold(Y) = vecn(xi,n) bold(M Y)
$
则 $bold(X) = bold(M Y)$ 或称 $bold(Y) = bold(M)^(-1) bold(X)$。

== 子空间

数域 $PP$ 上一个线性空间 $V$ 的一个非空集合 $W$，如果关于 $V$ 的加法和数乘也构成 $PP$ 上的线性空间，那么称 $W$ 是 $V$ 的一个 *子空间*。显然 ${theta}$ 和 $V$ 是 $V$ 的两个字空间，称为 $V$ 的平凡子空间。

#def[定理]线性空间 $V$ 的任意一个非空子集 $W$，如果满足加法封闭、乘法封闭，则称 $W$ 是 $V$ 的一个子空间。

设 $V$ 是数域 $PP$ 上的线性空间，$seqn(alpha,t) in V$，记 $L(seqn(alpha,t)) = {k_1 alpha_1 + k_2 alpha_2 + dots.c + k_t alpha_t | t_i in PP}$，可以证明 $L(seqn(alpha,t))$ 是 $V$ 的一个子空间，记 $L(seqn(alpha,t))$ 为由向量组 $seqn(alpha,t)$ *张成* 的子空间。

特别地，设 $seqn(xi,n)$ 是 $V$ 的一组基，则 $V = L(seqn(xi,n))$。

== 线性方程组解的结构

对线性方程组 $bold(A)_(m times n) bold(X) = beta (!= theta)$ 和 $bold(A)_(m times n) bold(X) = theta$，当 $r(bold(A)) = r display(mat(bold(A),:,beta)) = r <n$ 时，这两个线性方程组有无穷多解。

记 $W={bold(A) bold(X) = beta | bold(X) in PP^n}$，$W_0={bold(A) bold(X) =theta | bold(X) in PP^n}$，则 $W,W_0$ 都是 $PP^n$ 的子集。但 $W_0$ 是 $PP^n$ 的子空间，$W$ 不是 $PP^n$ 的子空间。

- $W_0$ 的结构：由基础解系（极大线性无关组）张成
- $W$ 的结构：由对应齐次线性方程组的解空间平移而成

=== 齐次线性方程组解的结构

$bold(A X) = theta$ 的解空间 $W_0$ 的任意一个极大线性无关组 $seqn(xi,n-r)$ 称为 $W_0$ 的一个 *基础解系*。有 $W_0 = L(seqn(xi,n-r))$。

TBD

#prof[
  #def[证明]：$seqn(xi,n-r)$ 为 $W_0$ 的一个基础解系。

  1. $seqn(xi,n-r) in W_0$（即 $bold(A) xi_i = theta, sp i=1,2,dots.c,n-r$）；
  2. $seqn(xi,n-r)$ 线性无关；
  3. $forall bold(X) in W$，$bold(X)$ 可被 $seqn(xi,n-r)$ 表示。

  其中：记：$bold(B) = vecn(xi,n-r) = display(mat(bold(C)_(r times (n-r)); bold(E)_((n-r)times(n-r))))$。

  由 $r(bold(B))<=n-r$ 且 $r(bold(B)) >= r(bold(E)_((n-r)times(n-r))) =n-r$ 得 $r(bold(B))=n-r$，即 $seqn(xi,n-r)$ 线性无关。
]

=== 解的结构定理

$bold(A X) = beta$ 的任意解，$bold(X) = xi_0 + (t_1 xi_1 + t_2 xi_2 + dots.c + t_(n-r) xi_(n-r))$。其中 $xi_0$ 是 $bold(A X) = beta$ 的某个特解，$seqn(xi,n-r)$ 是 $bold(A X) = theta$ 的基础解系。

=== 例题

01:29:42

= 第八章

== 正交向量组

对于 $V$ 中的一个向量组，如果其中的向量两两正交，则称该向量组为 $V$ 的一个 *正交向量组*，如果正交向量组中的每个向量的长度均为 $1$，则又称这样的向量组为一个 *标准正交向量组*．

#def[性质]正交向量组必线性无关；但反过来，一个线性无关的向量组不一定是正交向量组．

#prof[
  #def[证明]：设 $alpha_1,alpha_2,dots,alpha_m$ 为一个正交向量组，考察 $k_1 alpha+k_2 alpha_2 + dots.c + k_m alpha_m = theta quad (*)$．

  下面先证明 $(*) "成立" <=> k_1 = 0$：

  $
  because 0 &= (alpha_1,theta) = (alpha_1,k_1 alpha_1 + k_2 alpha_2 + dots.c k_m alpha_m)\
  &= (alpha_1, k_1 alpha_1) + (alpha_1, k_2 alpha_2) + dots.c + (alpha_1, k_m alpha_m) = 
  $

  反过来，对于 $alpha_1=display(mat(1,0))^TT, alpha_2=display(mat(1,1))^TT$，显然 $alpha_1$ 和 $alpha_2$ 线性无关，但 $(alpha_1,alpha_2)=1 != 0$，所以 $alpha_1$ 和 $alpha_2$ 显然不正交．
]

== 标准正交基

若 $dim V = n$，则 $V$ 中 $n$ 个两两正交的向量所组成的向量组，称为 $V$ 的一组 *正交基*．

若 $V$ 的一组正交基中每个向量的长度均为 $1$，则这组基又称为 $V$ 的 *标准正交基*．

#def[性质1]欧式空间 $V$ 的一组基为标准正交基 $<=>$ 它的度量矩阵必是单位矩阵．

#def[性质2]$R^(n), R^(m times n)$ 的常用基都是标准正交基．

=== 标准正交基的作用

设 $xi_1,xi_2,dots,xi_n$ 为 $n$ 维欧式空间 $V$ 的一组标准正交基，$forall alpha,beta in V$，设 $alpha = (xi_1,xi_2,dots,xi_n) X$，$beta = (xi_1,xi_2,dots,xi_n) Y$，其中 $X = (x_1,x_2,dots,x_n)^TT$，$Y = (y_1,y_2,dots,y_n)^TT in R^n$，则：

(1) $(alpha,beta) = (X,Y) = X^T Y = Y^T X$；\
(2) $||alpha|| = ||X|| = sqrt(x_1^2 + x_2^2 + dots.c + x_n^2)$；\
(3) $alpha = (xi_1,xi_2,dots,x_n) X = x_1 xi_1 + x_2 xi_2 + dots.c + x_n xi_n => x_i = (alpha,xi_i), i=1 dots.c n$．

== 正交矩阵（重要）

设 $bold(U) in RR^(n times n)$，若 $bold(U) bold(U)^TT= bold(U)^TT bold(U) = bold(E)$，即 $bold(U)$ 可逆且逆矩阵为 $bold(U)^TT$，则称 $bold(U)$ 为 $n$ 阶正交矩阵．

#def[定理]设 $bold(U) = (u_(i j))_(n times n) = display(mat(eta_1,eta_2, dots.c , eta_n))$ 为正交矩阵 $<=> bold(U)^TT = bold(U)^(-1)$ $<=>$ $eta_1,eta_2,dots.c,eta_n$ 为 $R^n$ 的标准正交基．

#prof[
  #def[证明]
  $
  bold(U) bold(U)^TT = eta
  $
]

== Schmidt 正交化法

