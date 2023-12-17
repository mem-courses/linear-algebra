#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Homework #10",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "December 6, 2023",
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

= P107 习题四 35 #ac
#prob[
	问在 $PP^n$ 中，分别满足下列条件的全体 $n$ 元向量 $(x_1,x_2,dots.c,x_n)$ 的集合能否各自构成 $PP^n$ 的一个子空间．

	(1) $x_1+2x_2+dots.c+n x_n=0$．
]

设 $alpha=vecn(x,n),sp beta=vecn(y,n)$，有：
$
(k x_1) + 2(k x_2) + dots.c + n(k x_n) = k (x_1+2x_2+dots.c+n x_n) = 0\
(x_1+y_1) + 2(x_2+y_2) + dots.c + n(x_n+y_n) = (x_1+2x_2+dots.c+n x_n) + (y_1+2y_2+dots.c+n y_n) = 0
$

所以该线性空间是 $PP^n$ 的子空间．

#prob[(2) $x_1x_2 dots.c x_n=0$．]

取 $n=2$，$alpha=display(vec(1,0)),sp beta=display(mat(0,1))$，则 $alpha+beta = display(vec(1,1))$ 不满足条件．

所以该线性空间不是 $PP^n$ 的子空间．

#prob[(3) $x_(i+2) = x_(i+1) + 2 x_i, sp i=1,2,dots.c,n-2$．]

$
(x_(i+2) + y_(i+2)) = x_(i+1) + 2x_i + y_(i+1) + 2y_i = (x_(i+1) + y_(i+1)) + 2(x_i + y_i)\
(k x_(i+2)) = k(x_(i+1) + 2 x_i) = (k x_(i+1)) + 2(k x_i)\
$

所以该线性空间是 $PP^n$ 的子空间．

= P107 习题四 36 #ac
#prob[
  设 $alpha_1=display(mat(1,1,0,0))^TT$，$alpha_2=display(mat(1,0,1,1))^TT$，$beta_1=display(mat(2,-1,3,3))^TT$，$beta_2=display(mat(0,1,-1,-1))^TT$，证明 $L(alpha_1,alpha_2) = L(beta_1,beta_2)$．
]

$
&beta_1 = -alpha_1 + 3 alpha_2 quad quad
&&beta_2 = alpha_1 - alpha_2\
&alpha_1 = 1/2(beta_1 + 3beta_2) quad quad
&&alpha_2 = 1/2(beta_1 + beta_2)\
$

故向量组 $alpha_1,alpha_2$ 与向量组 $beta_1,beta_2$ 等价，故 $L(alpha_1,alpha_2) = L(beta_1,beta_2)$．

= P107 习题四 40 #wa
#prob[
  设 $bold(A) = display(mat(1,-2,1,3;9,-5,2,8))$．求一个 $4 times 2$ 矩阵 $bold(B)$，使 $bold(A B) = bold(O)$ 且 $r(bold(B)) = 2$．
]

相当于解齐次线性方程组 $bold(A X) = bold(O)$，对矩阵应用行等列变换得：
$
mat(
  1,-2,1,3,0;
  9,-5,2,8,0;
) &-> mat(
  1,-2,1,3,0;
  0,13,-7,-19,0;
) -> mat(
  1,-2,1,3,0;
  0,1,-7/13,-19/13,0;
)\ &-> mat(
  1,0,-1/13,1/13,0;
  0,1,-7/13,-19/13,0;
)
$

故 $display(bold(X)^TT = k_1 mat(1/13,7/13,1,0) + k_2 mat(-1/13,19/13,0,1) )$ 为齐次线性方程组的通解，为使 $r(bold(B))=2$，不妨取：

$
bold(B) = mat(
  1,7,13,0;
  -1,19,0,13;
)^TT
$

#warn[初等行变换算错了！！！]

= P107 习题四 41 #ac
#prob[
  设 $bold(A) = display(mat(alpha_1,alpha_2,alpha_3))$ 为三阶矩阵．若 $alpha_1,alpha_2$ 线性无关，且 $alpha_3 = -alpha_1 + 2 alpha_2$，求线性方程组 $bold(A X) = bold(O)$ 的通解．
]

设 $bold(X) = display(mat(x_1,x_2,x_3))^TT in PP^3$，则有：

$
&x_1 alpha_1 + x_2 alpha_2 + x_3 (-alpha_1 + 2 alpha_2) = theta\
=> &(x_1-x_3)alpha_1 + (x_2+ 2x_3) alpha_2 = theta
$

由于 $alpha_1$ 和 $alpha_2$ 线性无关，故只能有 $x_1-x_3=x_2+2x_3=0$，所以 $bold(X) = display(mat(t,-2t,t))^TT, sp t in RR$．

