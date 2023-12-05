#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Homework #8",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "November 13, 2023",
)

#let alpha = math.bold(math.alpha)
#let beta = math.bold(math.beta)
#let gamma = math.bold(math.gamma)
#let theta = math.bold(math.theta)
#let xi = math.bold(math.xi)
#let ds = math.dots.c
#let TT = math.upright("T")

= P101 习题四 1(2)
#prob[在线性空间 $PP^4$ 中，将向量 $beta=(0,2,0,-1)^TT$ 表示成向量组 $alpha_1=(1,1,1,1)^TT$，$alpha_2=(1,1,1,0)^TT$，$alpha_3=(1,1,0,0)^TT$，$alpha_4=(1,0,0,0)^TT$ 的线性组合：]

$beta = -alpha_1 + alpha_2 + 2 alpha_3 -2 alpha_4$．

= P101 习题四 2
#prob[设 $bold(A) = display(mat(alpha_1, alpha_2, alpha_3))$ 为三阶矩阵，$beta$ 是一个三元向量．若 $beta=-alpha_1+2alpha_2-2alpha_3$，试给出线性方程组 $bold(A) X=beta$ 的一个解．]

由已知，$display(mat(alpha_1,alpha_2,alpha_3) mat(-1,2,-2)^TT) = beta$，即 $X = display(mat(-1, 2, -2))^TT．$

= P101 习题四 3(3)
#prob[判断向量组的线性相关性：$alpha_1=(2,2,7,-1)^TT$，$alpha_2=(3,-1,2,4)^TT$，$alpha_3=(1,1,3,1)^TT$．]

令 $bold(A) = display(mat(alpha_1,alpha_2,alpha_3)) in PP^(4 times 3)$，其中：

$
r(bold(A)) = r mat(2,3,1;2,-1,1;7,2,3;-1,4,1) = r mat(1,1,3,1;0,-4,-7,1;0,0,-1,1) = 3
$

所以向量组 $alpha_1,alpha_2,alpha_3$ 线性无关．

= P101 习题四 6
#prob[设 $alpha_1=(1,1,-1,-1)^TT$，$alpha_2=(1,2,0,3)^TT in PP^4$，这里 $PP$ 是一个数域，求两个向量 $alpha_3,alpha_4 in PP^4$ 使得 $alpha_1,alpha_2,alpha_3,alpha_4$ 线性无关．]

取 $alpha_3 = (0,0,1,0)^TT,sp alpha_4 = (0,0,0,1)^TT$，下证明此时四个向量线性无关：

$
r mat(1,1,-1,-1;1,2,0,3;0,0,1,0;0,0,0,1)
= r mat(1,1,-1,-1;0,1,1,4;0,0,1,0;0,0,0,1)
= 4
$

也就是说向量组 $alpha_1,alpha_2,alpha_3,alpha_4$ 线性无关．

= P102 习题四 8
#prob[
  设 $alpha,beta$ 为三元列向量，矩阵 $bold(A) = alpha alpha^TT + beta beta^TT$，其中 $alpha^TT,beta^TT$ 分别是 $alpha,beta$ 的转置，证明：

  (1) 秩 $r(bold(A)) <= 2$．
]

由于 $alpha,beta$ 为三元列向量，所以 $bold(A) in PP^(3 times 3)$，即证 $r(bold(A)) < 3$，即证 $bold(A) X = theta$ 有非零解．取 $X = display(mat(x_1,x_2,x_3)^TT)$，考虑线性方程组：

$
cases(
  a_1 x_1 + a_2 x_2 + a_3 x_3 = 0,
  b_1 x_1 + b_2 x_2 + b_3 x_3 = 0,
)
$

由于方程个数小于变量个数，该方程有无穷多解．其中任取一组非零解作为 $X$，则满足：

$
alpha^TT X = beta^TT X = 0
=> 
bold(A) X = (alpha alpha^TT + beta beta^TT) X = 0 dot alpha + 0 dot beta = theta
$

