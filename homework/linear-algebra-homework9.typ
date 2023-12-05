#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Homework #9",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "November 26, 2023",
)

#let alpha = math.bold(math.alpha)
#let beta = math.bold(math.beta)
#let gamma = math.bold(math.gamma)
#let theta = math.bold(math.theta)
#let xi = math.bold(math.xi)
#let ds = math.dots.c
#let TT = math.upright("T")

= P104 习题四 19
#prob[证明：在线性空间 $RR^3$ 中，向量组 $alpha_1=display(mat(0,1,2))^TT,sp alpha_2 = display(mat(3,-1,0))^TT,sp alpha_3 = display(mat(3,1,0))^TT$ 与 $beta_1=display(mat(1,0,0))^TT,sp beta_2=display(mat(1,2,0))^TT,sp beta_3=display(mat(1,2,3))^TT$ 等价．]

= P104 习题四 21
#prob[判断题，略．]

= P105 习题四 23
#prob[
	设向量组 $alpha_1,alpha_2,alpha_3$ 为 $RR^3$ 的一个基，
	$
	beta_1 = 2 alpha_1 + 2k alpha_3,sp
	beta_2 = 2 alpha_2,sp
	beta_3 = alpha_1 + (k+1)alpha_3
	$

	(1) 证明向量组 $beta_1,beta_2,beta_3$ 也是 $RR^3$ 的一个基．
]

#prob[(2) 当 $k$ 为何值时，存在非零向量 $xi$ 在基 $alpha_1,alpha_2,alpha_3$ 与基 $beta_1,beta_2,beta_3$ 下的坐标相同，并求所有满足条件的 $xi$．]

= P105 习题四 25
#prob[
	已知 $RR^3$ 的两个基分别为
	$
	upright("(I)") quad& alpha_1=mat(1;1;1),sp alpha_2 = mat(1;0;-1),sp alpha_3=mat(1;0;1)\
	upright("(II)") quad& beta_1=mat(1;2;1),sp beta_2=mat(2;3;4),sp beta_3=mat(3;4;5)\
	$

	(1) 求从基 (I) 到基 (II) 的过渡矩阵 $bold(M)$；
]

#prob[(2) 设 $alpha$ 在基 (I) 下的坐标为 $display(mat(1,1,3))^TT$，求 $alpha$ 在基 (II) 下的坐标．]

= P105 习题四 26
#prob[
	设向量组 $alpha_1=display(mat(1,2,1))^TT,sp alpha_2=display(mat(1,3,2))^TT,sp alpha_3=display(mat(1,alpha,3))^TT$ 为 $RR^3$ 的一个基，$beta=display(mat(1,1,1))^TT$ 在这个基下的坐标为 $display(mat(b,c,1))^TT$．

	(1) 求 $a,b,c$ 的值．
]

#prob[(2) 证明 $alpha_2,alpha_3,beta$ 为 $RR^3$ 的一个基，并求 $alpha_2,alpha_3,beta$ 到 $alpha_1,alpha_2,alpha_3$ 的过渡矩阵．]

= P106 习题四 29
#prob[设矩阵 $bold(A) = display(mat(1,0,1;1,1,2;0,1,1;))$，$alpha_1,alpha_2,alpha_3$ 为线性无关的三元列向量，求向量组 $bold(A) alpha_1,bold(A) alpha_2,bold(A) alpha_3$ 的秩．]

= P174 习题七 21
#prob[设 $V$ 是实数域 $RR$ 上全体 $n$ 阶对角矩阵构成的线性空间（运算为矩阵的加法与数与矩阵乘法），求 $V$ 的一个基和维数．]

= P174 习题七 22
#prob[证明：如果线性空间中的每一个向量都可以唯一写成该空间中 $n$ 个给定向量的线性组合，那么该线性空间是 $n$ 维的．]

= P174 习题七 24
#prob[
	在线性空间 $PP^(2 times 2)$ 中，取如下两个基：

	(I) $display( bold(e)_11 = mat(1,0;0,0)\,sp bold(e)_12 = mat(0,1;0,0)\,sp bold(e)_21 = mat(0,0;1,0)\,sp bold(e)_22 = mat(0,0;0,1) )$．

	(II) $display( bold(A)_11 = mat(1,1;0,0)\,sp bold(A)_12 = mat(0,1;1,0)\,sp bold(A)_21 = mat(0,0;1,1)\,sp bold(A)_22 = mat(0,0;0,1) )$
．
	(1) 试求从基 (I) 到基 (II) 的过渡矩阵．
]

#prob[(2) 分别求矩阵 $bold(B) = display(mat(1,2;3,4))$ 在基 (I) 和基 (II) 下的坐标．]

= P174 习题七 25
#prob[设向量组 (I) $alpha_1,alpha_2,dots.c,alpha_n$ 及向量组 (II) $beta_1,beta_2,dots.c,beta_n$ 是数域 $PP$ 上的线性空间 $V$ 中的两个基．证明：从基 (I) 到基 (II) 的过渡矩阵和从基 (II) 到基 (I) 的过渡矩阵互为逆矩阵．]

= P174 习题七 26
#prob[
	设 $V$ 是数域 $PP$ 上的一个 $n$ 维线性空间，证明：

	(1) $PP^(n times n)$ 中的任意一个可逆矩阵均可以作为 $V$ 中某两个基之间的过渡矩阵．
]

#prob[
	(2) 若 $V$ 中的由 $n$ 个不同向量所形成的向量组和 $V$ 的一个基等价，则该向量组也是 $V$ 的一个基．
]

= P175 习题七 27
#prob[
	设 $W_1,W_2$ 是数域 $PP$ 上的线性空间 $V$ 的两个子空间，$alpha,beta$ 是 $V$ 中的两个向量，其中 $alpha in W_2$ 但 $alpha in.not W_1,beta in.not W_2$，证明：

	(1) $forall c in PP,sp beta + c alpha in.not W_2$．
]

#prob[
	(2) 至多有一个 $c in PP$ 使得 $beta + c alpha in W_1$．
]

= P175 习题七 28
#prob[
	设 $V_1,V_2$ 均为线性空间 $V$ 的真子空间．

	(1) 证明：存在 $alpha in V$ 使得 $alpha in.not V_1 union V_2$．
]

#prob[
	(2) 如果 $V = RR^2$，请指出上述结论 (1) 的几何意义．
]

= P175 习题七 30
#prob[
	设向量组 $alpha_1,alpha_2,dots.c,alpha_n$ 线性无关，令
	$
	beta &= sum_(i=1)^s a_(i j) alpha_i,quad j=1,2,dots.c,s\
	bold(A) &= (a_(i j))_(s times s) in PP^(s times s)
	$
	证明：$r display(mat(beta_1,beta_2,dots.c,beta_s)) = r(bold(A))$．
]