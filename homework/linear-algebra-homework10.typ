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

= P107 习题四 35
#prob[
	问在 $PP^n$ 中，分别满足下列条件的全体 $n$ 元向量 $(x_1,x_2,dots.c,x_n)$ 的集合能否各自构成 $PP^n$ 的一个子空间。

	(1) $x_1+2x_2+dots.c+n x_n=0$。
]

#prob[(2) $x_1x_2 dots.c x_n=0$。]

#prob[(3) $x_(i+2) = x_(i+1) + 2 x_i, sp i=1,2,dots.c,n-2$。]

= P107 习题四 36
#prob[
  设 $alpha_1=display(mat(1,1,0,0))^TT$，$alpha_2=display(mat(1,0,1,1))^TT$，$beta_1=display(mat(2,-1,3,3))^TT$，$beta_2=display(mat(0,1,-1,-1))^TT$，证明 $L(alpha_1,alpha_2) = L(beta_1,beta_2)$。
]

= P107 习题四 40
#prob[
  设 $bold(A) = display(mat(1,-2,1,3;9,-5,2,8))$。求一个 $4 times 2$ 矩阵 $bold(B)$，使 $bold(A B) = bold(O)$ 且 $r(bold(B)) = 2$。
]

= P107 习题四 41
#prob[
  设 $bold(A) = display(mat(alpha_1,alpha_2,alpha_3))$ 为三阶矩阵。若 $alpha_1,alpha_2$ 线性无关，且 $alpha_3 = -alpha_1 + 2 alpha_2$，求线性方程组 $bold(A X) = bold(O)$ 的通解。
]

= P107 习题四 43
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
  的一个基础解系。
]

= P108 习题四 44
#prob[求一个齐次线性方程组，使它的基础解系为 $xi_1=display(mat(0,1,1,2))^TT,sp xi_2 = display(mat(2,1,1,0))^TT$。]

= P108 习题四 49
#prob[
  设 $bold(A) = display(mat(1,-2,3,-4;0,1,-1,1;1,2,0,-3))$，$bold(E)$ 为单位矩阵。

  (1) 求方程组 $bold(A X) = bold(O)$ 的一个基础解系。
]

#prob[(2) 求满足 $bold(A B) = bold(E)$ 的所有矩阵 $bold(B)$。]

= P108 习题四 50
#prob[
  已知非齐次线性方程组
  $
  cases(
    x_1+x_2+x_3+x_4=-1,
    4x_1+3x_2+5x_3-x_4=-1,
    a x_1+x_2+3x_3+b x_4=1,
  )
  $
  有三个线性无关的解。
  
  (1) 证明：方程组的系数矩阵 $bold(A)$ 的秩 $r(bold(A)) = 2$。
]

#prob[
  (2) 求 $a,b$ 的值及方程组的解。
]

= P109 习题四 52
#prob[
  设 $eta_0$ 是非齐次线性方程组的一个解，$eta_1,eta_2,dots.c,eta_t$ 是它的导出组的一个基础解系。令
  $
  nu_1=eta_0,sp nu_2=eta_1+eta_0,sp dots.c,sp nu_(t+1) = eta_t+eta_0
  $
  证明：该线性方程组的任意一个解 $nu$ 都可以写成
  $
  nu = c_1 nu_1 + c_2 nu_2 + dots.c + c_(t+1) nu_(t+1)
  $
  其中 $c_1+c_2+dots.c+c_(t+1) = 1$。
]

= P109 习题四 53(1)
#prob[
  判断：已知给定向量 $bold(X)_0$ 是线性方程组 $bold(A X) = bold(b)$ 的一个解，则存在向量 $bold(X)_1,bold(X)_2$ 使得 $bold(X)_0=bold(X)_1+bold(X)_2$，且 $bold(A X)_1=bold(b),sp bold(A X)_2=bold(O)$。
]

= P109 习题四 53(2)
#prob[
  判断：由一个方程 $x_2+x_3=0$ 组成的齐次线性方程组的一个基础解系由一个解向量构成。
]

= P110 补充题四 2
#prob[试证明：$PP^n$ 的任意一个子空间 $W$ 必是某一个 $n$ 元齐次线性方程组的解空间。]

= P175 习题七 27
#prob[
  设 $W_1,W_2$ 是数域 $PP$ 上的线性空间 $V$ 的两个子空间。$alpha,beta$ 是 $V$ 中的两个向量，其中 $alpha in W_2$，但 $alpha in.not W_1,beta in.not W_2$，证明：

  (1) $forall c in PP,sp beta + c alpha in.not W_2$。
]

#prob[
  (2) 至多有一个 $c in PP$，使得 $beta + c alpha in W_1$。
]


= P175 习题七 28
#prob[
  设 $V_1,V_2$ 均为线性空间 $V$ 的真子空间。

  (1) 证明：存在 $alpha in V$ 使得 $alpha in.not V_1 union V_2$。
]

#prob[
  (2) 如果 $V = RR^2$，请指出上述结论 (1) 的几何意义。
]

= P175 习题七 30
#prob[
  设向量组 $alpha_1,alpha_2,dots.c,alpha_s$ 线性无关，令
  $
  beta_j = sum_(i=1)^s a_(i j) alpha_i,quad
  j=1,2,dots.c,s,quad
  bold(A) = (a_(i j))_(s times s) in PP^(s times s)
  $
  证明：$r display(mat(beta_1,beta_2,dots.c,beta_s)) = r(bold(A))$。
]

= P175 补充题七 2
#prob[
  设 $V$ 是数域 $PP$ 上的一个 $n$ 维线性空间，试证明：$PP^(n times n)$ 中的可逆矩阵和 $V$ 的基一一对应。
]

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
  为 $n$ 阶 Jordan 块。

  (1) 求出所有可与 $bold(J)$ 交换的复矩阵。
]

#prob[
  (2) 设 $W$ 为由所有可与 $bold(J)$ 交换的复矩阵构成的集合，证明 $W$ 是线性空间 $CC^(n times n)$ 的一个线性子空间，并求其维数。
]

#prob[
  (3) 证明：如果 $bold(A)$ 与 $bold(J)$ 可交换，那么存在复系数多项式 $f(x)$ 使得 $f(bold(J)) = bold(A)$。
]

= P176 补充题七 4
#prob[
  设 $W$ 是 $PP^(n times n)$ 的全体形如 $bold(A B) - bold(B A) sp (A,B in PP^(n times n))$ 的矩阵所生成的子空间，证明：$dim W = n^2-1$。
]

= P176 补充题七 6
#prob[
  设 $V_1,V_2,dots.c,V_m$ 均为线性空间 $V$ 的真子空间，证明：存在 $V$ 的一个基，使得其中任一个向量都不在集合 $display(op(union)_(i=1)^m V_i)$ 中。
]