故 $bold(A) X = theta$ 有非零解，即 $r(bold(A)) <= 2$．

#prob[(2) 若 $alpha,beta$ 线性相关，则秩 $r(bold(A))<2$．]

若 $alpha,beta$ 线性相关，则 $exists k != 0 st alpha + k beta = 0$，所以：
$
r(bold(A)) &= r(-k beta (-k beta)^TT + beta beta^TT) = r((k^2 +1) beta beta^TT) = r(beta beta^TT) = mat(b_1 beta, :, b_2 beta,:, b_3 beta)
$
若 $b_1,b_2,b_3$ 不全为零，则一定能找到一列 $b_i!=0$，将其他列用这行消去，可以得到 $r(bold(A)) = r(beta) <= 1$．否则 $bold(A) = bold(O)$，此时 $r(bold(A)) = 0$．

综上所述，$r(bold(A)) < 2$．

#note[实际上，对于列向量 $beta in PP^n$，有 $r(beta beta^TT) = r(beta) <= 1$．]

= P102 习题四 11
#prob[
  设 $bold(A) = display(mat(1,-1,-1;-1,1,1;0,-4,-2)),sp xi_1=display(mat(-1;1;-2))$．

  (1) 求满足 $bold(A) xi_2 = xi_1,sp bold(A)^2 xi_3 = xi_1$ 的所有向量 $xi_2,xi_3$．
]

由已知，$r(bold(A)) = r(overline(bold(A))) = 2$，所以 $xi_2,xi_3$ 有无穷多组解．考虑：
$
mat(bold(A),:,xi_1) = mat(
  1,-1,-1,dots.v,1;
  -1,1,1,dots.v,-1;
  0,-4,-2,dots.v,-2;
) = mat(
  1,-1,-1,dots.v,1;
  0,1,1/2,dots.v,1/2;
  0,0,0,dots.v,0;
)
$

TBD

#prob[(2) 对 (1) 中的任一向量 $xi_2,xi_3$，证明 $xi_1,xi_2,xi_3$ 线性无关．]

= P102 习题四 12
#prob[
  已知 $m$ 个向量 $alpha_1,alpha_2,ds,alpha_m$ 线性相关，但其中任意 $m-1$ 个向量都线性无关，证明：

  (1) 如果 $c_1 alpha_1 + c_2 alpha_2 + ds + c_m alpha_m = theta$，那么 $c_1,c_2,ds,c_m$ 或全为零或全不为零．
]

如果 $c_1,c_2,ds,c_m$ 中有一个为零且不全为零，不妨设 $c_1=0$ 且 $c_1 alpha_1 + c_2 alpha_2 + ds + c_m alpha_m = theta$．那么 $c_2 alpha_2 + c_3 alpha_3 + ds + c_m alpha_m = theta$，且 $c_2,c_3,ds,c_m$ 中至少有一个不为零．根据定义，向量组 $alpha_2,alpha_3,ds,alpha_m$ 线性相关，与题设矛盾．故 $c_1,c_2,ds,c_m$ 或全为零或全不为零．

#prob[(2) 如果存在等式 $c_1 alpha_1 + c_2 alpha_2 + dot.c + c_m alpha_m = theta$ 及 $d_1 alpha_1 + d_2 alpha_2 + dot.c + d_m alpha_m = theta$ 且 $d_1 != 0$，那么 $display(c_1/d_1 = c_2/d_2 = ds = c_m/d_m)$．]

由 (1) 知，$d_1!=0 => d_i!=0 sp (i=1,2,ds,n)$．若 $c_1=0$，则等式显然成立，下面只需考虑 $c_1!=0$ 的情况．由于向量组 $alpha_1,alpha_2,ds,alpha_m$ 线性相关而向量组 $alpha_2,alpha_3,ds,alpha_m$ 线性无关，$alpha_1$ 可被向量组其余向量唯一线性表示，即对于：

