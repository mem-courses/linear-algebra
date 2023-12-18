#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Note #4",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "December 17, 2023",
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

= 欧式空间

在这章中，我们总假设 $V$ 是 $RR$ 上的一个线性空间．

== 内积

若 $phi$ 是 $V times V$ 到 $RR$ 上的一个对应规则，记 $(alpha,beta) = phi(alpha,beta) sp (alpha,beta in V)$．使得 $forall alpha,beta in V$，存在唯一确定实数 $phi(alpha,beta)$ 与之对应．同时该规则满足：

(1) 对称性：$(alpha,beta) = (beta,alpha)$．\
(2) 正定性：$(alpha,alpha)>=0$ 且 $(alpha,alpha) = 0 <=> alpha = theta$．\
(3) 双线性：$(k alpha, beta) = k (alpha, beta) = (alpha, k beta)$；$(alpha+beta, gamma) = (alpha,gamma) + (beta, gamma)$．\

称该规则为 *内积*，定义有内积的实的线性空间为 *欧氏空间*．

#warn[
  注意正定性中的 $(alpha,alpha) = 0 <=> alpha = theta$ 这条，要证明既是充分条件又是必要条件。
]

#def[推论1] $(alpha,theta) = 0$．

#def[推论2] $display((sum_(i=1)^m k_i alpha_i , sum_(j=1)^n t_j beta_j) = sum_(i=1)^m sum_(j=1)^n k_i t_j (alpha_i, beta_j))$．

#def[定理]任何一个实数域上的有限维线性空间一定可以定义适当的内积成为欧氏空间．

#prof[
  #def[证明]设 $dim V=n$，取 $seqn(xi,n)$ 为 $V$ 的一组基，对于 $(alpha,beta)$，设
  $
  alpha &= x_1 xi_1 + x_2 xi_2 + dots.c + x_n xi_n\
  beta &= y_1 xi_1 + y_2 xi_2 + dots.c + y_n xi_n\
  $
  取 $(alpha,beta) = x_1 y_1 + x_2 y_2 + dots.c + x_n y_n$ 即可．
]

== 度量矩阵

设 $bold(A) = ((xi_i,xi_j))_(n times n) = (a_(i j))_(n times n)$ 为基 $seqn(xi,n)$ 的 *度量矩阵*．

对于任意 $alpha,beta$，设 $alpha = x_1 xi_1 + x_2 xi_2 + dots.c + x_n xi_n$，$beta = y_1 xi_1 + y_2 xi_2 + dots.c + y_n xi_n$，有：
$
(alpha,beta)
= (sum_(i=1)^n x_i xi_i, sum_(j=1)^n y_j xi_j)
= sum_(i=1)^n sum_(j=1)^n x_i y_j (xi_i, xi_j)
= sum_(i=1)^n sum_(j=1)^n a_(i j) x_i y_j
= bold(X)^TT bold(A) bold(Y)
$

在知道 $V$ 的一组基后，任意两个向量的基都可以通过度量矩阵进行计算．

== 向量的长度（范数）

令 $||alpha|| = sqrt((alpha,alpha))$，称为向量的长度或模．根据内积的正定性，$(alpha,alpha)>=0$，故这个式子总是有意义的．

#def[定理]（Cauchy-schwarz 不等式）$forall alpha,beta in V$，有 $|(alpha,beta)| <= ||alpha|| dot ||beta||$；且 $|(alpha,beta)| = ||alpha|| dot ||beta|| <=> alpha,beta$ 线性相关．

