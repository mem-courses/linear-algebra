#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra #5",
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

$quad quad<==>$ 能找到一组数 $k_1,k_2,dots.c,k_s in PP$ 使得 $beta=k_1 alpha_1 + k_2 alpha_2 + dots.c + k_s alpha_s$．

$quad quad <==>$ $display(k_1 mat(a_11;a_21;dots.v;a_(n 1)) + k_2 mat(a_12;a_22;dots.v;a_(n 2)) + dots.c + k_s mat(a_(1 s);a_(2 s);dots.v;a_(n s)) = mat(b_1;b_2;dots.v;b_n))$．

$quad quad <==>$ 线性方程组 $bold(A) X = beta$ 有解，其中 $X$ = $display(mat(k_1;k_2;dots.v;k_s))$．

$quad quad <==>$ $r(bold(A)) = r(overline(bold(A)))$，其中 $overline(bold(A)) = display(mat(bold(A), dots.v ,beta))$．

特别地，当 $r(bold(A)) = r(overline(bold(A))) = s$ 时，表示方法唯一；当 $r(bold(A)) = r(overline(bold(A))) < s$ 时，表示方法有无穷多种．

#note[
  1. $r(bold(A)) < r(overline(bold(A))) <=>$ $beta$ 不能被 $seqn(alpha,s)$ 线性表示；
  2. $r(bold(A)) = r(overline(bold(A))) < s <=>$ $seqn(alpha,s)$ 是线性相关的向量组．
]

== 线性相关与线性无关

设 $alpha_1,alpha_2,dots.c,alpha_s in V$，如果存在一组不全为 $0$ 的数域 $PP$ 中的数 $k_1,k_2,dots.c,k_s$ 使得 $ k_1 alpha_1 + k_2 alpha_2 + dots.c + k_s alpha_s = theta $ 则称向量组 $alpha_1,alpha_2,dots.c,alpha_s$ *线性相关*，否则称该向量组 *线性无关*．

=== 性质

#def[性质1]1. 部分相关 $==>$ 整体相关\
#deft[性质1]2. 整体无关 $==>$ 部分无关\
#deft[性质1]3. 原来相关 $==>$ 缩短相关\
#deft[性质1]4. 原来无关 $==>$ 增长无关\

#def[性质2]含零向量的向量组必线性相关．

#def[性质3]1. 对于单个向量 $alpha$ 构成的向量组，它线性无关当且仅当 $alpha != theta$．\
#deft[性质3]2. 两个非零向量 $alpha,beta$ 线性相关，则必存在 $0 != k in PP st alpha + k beta = theta$．

#def[性质4]1. 非零向量 $alpha,beta in RR^2$ 线性相关 $=>$ $alpha,beta$ 共线或平行；线性无关 $=>$ $alpha,beta$ 相交．\
#deft[性质4]2. 非零向量 $alpha,beta,gamma in RR^3$ 线性相关 $=>$ $alpha,beta,gamma$ 共面；$alpha,beta,gamma$ 线性无关 $=>$ $alpha,beta,gamma$ 异面．

=== 与线性方程组的联系

设 $alpha_1,alpha_2,dots.c,alpha_s in PP^n$ 线性相关

$quad quad <==>$ 存在一组不全为零的数 $k_1,k_2,dots.c,k_s in PP$ 使得 $k_1 alpha_1 + k_2 alpha_2 + dots.c + k_s alpha_s = theta$．

$quad quad <==>$ $display(k_1 mat(a_11;a_21;dots.v;a_(n 1)) + k_2 mat(a_12;a_22;dots.v;a_(n 2)) + dots.c + k_s mat(a_(1 s);a_(2 s);dots.v;a_(n s)) = mat(0;0;dots.v;0))$

$quad quad <==>$ $bold(A) bold(X) = theta$ 有非零解，其中 $X$ = $display(mat(k_1;k_2;dots.v;k_s))$．

$quad quad <==>$ $r(bold(A)_(n times s)) < s$（秩小于向量组中向量的个数）．

也就是说：

- $alpha_1,alpha_2,dots.c,alpha_s$ 线性相关 $<==>$ $bold(A)_(n times s) bold(X) = 0$ 有非零解 $<==>$ $R(bold(A)_(n times s)) < s$
- $alpha_1,alpha_2,dots.c,alpha_s$ 线性无关 $<==>$ $bold(A)_(n times s) bold(X) = 0$ 只有零解 $<==>$ $R(bold(A)_(n times s)) = s$

特别的，对于 $PP^m$ 中任意 $n$ 个向量组成的向量组 $alpha_1,alpha_2,dots.c,alpha_n$，他们线性无关当且仅当 $|bold(A)| != 0$ $<=>$ $r(bold(A)) = n$．

=== 与线性表示的关系

#def[性质1]向量组 $seqn(alpha,s)$ 线性相关 $<=>$ 其中至少有一个向量可以被其余向量线性表示．

#warn[不是每一个向量都可以被其余向量线性表示哦！]

#def[性质2]若向量组 $seqn(alpha,s)$ 线性无关而向量组 $seqn(alpha,s),beta$ 线性相关 $=>$ 向量 $beta$ 一定可以被向量组 $seqn(alpha,s)$ 线性表示，且表示方法唯一．