$
alpha_1 &= -1/c_1 (c_2 alpha_2 + c_3 alpha_3 + ds + c_m alpha_m)\
alpha_1 &= -1/d_1 (d_2 alpha_2 + d_3 alpha_3 + ds + d_m alpha_m)\
$

其中 $forall i>1$，$display(c_i/c_1 = d_i/d_1 => c_1/d_1 = c_i/d_i)$．故原命题得证．

= P103 习题四 14

#prob[
  设 $alpha_i = display(mat(a_(i 1), a_(i 2), ds, a_(i s))) in PP^(1 times s) sp (i=1,2,ds,m)$．令
  $ beta_i = mat(a_(i 1), a_(i 2), ds, a_(i s), b_(i, s+1), ds, b_( i n)) sp (i = 1,2,ds,m) $
  其中 $b_(i j)$ 为 $PP$ 中的数（$i=1,2,ds,m,sp j=s+1,ds,n$）．

  (1) 若 $alpha_1,alpha_2,ds,alpha_m$ 线性无关，问 $beta_1,beta_2,ds,beta_m$ 是否线性无关．
]

正确．下证明逆否命题：若 $beta_1,beta_2,ds,beta_m$ 线性相关，则 $alpha_1,alpha_2,ds,alpha_m$ 必线性相关．

此时必存在一组不全为 $0$ 的 $c_1,c_2,ds,c_m$ 使得 $c_1 beta_1 + c_2 beta_2 + ds + c_m beta_m = theta$．说明对于每一个 $1<=i<=s$，都有 $c_1 a_(1 i) + c_2 a_(2 i) + dots.c c_m a_(m i) = 0$，即 $c_1 alpha_1 + c_2 alpha_2 + ds + c_m alpha_m = theta$．即向量组 $alpha_1,alpha_2,ds,alpha_m$ 线性相关．

故原命题得证．

#prob[
  (2) 若 $beta_1,beta_2,ds,beta_m$ 线性无关，问 $alpha_1,alpha_2,ds,alpha_m$ 是否线性无关．
]

错误．考虑反例如下：$
alpha_1 &= mat(1) quad alpha_2 &&= mat(1)\
beta_1 &= mat(1;0) quad beta_2 &&= mat(1;1)\
$

其中 $beta_1,beta_2$ 线性无关，而 $alpha_1,alpha_2$ 线性相关．

= P103 习题四 15
#prob[判断题，略．]

(1) T
(2) T
(3) F
(4) T
(5) T
(6) F
(7) F
(8) T
(9) F
(10) T
(11) F
(12) F

= P104 习题四 17
#prob[选择题，略．]

选 (A) 项．

= P104 习题四 18

#prob[
  设向量组 $alpha = display(mat(1,0,1))^TT,sp alpha_2 = display(mat(0,1,1))^TT, sp alpha_3 = display(mat(1,3,5))^TT$ 不能经向量组 $beta_1 = display(mat(1,1,1))^T,sp beta_2 =$$display(mat(1,2,3))^TT, sp beta_3 = display(mat(3,4,a))^TT$ 线性表示．

  (1) 求 $a$ 的值．
]

由已知
$
r mat(alpha_1,:,alpha_2,:,alpha_3)
= r mat(1,0,1;0,1,1;1,3,5)
= r mat(1,0,1;0,1,1;0,0,1)
= 3
$

由于不能被线性表示，所以应有 $r display(mat(beta_1,:,beta_2,:,beta_3)) < 3$，即：

#set math.mat(delim: "|")
$
mat(beta_1,:,beta_2,:,beta_3)
= mat(1,1,1;1,2,3;3,4,a)
= mat(1,1,1;0,1,2;0,0,a-5)=0
$
#set math.mat(delim: "(")

故 $a=5$．

#prob[(2) 将 $beta_1,beta_2,beta_3$ 用 $alpha_1,alpha_2,alpha_3$ 线性表示．]

$
beta_1 &= 2 alpha_1 + 4 alpha_2 - alpha_3 \
beta_2 &= alpha_1 + 2 alpha_2 \
beta_3 &= 5 alpha_1 + 10 alpha_2 - 2 alpha_3\
$