#prof[
  #def[证明]
  1. 先证 $alpha,beta$ 线性相关 $=>$ $|(alpha,beta)| = ||alpha|| dot ||beta||$．

  设 $alpha=k beta$，则 $|(alpha,beta)| = |(k beta, beta)| = |k| (beta,beta) = |k| ||beta||^2 = ||k beta|| dot ||beta|| = ||alpha|| dot ||beta||$．

  2. 再证 $alpha,beta$ 线性无关 $=>$ $|(alpha,beta)| < ||alpha|| dot ||beta||$．

  由于 $alpha,beta$ 线性无关，$forall k in RR$，有 $alpha+k beta!=0$．根据正定性，有
  $
  (alpha+k beta, alpha+k beta)
  = ||alpha||^2 + 2k ||alpha|| dot ||beta|| + k^2 ||beta||
  $
  看作关于 $k$ 的二次函数与 $x$ 轴没有交点，有
  $
  Delta < 0 => 4k^2 ((alpha,beta))^2 - 4 ||alpha||^2 dot ||beta||^2 < 0 => |(alpha,beta)| < ||alpha|| dot ||beta||
  $
  3. 再证 $|(alpha,beta)| = ||alpha|| dot ||beta||$ $=>$ $alpha,beta$ 线性相关．
  反设 $alpha,beta$ 线性无关，根据 2.，有 $|(alpha,beta)| < ||alpha|| dot ||beta||$ 与题设矛盾．
]

== 向量的夹角

因为 $|(alpha,beta)| <= ||alpha|| dot ||beta||$，所以当 $alpha,beta$ 非零时，有 $display(-1 <= ((alpha,beta))/(||alpha|| dot ||beta||) <= 1)$．

定义 $angle.l alpha,beta angle.r = display(arccos ((alpha,beta))/(||alpha|| dot ||beta||))$ 为 *向量的夹角*．

当 $angle.l alpha,beta angle.r = 0$ 时，称 $alpha,beta$ 这两向量正交．

#def[性质1]（三角形不等式）$||alpha + beta|| <= ||alpha|| + ||beta||$．

#prof[
  #def[证明]
  $
  ||alpha + beta||^2
  &= (alpha+beta,alpha+beta)
  = (alpha,alpha) + 2 (alpha,beta) + (beta,beta)\
  &<= ||alpha||^2 + 2 ||alpha|| dot ||beta|| + ||beta||^2
  = (||alpha|| + ||beta||)^2
  $
]

#def[性质2]（勾股定理）若 $alpha$ 与 $beta$ 垂直，则 $||alpha + beta||^2 = ||alpha||^2 + ||beta||^2$．


== 正交向量组

对于 $V$ 中的一个向量组，如果其中的向量 *非零* 且两两正交，则称该向量组为 $V$ 的一个 *正交向量组*．

#def[性质1]一个正交向量组必线性无关；但反过来，一个线性无关的向量组不一定是正交向量组．

#prof[
  #def[证明]设 $seqn(alpha,m)$ 为一个正交向量组，考察 $k_1 alpha+k_2 alpha_2 + dots.c + k_m alpha_m = theta quad (*)$．

  下面先证明 $(*) "成立" <=> k_1 = 0$：

  $
  because 0 &= (alpha_1,theta) = (alpha_1,k_1 alpha_1 + k_2 alpha_2 + dots.c k_m alpha_m)\
  &= (alpha_1, k_1 alpha_1) + (alpha_1, k_2 alpha_2) + dots.c + (alpha_1, k_m alpha_m) = k_1 ||alpha_1||^2
  $

  由于 $||alpha_1|| != 0$，故 $k_1=0$，同理可证所有 $k_i$ 全为零．故 $seqn(alpha,m)$ 线性无关．

  反过来，对于 $alpha_1=display(mat(1,0))^TT, alpha_2=display(mat(1,1))^TT$，显然 $alpha_1$ 和 $alpha_2$ 线性无关，但 $(alpha_1,alpha_2)=1 != 0$，所以 $alpha_1$ 和 $alpha_2$ 显然不正交．
]

#def[性质2]若 $alpha$ 与 $seqn(beta,m)$ 正交，则 $alpha$ 与 $L(seqn(beta,m))$ 中的任一向量正交。

== 标准正交基

若 $dim V = n$，则 $V$ 中 $n$ 个两两正交的向量所组成的向量组，称为 $V$ 的一组 *正交基*．

