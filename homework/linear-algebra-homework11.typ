#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Homework #11",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "December 16, 2023",
)

#let AA = math.bold("A")
#let BB = math.bold("B")
#let TT = math.upright("T")
#let alpha = math.bold(math.alpha)
#let beta = math.bold(math.beta)
#let gamma = math.bold(math.gamma)
#let epsilon = math.bold(math.epsilon)
#let xi = math.bold(math.xi)

= P110 补充题四 1(1)
#prob[试证明：$PP^(n times n)$ 中的任意一个可逆矩阵均可以作为 $PP^n$ 中某两个之间的过渡矩阵．]

= P110 补充题四 1(2)
#prob[试证明：若 $PP^(n)$ 中的由 $n$ 个不同向量所形成的向量组和 $PP^n$ 的一个基等价，则该向量组的任何一个排列也是 $PP^n$ 的一个基．]

= P110 补充题四 1(3)
#prob[试证明：$PP^(n times n)$ 中的可逆矩阵和 $PP^n$ 的基一一对应．]

= P110 补充题四 3
#prob[
	设 $AA,BB$ 是两个 $n$ 阶正交矩阵，且 $|AA BB| = -1$、试证明：
	
	(1) $|AA^TT BB| = |AA BB^TT| = |AA^TT BB^TT| = -1$．
]

#prob[
	(2) $|AA + BB| = 0$．
]

= P183 习题八 2
#prob[
	问如下定义的映射是不是一个内积：（这里 $alpha = vecn(a,n)^TT,sp beta = vecn(b,n)^TT$ 为 $RR^n$ 中的任意两个向量．）

	(1) $(alpha,beta) = display(sqrt(sum_(i=1)^n a_i^2 b_i^2))$．
]

#prob[(2) $(alpha,beta) = display((sum_(i=1)^n a_i) (sum_(j=1)^n b_j))$．]

#prob[(3) $(alpha,beta) = display(sum_(i=1)^n c_i a_i b_i) sp (c_i>0,sp i=1,2,dots.c,n)$．]

= P184 习题八 4
#prob[
	欧式空间 $V$ 中的两个向量 $alpha$ 和 $beta$ 的距离定义为 $d(alpha,beta) = |alpha-beta|$，证明：
	$
	d(alpha,gamma) <= d(alpha, beta) + d(beta, gamma)
	$
]

= P184 习题八 5
#prob[
	证明：在一个具有内积 $(dot,dot)$ 的欧式空间内，对任意向量 $alpha,beta$，以下等式成立：

	(1) $|alpha+beta|^2 + |alpha-beta|^2 = 2 |alpha|^2 + 2 |beta|^2$．
]

#prob[(2) $(alpha,beta) = display(1/4 |alpha+beta|^2 - 1/4 |alpha-beta|^2)$．]

= P184 习题八 6
#prob[
	(1) 证明：线性空间 $RR[x]_3$ 在如下定义的映射下成为内积空间：
	$
	(f(x),g(x)) = integral_(-1)^1 f(x) g(x) upright("d") x,quad
	forall f(x),g(x) in RR[x]_3
	$
]

#prob[(2) 在如 (1) 定义的内积空间中求一个多项式 $f(x)$ 使得 $f(x)$ 与 $1+x,1-x$ 均正交．]

= P184 习题八 7
#prob[
	设 $seqn(alpha,n)$ 是具有内积 $(dot,dot)$ 的欧式空间 $V$ 的一个基，证明：

	(1) 如果 $gamma in V$，且 $(gamma,alpha_i)=0 sp(i=1,2,dots.c,n)$，那么 $gamma = theta$．
]

#prob[(2) 如果 $gamma_1,gamma_2 in V$，且 $forall alpha in V$ 有 $(gamma_1,alpha) = (gamma_2,alpha)$，那么 $gamma_1=gamma_2$．]

= P184 习题八 8
#prob[在例 2 定义的内积空间 $C_([-1,1])$ 中，利用 Schmidt 正交化过程将向量组 $epsilon_1=1,sp epsilon_2=x, epsilon_3=x^2$ 改造成一个标准正交向量组．]