= P172 习题七 2
#prob[判断题，略．]

(1) 构成
(2) 不构成
(3) 构成
(4) 构成
(5) 不构成

= P172 习题七 4(2)
#prob[设 $V$ 是数域 $PP$ 上的线性空间，证明 $(c_1-c_2) alpha = c_1 alpha - c_2 alpha,sp forall c_1,c_2 in PP, sp forall alpha in V$．]

$
(c_1-c_2) alpha = c_1 alpha - c_2 alpha 
<=> ((c_1-c_2) + c_2) alpha = c_2 alpha + (c_1 - c_2) alpha
$

由于数域的封闭性，$(c_1-c_2) in PP$，再由已知条件和线性空间的运算法则，原命题成立．

= P172 习题七 4(3)
#prob[设 $V$ 是数域 $PP$ 上的线性空间，证明 $c(alpha-beta) = c alpha - c beta,sp forall c in PP,sp forall alpha,beta in V$．]

根据线性空间的性质，$forall beta$，存在唯一的负向量 $gamma$ 使得 $beta+gamma = theta$．代入得
$ c(alpha-beta) = c alpha - c beta <=> c(alpha+gamma) = c alpha + c gamma $
由线性空间的运算法则可知成立．

= P172 习题七 5
#prob[如果向量组 $alpha_1,alpha_2,dots.c,alpha_s$ 线性无关，证明向量组 $alpha_1,alpha_1+alpha_2,dots.c,alpha_1+alpha_2+dots.c+alpha_s$ 线性无关．]

可证明逆否命题，如果向量组 $alpha_1,alpha_1+alpha_2,dots.c,alpha_1+alpha_2+dots.c+alpha_s$ 线性相关，那么向量组 $alpha_1,alpha_2,dots.c,alpha_s$ 线性相关．考虑一定存在一组不全为 $0$ 的实数 $c_1,c_2,dots.c,c_m$ 使得：

$
&c_1 alpha_1 + c_2 (alpha_1 + alpha_2) + dots.c + c_m (alpha_1 + alpha_2 + dots.c + alpha_m) = theta\
=> &(c_1+c_2+dots.c+c_m) alpha_1 + (c_2+c_3+dots.c+c_m) alpha_2 + dots.c + c_m alpha_m = theta\
$

下面只需证明当 $c_1,c_2,dots.c,c_m$ 不全为 $0$ 时，$(c_1+c_2+dots.c+c_m),(c_2+c_3+dots.c+c_m),dots.c,c_m$ 不全为 $0$．可证明其逆否命题，即当 $(c_1+c_2+dots.c+c_m),(c_2+c_3+dots.c+c_m),dots.c,c_m$ 全为 $0$ 时，$c_1,c_2,dots.c,c_m$ 必全为零．

由于矩阵 $bold(A) = display(mat(1,1,dots.c,1;0,1,dots.c,1;dots.v,dots.v,,dots.v;0,0,dots.c,1)_m)$ 满秩，可知 $bold(A) gamma = beta$ 只存在全零解即 $c_1,c_2,dots.c,c_m$ 全为零．

综上所述，原命题得证．

= P173 习题七 6
#prob[
  设 $alpha_1,alpha_2,dots.c,alpha_s$ 是一组向量且

  (1) $alpha_1 != 0$；\
  (2) 每一个 $alpha_i sp(i=2,3,dots.c,s)$ 都不能经 $alpha_1,alpha_2,dots.c,alpha_(i-1)$ 线性表示．

  证明 $alpha_1,alpha_2,dots.c,alpha_s$ 线性无关．
]

由数学归纳法知证原命题相当于证明当向量组 $alpha_1,alpha_2,dots.c,alpha_s$ 线性无关且 $alpha_(s+1)$ 不能被向量组 $alpha_1,alpha_2,dots.c,alpha_s$ 线性表示时，$alpha_1,alpha_2,dots.c,alpha_s,alpha_(s+1)$ 线性无关．