= P107 习题四 43 #wa
#prob[
  已知行列式
  #set math.mat(delim: "|")
  $
  D = mat(
    a_11,a_12,dots.c,a_(1 n);
    a_21,a_22,dots.c,a_(2 n);
    dots.v,dots.v,,dots.v;
    a_(n 1),a_(n 2),dots.c,a_(n n);
  ) != 0
  $
  #set math.mat(delim: "(")
  证明 $display(mat(A_11,A_12,dots.c,A_(1 n))^TT)$ 是齐次线性方程组
  $
  cases(
    a_21 x_1 + a_22 x_2 + dots.c + a_(2 n) x_n &= 0,
    a_31 x_1 + a_32 x_2 + dots.c + a_(3 n) x_n &= 0,
    dots.c,
    a_(n 1) x_1 + a_(n 2) x_2 + dots.c + a_(n n) x_n &= 0,
  )
  $
  的一个基础解系．
]

代入验证得 $display(mat(A_11,A_12,dots.c,A_(1 n))^TT)$ 是该线性方程组的一个解．

考虑到 $bold(A) in PP^(n times (n-1))$，$r(bold(A))<=n-1$；再由于 $D!=0$，故 $r(bold(A))>=n-1$．故 $r(bold(A))=n-1$．

设 $W$ 为该线性方程组的解空间，则 $dim W = n-r=1$．故 $display(mat(A_11,A_12,dots.c,A_(1 n))^TT)$ 就是该线性方程组的一个基础解系．

= P108 习题四 44 #ac
#prob[求一个齐次线性方程组，使它的基础解系为 $xi_1=display(mat(0,1,1,2))^TT,sp xi_2 = display(mat(2,1,1,0))^TT$．]

取 $eta_1=display(mat(2,1,1,0))^TT,sp eta_2=display(mat(-1,0,0,1))^TT$，则 $L(eta_1,eta_2) = L(xi_1,xi_2)$，故 $eta_1,eta_2$ 同样是该齐次线性方程组的基础解系．构造如下：
$
cases(
  x_1-2x_3+x_4=0,
  x_2-x_3=0
)
$

= P108 习题四 49 #pc
#prob[
  设 $bold(A) = display(mat(1,-2,3,-4;0,1,-1,1;1,2,0,-3))$，$bold(E)$ 为单位矩阵．

  (1) 求方程组 $bold(A X) = bold(O)$ 的一个基础解系．
]

对系数矩阵应用初等行变换得：

$
mat(1,-2,3,-4;0,1,-1,1;1,2,0,-3)
->
mat(1,0,0,1;0,1,0,-2;0,0,1,-3)
$

故其基础解向量为 $alpha=display(mat(-1,2,3,1))^TT$．

#prob[(2) 求满足 $bold(A B) = bold(E)$ 的所有矩阵 $bold(B)$．]

设 $bold(B) = display(mat(beta_1,beta_2,beta_3))$，则：

$
beta_1 = display((1,0,0,0))^TT + c_1 alpha\
beta_2 = display((0,1,0,0))^TT + c_2 alpha\
beta_3 = display((0,0,1,0))^TT + c_3 alpha\
$

即：

$
bold(B) = mat(
  1-c_1,-c_2,-c_3;
  2c_1,1+2c_2,2c_3;
  3c_1,3c_2,1+3c_3;
  c_1,c_2,c_3
) quad (c_1,c_2,c_3 in RR)
$

#warn[
  应分别求出特解代入（不能想当然），并且基础解系的系数要相同．
]

= P108 习题四 50 #ac
#prob[
  已知非齐次线性方程组
  $
  cases(
    x_1+x_2+x_3+x_4=-1,
    4x_1+3x_2+5x_3-x_4=-1,
    a x_1+x_2+3x_3+b x_4=1,
  )
  $
  有三个线性无关的解．
  
  (1) 证明：方程组的系数矩阵 $bold(A)$ 的秩 $r(bold(A)) = 2$．
]

设 $r(bold(A)) = r$，依题意，应有 $r(bold(A)) = r(overline(bold(A))) = r$．由于其有三个线性无关的解，故解的形式应为：

$
bold(X) = eta_0 + k_1 eta_1 + k_2 eta_2
$

其中，$L(eta_1,eta_2)$ 是 $bold(A X) = bold(O)$ 的基础解系．即：$r(bold(A)) = 4-2 = 2$．

#note[不太严谨？]

#prob[
  (2) 求 $a,b$ 的值及方程组的解．
]

$
bold(A) -> mat(
  1,1,1,1;
  0,-1,1,-8;
  a-2,0,0,b+3;
)
$