= P184 习题八 10(1)
#prob[
	设 $xi_1,xi_2,xi_3$ 是三维欧式空间中的一个标准正交基，证明：
	$
	alpha_1 = 1/3 (2 xi_1 + 2 xi_2 - xi_3)\
	alpha_2 = 1/3 (2 xi_1 - xi_2 + 2 xi_3)\
	alpha_3 = 1/3 (xi_1 - 2 xi_2 - 2 xi_3)\
	$
	也是一个标准正交基．
]

= P184 习题八 10(2)
#prob[
	设 $xi_1,xi_2,xi_3,xi_4,xi_5$ 是五维欧式空间 $V$ 中的一个标准正交基，令：
	$
	alpha_1 = xi_1 + xi_5,quad
	alpha_2 = xi_1 - xi_2 + xi_4,quad
	alpha_3 = 2 xi_1 + xi_2 + xi_3
	$
	求 $V_1 = L(alpha_1,alpha_2,alpha_3)$ 的一个标准正交基．
]

= P184 习题八 11
#prob[
	试给出数域 $RR$ 上的线性空间 $CC^n$ 的一个内积，使之成为一个欧式空间．
]

= P185 补充题八 1
#prob[
	设 $seqn(alpha,m)$ 是具有内积 $(dot,dot)$ 的 $n$ 维欧式空间 $V$ 中的一组向量，称
	#set math.mat(delim: "|")
	$
	G(seqn(alpha,m)) = mat(
		(alpha_1,alpha_1),(alpha_1,alpha_2),dots.c,(alpha_1,alpha_m);
		(alpha_2,alpha_1),(alpha_2,alpha_2),dots.c,(alpha_2,alpha_m);
		dots.v,dots.v,,dots.v;
		(alpha_m,alpha_1),(alpha_m,alpha_2),dots.c,(alpha_m,alpha_m);
	)
	$
	#set math.mat(delim: "(")
	为 Gram 行列式，试证明：$seqn(alpha,m)$ 线性相关当且仅当 $G(seqn(alpha,m)) = 0$．
]

= P185 补充题八 3
#prob[
	设 $seqn(alpha,n)$ 是具有内积 $(dot,dot)$ 的 $n$ 维欧式空间 $V$ 的一个基，证明：这个基为 $V$ 的一个标准正交基的充分必要条件为对于 $V$ 中任意两个向量 $alpha,beta$，若
	$
	alpha &= x_1 alpha_1 + x_2 alpha_2 + dots.c + x_n alpha_n
	beta  &= y_1 alpha_1 + y_2 alpha_2 + dots.c + y_n alpha_n
	$
	则必有 $(alpha,beta) = x_1 y_1 + x_2 y_2 + dots.c + x_n y_n$．
]

= P185 补充题八 4
#prob[
	设 $seqn(alpha,n)$ 是具有内积 $(dot,dot)$ 的 $n$ 维欧式空间 $V$ 的一个基，证明：这个基是 $V$ 中的一个标准正交基当且仅当 $forall alpha in V$，有
	$
	alpha = (alpha,alpha_1) alpha_1 + (alpha,alpha_2) alpha_2 + dots.c + (alpha,alpha_n) alpha_n
	$
]

= P185 补充题八 5
#prob[
	设 $seqn(alpha,s) in RR^n$ 线性无关，令 $bold(A) = vecn(alpha,s)$．设 $seqn(beta,n-s)$ 为齐次线性方程组 $AA^TT bold(X) = bold(O)$ 的一个基础解系，证明：
	$
	seqn(alpha,s),seqn(beta,n-s)
	$
	为 $RR^n$ 的一个基．
]

= P185 补充题八 6
#prob[
	设 $alpha,beta$ 是具有内积 $(dot,dot)$ 的 $n$ 维欧式空间 $V$ 中的两个不同的向量且 $|alpha| = |beta| = 1$，证明：$(alpha,beta) != 1$．
]