可证明其逆否命题，即当 $alpha_1,alpha_2,dots.c,alpha_s,alpha_(s+1)$ 线性相关时，要么 $alpha_1,alpha_2,dots.c,alpha_s$ 线性相关，要么 $alpha_(s+1)$ 可被向量组 $alpha_1,alpha_2,dots.c,alpha_s$ 线性表示．

由于 $alpha_1,alpha_2,dots.c,alpha_s,alpha_(s+1)$ 线性相关，一定存在一个向量 $alpha_k$ 可被其余向量线性表示．

- 若 $1<=k<=s$，则 $alpha_1,alpha_2,dots.c,alpha_s$ 线性相关；
- 若 $k=s+1$，则这就是 $alpha_(s+1)$ 可被向量组 $alpha_1,alpha_2,dots.c,alpha_s$ 线性表示．

综上所述，原命题得证．

= P173 习题七 7
#prob[对任意的两个向量 $alpha_1,alpha_2$．证明：$ beta_1 = 2 alpha_1 - alpha_2,sp beta_2 = alpha_1 + alpha_2,sp beta_3 = -alpha_1 + 3 alpha_2 $线性相关．]

注意到 $beta_3 = -4/3 beta_1 + 5/3 beta_2$，所以向量组 $beta_1,beta_2,beta_3$ 线性相关．

= P173 习题七 8
#prob[设 $alpha_1,alpha_2$ 线性无关，$alpha_1+beta,alpha_2+beta$ 线性相关，证明：向量 $beta$ 可经 $alpha_1,alpha_2$ 线性表示，并求出该表达式．]

由于 $alpha_1 + beta,alpha_2 + beta$ 线性相关，故一定存在 $k in PP$ 使得
$
(alpha_1+beta) + k(alpha_2 + beta) = 0
=> alpha_1 + k alpha_2 = -(k+1) beta
$
若 $k=-1$，则 $alpha_1 + beta = alpha_2 + beta  => alpha_1 = alpha_2$，与 $alpha_1,alpha_2$ 线性无关矛盾．故 $k!=-1$，所以
$
beta = -1/(k+1) alpha_1 + -k/(k+1) alpha_2
$
即 $beta$ 可被 $alpha_1,alpha_2$ 线性表示，且表达式如上．

= P173 习题七 10
#prob[设向量 $beta$ 可经 $alpha_1,alpha_2,dots.c,alpha_s$ 线性表示，但不能经 $alpha_1,alpha_2,dots.c,alpha_(s-1)$ 线性表示，证明：向量组 $alpha_1,alpha_2,dots.c,alpha_s$ 与向量组 $alpha_1,alpha_2,dots.c,alpha_(s-1),beta$ 等价．]

不妨设 $beta = c_1 alpha_1 + c_2 alpha_2 + dots.c + c_s alpha_s$，其中 $c_1,c_2,dots.c,c_s$ 不全为零．由于不能被 $alpha_1,alpha_2,dots.c,alpha_(s-1)$ 线性表示，所以一定有 $c_s!=0$，也就是说
$
alpha_s = 1/c_s beta - c_1/c_s alpha_1 - c_2/c_s alpha_2 - dots.c - c_(s-1)/c_s alpha_(s-1)
$

其中各项系数中至少有 $display(1/c_s != 0)$．也就是说向量组 $alpha_s$ 能被 $alpha_1,alpha_2,dots.c,alpha_(s-1),beta$ 表示．

综上所述，向量组 $alpha_1,alpha_2,dots.c,alpha_s$ 中的每个向量能被向量组 $alpha_1,alpha_2,dots.c,alpha_(s-1),beta$ 线性表示，且向量组 $alpha_1,alpha_2,dots.c,alpha_(s-1),beta$ 中的每个向量可被 $alpha_1,alpha_2,dots.c,alpha_s$ 中的每个向量线性表示，即这两个向量组等价．