由 (1) 知 $r(bold(A)) = 2$，故 $a=2,b=-3$．方程组的解为：

$
bold(X) = mat(-3,2,0,0)^TT + k_1 mat(0,-2,1,0)^TT + k_2 mat(6,-8,0,1)^TT
$

= P109 习题四 52 #ac
#prob[
  设 $eta_0$ 是非齐次线性方程组的一个解，$eta_1,eta_2,dots.c,eta_t$ 是它的导出组的一个基础解系．令
  $
  nu_1=eta_0,sp nu_2=eta_1+eta_0,sp dots.c,sp nu_(t+1) = eta_t+eta_0
  $
  证明：该线性方程组的任意一个解 $nu$ 都可以写成
  $
  nu = c_1 nu_1 + c_2 nu_2 + dots.c + c_(t+1) nu_(t+1)
  $
  其中 $c_1+c_2+dots.c+c_(t+1) = 1$．
]

$
nu&=(c_1+c_2+dots.c+c_(t+1))eta_0 + (c_2+c_3+dots.c+c_(t+1))eta_1 + dots.c + (c_(t+1)) eta_t\
&=eta_0 + (c_2+c_3+dots.c+c_(t+1))eta_1 + dots.c + (c_(t+1)) eta_t
$

其中，由于矩阵 $display(mat(1,1,dots.c,1;0,1,dots.c,1;dots.v,dots.v,,dots.v;0,0,dots.c,1)_(n times n))$ 满秩，所以
$
L(seqn(eta,n))
= L(eta_1+eta_2+dots.c+eta_n,eta_2+eta_3+dots.c+eta_n,dots.c+eta_n)
$

即任意一个解都可以被写成上述形式．

= P110 补充题四 2 #pc
#prob[试证明：$PP^n$ 的任意一个子空间 $W$ 必是某一个 $n$ 元齐次线性方程组的解空间．]

设 $V$ 是 $PP^n$ 在数域 $PP$ 下的线性空间，则 $seqn(xi,n)$ 是其常用基．

设 $dim W = r$，则 $xi_(i_1),xi_(i_2),dots.c,xi_(i_r)$ 是其一组基．

考虑所以满足 $x_j=0\,quad&(j!=i_1 and j!=i_2 and dots.c and j!=i_r)$ 构成的 $n$ 元齐次线性方程组，$W$ 即是其解空间．

#note[学习一下答案的做法．]

= P175 补充题七 2 #wa
#prob[
  设 $V$ 是数域 $PP$ 上的一个 $n$ 维线性空间，试证明：$PP^(n times n)$ 中的可逆矩阵和 $V$ 的基一一对应．
]

设 $seqn(xi,n)$ 是 $V$ 的一组基，取 $bold(A) = vecn(xi,n)$，则 $r(bold(A))=r{seqn(xi,n)}=n$，所以 $bold(A)$ 是可逆矩阵．

TBD

#note[*为了证明双射，可以分别证明单射和满射．*]

#warn[后面的题目难度有点大，在习题课上听了一遍理解了点皮毛，就不具体纠错了．]

= P176 补充题七 3
#prob[
  设 $lambda$ 为复数，通常称
  $
  bold(J) = mat(
    lambda,1,0,dots.c,0,0;
    0,lambda,1,dots.c,0,0;
    0,0,lambda,dots.c,0,0;
    dots.v,dots.v,dots.v,,dots.v,dots.v;
    0,0,0,dots.c,lambda,1;
    0,0,0,dots.c,0,lambda;
  )_(n times n)
  $
  为 $n$ 阶 Jordan 块．

  (1) 求出所有可与 $bold(J)$ 交换的复矩阵．
]

#prob[
  (2) 设 $W$ 为由所有可与 $bold(J)$ 交换的复矩阵构成的集合，证明 $W$ 是线性空间 $CC^(n times n)$ 的一个线性子空间，并求其维数．
]

#prob[
  (3) 证明：如果 $bold(A)$ 与 $bold(J)$ 可交换，那么存在复系数多项式 $f(x)$ 使得 $f(bold(J)) = bold(A)$．
]

= P176 补充题七 4
#prob[
  设 $W$ 是 $PP^(n times n)$ 的全体形如 $bold(A B) - bold(B A) sp (A,B in PP^(n times n))$ 的矩阵所生成的子空间，证明：$dim W = n^2-1$．
]

= P176 补充题七 6
#prob[
  设 $V_1,V_2,dots.c,V_m$ 均为线性空间 $V$ 的真子空间，证明：存在 $V$ 的一个基，使得其中任一个向量都不在集合 $display(op(union)_(i=1)^m V_i)$ 中．
]
