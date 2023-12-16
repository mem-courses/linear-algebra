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

= P110 补充题四 1(1)
#prob[试证明：$PP^(n times n)$ 中的任意一个可逆矩阵均可以作为 $PP^n$ 中某两个之间的过渡矩阵。]
= P110 补充题四 1(2)
#prob[试证明：若 $PP^(n)$ 中的由 $n$ 个不同向量所形成的向量组和 $PP^n$ 的一个基等价，则该向量组的任何一个排列也是 $PP^n$ 的一个基。]
= P110 补充题四 1(3)
#prob[试证明：$PP^(n times n)$ 中的可逆矩阵和 $PP^n$ 的基一一对应。]

= P110 补充题四 3
#prob[
	设 $AA,BB$ 是两个 $n$ 阶正交矩阵，且 $|AA BB| = -1$、试证明：
	
	(1) $|AA^TT BB| = |AA BB^TT| = |AA^TT BB^TT| = -1$。
]

#prob[
	(2) $|AA + BB| = 0$。
]

= P184 习题八 2
#prob[
	问如下定义的映射是不是一个内积：（这里 $alpha = vecn(a,n)^TT,sp beta = vecn(b,n)^TT$ 为 $RR^n$ 中的任意两个向量。）

	(1) $(alpha,beta) = display(sqrt(sum_(i=1)^n a_i^2 b_i^2))$。
]

#prob[(2) $(alpha,beta) = display((sum_(i=1)^n a_i) (sum_(j=1)^n b_j))$。]

#prob[(3) $(alpha,beta) = display(sum_(i=1)^n c_i a_i b_i) sp (c_i>0,sp i=1,2,dots.c,n)$。]

= P185 习题八 4
#prob[
	欧式空间 $V$ 中的两个向量 $alpha$ 和 $beta$ 的距离定义为 $d(alpha,beta) = |alpha-beta|$，证明：
	$
	d(alpha,gamma) <= d(alpha, beta) + d(beta, gamma)
	$
]

= P185 习题八 5
#prob[
	证明：在一个具有内积 $(dot,dot)$ 的欧式空间内，对任意向量 $alpha,beta$，以下等式成立：

	(1) $|alpha+beta|^2 + |alpha-beta|^2 = 2 |alpha|^2 + 2 |beta|^2$。
]

#prob[(2) $(alpha,beta) = display(1/4 |alpha+beta|^2 - 1/4 |alpha-beta|^2)$。]

= P185 习题八 6
#prob[
	(1) 证明：线性空间 $RR[x]_3$ 在如下定义的映射下成为内积空间：
	$
	(f(x),g(x)) = integral_(-1)^1 f(x) g(x) upright("d") x,quad
	forall f(x),g(x) in RR[x]_3
	$
]

#prob[(2) 在如 (1) 定义的内积空间中求一个多项式 $f(x)$ 使得 $f(x)$ 与 $1+x,1-x$ 均正交。]

 P184 习题8 7 8 10 11 

  补充题8 ：1 3 4 5 6