若 $V$ 的一组正交基中每个向量的长度均为 $1$，则这组基又称为 $V$ 的 *标准正交基*．

#def[性质]标准正交基的度量矩阵为单位矩阵．

#def[定理] (1) $V$ 中任意两个标准正交基之间的过渡矩阵一定是矩阵。

#deft[定理] (2) 若 $V$ 中的一组标准正交基 (I) 到另一组基 (II) 的过渡矩阵为正交矩阵，那么 (II) 也是标准正交基。

#prof[12月11日习题课 25:48]

=== 标准正交基的作用

设 $xi_1,xi_2,dots,xi_n$ 为 $n$ 维欧式空间 $V$ 的一组标准正交基，$forall alpha,beta in V$，设 $alpha = (xi_1,xi_2,dots,xi_n) X$，$beta = (xi_1,xi_2,dots,xi_n) Y$，其中 $X = (x_1,x_2,dots,x_n)^TT$，$Y = (y_1,y_2,dots,y_n)^TT in R^n$，则：

(1) $(alpha,beta) = (X,Y) = X^T Y = Y^T X$；\
(2) $||alpha|| = ||X|| = sqrt(x_1^2 + x_2^2 + dots.c + x_n^2)$；\
(3) $alpha = (xi_1,xi_2,dots,x_n) X = x_1 xi_1 + x_2 xi_2 + dots.c + x_n xi_n => x_i = (alpha,xi_i), i=1 dots.c n$．

=== 正交矩阵（重要）

设 $bold(U) in RR^(n times n)$，若 $bold(U) bold(U)^TT= bold(U)^TT bold(U) = bold(E)$，即 $bold(U)$ 可逆且逆矩阵为 $bold(U)^TT$，则称 $bold(U)$ 为 $n$ 阶正交矩阵．

#def[定理]设 $bold(U) = (u_(i j))_(n times n) = display(mat(eta_1,eta_2, dots.c , eta_n))$ 为正交矩阵 $<=> bold(U)^TT = bold(U)^(-1)$ $<=>$ $eta_1,eta_2,dots.c,eta_n$ 为 $R^n$ 的标准正交基 $<=>$ $display((eta_i,eta_j) = cases(1\,quad i=j, 0\,quad i!=j))$．

#prof[
  #def[证明]（以 $n=3$ 的情况为例）
  $
  bold(U)^TT bold(U)
  = mat(eta_1^TT; eta_2^TT; eta_3^TT) mat(eta_1, eta_2, eta_3)
  = mat(eta_1^TT eta_1, eta_1^TT eta_2, eta_1^TT eta_3;
        eta_2^TT eta_1, eta_2^TT eta_2, eta_2^TT eta_3;
        eta_3^TT eta_1, eta_3^TT eta_2, eta_3^TT eta_3)
  = mat(1,0,0;0,1,0;0,0,1)
  $
]

== Schmidt 正交化法

对于 $n$ 维线性空间的任意一个向量组 $seqn(alpha,s)$，都可以 *改造* 成一个（标准）正交向量组 $seqn(eta,s)$，且有 $L(seqn(alpha,j)) = L(seqn(eta,j)) sp (j=1,2,dots.c,s)$．

改造第一步，正交化：

令 $beta_1 = alpha_1$．对于 $j>1$，令
$
beta_j = alpha_j - sum_(i=1)^(j-1) ((alpha_j, beta_i))/((beta_i, beta_i)) beta_i
$
则 $seqn(beta,s)$ 是 $V$ 的一组正交基．

改造第二步，标准化：

令 $eta_j = display((beta_j)/(||beta_j||)) sp (j=1,2,dots.c,s)$，则 $seqn(eta,s)$ 是 $V$ 的一组标准正交基．

#warn[
  例题 TBD
  01:55:00
  https://classroom.zju.edu.cn/livingroom?course_id=56584&sub_id=1036865&room_id=316&tenant_code=112&sub_public=1
]