#prof[
  #def[证明]因为向量组 $seqn(alpha,s),beta$ 线性相关，故存在一组 $k_1,k_2,dots.c,k_s,k_0$ 使得 $ k_1 alpha_1 + k_2  alpha_2 + dots.c + k_s alpha_s + k_0 beta = theta $反设 $k_0 = 0$，则 $k_0 beta = theta$，与 $alpha_1,alpha_2,dots.c,alpha_s$ 线性无关矛盾；所以 $k_0!=0$，则存在一组 $ beta = -1/k_0 (k_1 alpha_1 + k_2 alpha_2 + dots.c + k_s alpha_s) $

  再证唯一性：若存在
  $
  &beta = t_1 alpha_1 + t_2 alpha_2 + dots.c + t_s alpha_s = l_1 alpha_1 + l_2 alpha_2 + dots.c + l_s alpha_s\
  => &(t_1-l_1) alpha_1 + (t_2 - l_2) alpha_2 + dots.c (t_s - l_s) alpha_s = theta
  $
  其中 $t_1,t_2,dots.c,t_s$ 与 $l_1,l_2,dots.c,l_s$ 不完全先沟通，与 $alpha_1,alpha_2,dots.c,alpha_s$ 线性无关矛盾，故唯一性成立．
]

== 向量组的线性表示

设数域 $PP$ 上的线性空间 $V$ 中有两个向量组 (I) $alpha_1,alpha_2,dots.c,alpha_r$ 和 (II) $beta_1,beta_2,dots.c,beta_s$．如果向量组 (I) 中的每个向量都可被向量组 (II) 线性表示，则称向量组 (I) 可被向量组 (II) 线性表示．

由定义设
$
alpha_j
= m_(1 j) beta_1 + m_(2 j) beta_2 + dots.c + m_(s j) beta_s
= mat(beta_1, beta_2, dots.c, beta_s) mat(m_(1 j); m_(2 j); dots.v; m_(s j))sp (j = 1,dots.c,r)\
$

称 $display(mat(beta_1, beta_2, dots.c, beta_s))$ 是形式矩阵．形式矩阵的运算具有：

- *结合律*：$display( mat(beta_1,beta_2,dots.c,beta_t) (bold(A B)) = (mat(beta_1,beta_2,dots.c,beta_t) bold(A)) bold(B) )$；
- *传递性*：若 $display( mat(alpha_1,alpha_2,dots.c,alpha_t) = mat(beta_1,beta_2,dots.c,beta_t) bold(C) )$ 且 $display( mat(beta_1,beta_2,dots.c,beta_t) = mat(gamma_1,gamma_2,dots.c,gamma_t) bold(D) )$，那么 $display( mat(alpha_1,alpha_2,dots.c,alpha_t) = mat(gamma_1,gamma_2,dots.c,gamma_t) bold(D C) )$．

#warn[
  形式矩阵不一定是 $PP^(r times s)$ 的矩阵，除非 $V$ 是定义在 $PP^n$ 上的线性空间．也就是说，不能直接套用矩阵的运算法则来计算．

  但在使用时，我们可以取线性空间下的一组标准基，并将向量表示为在该标准基下的坐标形式，此时就可以对形式矩阵做矩阵操作了．
]

#def[定理1]设数域 $PP$ 上的线性空间 $V$ 中有两个向量组 (I) $alpha_1,alpha_2,dots.c,alpha_r$ 和 (II) $beta_1,beta_2,dots.c,beta_s$．如果向量组 (I) 可被向量组 (II) 线性表示且 $r>s$，那么向量组 (I) 必线性相关．

#prof[
  #def[证明]由已知存在 $M_(s times r)$ 使得 $display(mat(alpha_1, alpha_2, dots.c, alpha_r) = mat(beta_1, beta_2, beta_s) bold(M)_(s times r))$．考虑：
  $
  theta = k_1 alpha_1 + k_2 alpha_2 + dots.c + k_r alpha_r
  = mat(alpha_1,alpha_2,dots.c,alpha_r) mat(k_1;k_2;dots.v;k_r)
  = mat(beta_1,beta_2,dots.c,beta_s) bold(M)_(s times r) mat(k_1;k_2;dots.v;k_r)
  $
  其中 $r(bold(M)_(s times r)) <= min(s,r) = s<r$，所以
]

#def[定理2]设数域 $PP$ 上的线性空间 $V$ 中有两个向量组 (I) $alpha_1,alpha_2,dots.c,alpha_r$ 和 (II) $beta_1,beta_2,dots.c,beta_s$．如果向量组 (I) 可被向量组 (II) 线性表示且向量组 (I) 线性无关，那么 $r<=s$．

#prof[即上一个命题的逆否命题．]

=== 向量组的等价

在数域 $PP$ 中，如果两个向量组能互相线性表示，则称这两个向量组等价．

#def[定理]两个等价的，线性无关的且含有有限向量个数的两个向量组，所含向量个数相等．

#def[性质]向量组的等价具有自反性、对称性、传递性．

=== 向量组的极大线性无关组

对于给定向量组的一个部分组，如果其线性无关且添加任意一个原向量组的向量都会变得线性相关．那么这个不分组是原向量组的一个极大线性无关组．

#def[性质1]任意一个有限向量个数的向量组，一定含有一个极大线性向量组．且向量组与它的极大线性向量组等价．

#def[性质2]一个向量组的任意两个极大线性向量组必等价且所含向量个数相等．

=== 向量组的秩

一个向量组的极大线性无关组的向量个数称为这个向量组的秩．

#def[性质1]秩为 $r$ 的向量组中．任意 $r+1$ 个向量必线性相关；任意 $r$ 个线性无关的向量都是原向量组的一个极大线性无关组．

#def[性质2]任意一个有限秩的向量组的线性无关的部分组，一定可以扩充成原向量组的一个极大线性无关组．
