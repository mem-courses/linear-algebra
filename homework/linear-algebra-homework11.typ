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
#let EE = math.bold("E")
#let TT = math.upright("T")
#let alpha = math.bold(math.alpha)
#let beta = math.bold(math.beta)
#let gamma = math.bold(math.gamma)
#let eta = math.bold(math.eta)
#let theta = math.bold(math.theta)
#let epsilon = math.bold(math.epsilon)
#let xi = math.bold(math.xi)
#let dx = math.upright("d") + math.italic("x")

= P110 补充题四 1(2) #ac
#prob[试证明：若 $PP^(n)$ 中的由 $n$ 个不同向量所形成的向量组和 $PP^n$ 的一个基等价，则该向量组的任何一个排列也是 $PP^n$ 的一个基．]

即证明该向量组线性无关。

反设该向量组（不放设为 $seqn(alpha,n)$）线性相关，则 $dim L(seqn(alpha,n)) < n$，则必不可能与 $PP^n$ 的基等价，矛盾。

= P110 补充题四 3 #ac
#prob[
	设 $AA,BB$ 是两个 $n$ 阶正交矩阵，且 $|AA BB| = -1$，试证明：
	
	(1) $|AA^TT BB| = |AA BB^TT| = |AA^TT BB^TT| = -1$．
]

$
|AA BB| = |AA| dot |BB| = |AA^TT| dot |BB| = |AA^TT BB| = -1
$

其余两项同理．

#prob[
	(2) $|AA + BB| = 0$．
]

根据正交矩阵的性质，有 $AA^TT AA = AA^(-1)AA = EE$．

$
|AA BB| dot |AA + BB|
= |AA^TT AA BB^TT + AA^TT BB BB^TT|
= |BB^TT + AA^TT|
= |(BB + AA)^TT|
= |AA + BB|
$

由于 $|AA + BB| = -|AA + BB|$，故只可能 $|AA + BB| = 0$．

= P183 习题八 2(1) #ac
#prob[判断如下定义的映射是不是一个内积：$ (alpha,beta) = display(sqrt(sum_(i=1)^n a_i^2 b_i^2)) $]

$
(alpha+beta, gamma) &= sqrt(sum_(i=1)^n (a_i + b_i)^2 y_i^2)\
(alpha,gamma) + (beta,gamma) &= sqrt(sum_(i=1)^n a_i^2 y_i^2) + sqrt(sum_(i=1)^n b_i^2 y_i^2)
$
考虑
$
&(alpha+beta,gamma)^2 - ((alpha,gamma) + (beta,gamma))^2 \
=& sum_(i=1)^n (a_i^2 + 2 a_i b_i + b_i^2) y_i^2
   - sum_(i=1)^n a_i^2 y_i^2
	 - sum_(i=1)^n b_i^2 y_i^2
	 - 2 sqrt((sum_(i=1)^n a_i^2 y_i^2)(sum_(i=1)^n b_i^2 y_i^2) )\
=& 2 (sum_(i=1)^n a_i b_i y_i^2 - sqrt((sum_(i=1)^n a_i^2 y_i^2)(sum_(i=1)^n b_i^2 y_i^2)))
$
不一定为 $0$，故该映射不是内积．

= P183 习题八 2(2) #wa
#prob[判断如下定义的映射是不是一个内积：$ (alpha,beta) = display((sum_(i=1)^n a_i) (sum_(j=1)^n b_j)) $]

$
(alpha,beta) = (sum_(i=1)^n a_i) (sum_(j=1)^n b_j) = (sum_(j=1)^n b_j) (sum_(i=1)^n a_i) = (beta,alpha)\
(alpha,alpha) = (sum_(i=1)^n a_i) (sum_(j=1)^n a_j) = (sum_(i=1)^n a_i)^2 >= 0\
(k alpha, beta) = (sum_(i=1)^n k a_i) (sum_(j=1)^n b_j) = k (sum_(i=1)^n a_i) (sum_(j=1)^n b_j) = k (alpha, beta)\
(alpha+beta, gamma) = (sum_(i=1)^n (a_i + b_i)) (sum_(j=1)^n y_j) = (sum_(i=1)^n a_i + sum_(i=1)^n b_i) (sum_(j=1)^n y_j) = (alpha,gamma) + (beta,gamma)\
$
故该映射是内积．

#warn[
	不满足 $(alpha,alpha) = 0$ 时 $alpha = theta$．所以该映射不是内积．
]

= P183 习题八 2(3) #ac
#prob[判断如下定义的映射是不是一个内积：$ (alpha,beta) = display(sum_(i=1)^n c_i a_i b_i) sp (c_i>0,sp i=1,2,dots.c,n) $]

$
(alpha,beta) = sum_(i=1)^n c_i a_i b_i = sum_(i=1)^n c_i b_i a_i = (beta,alpha)\
(alpha,alpha) = sum_(i=1)^n c_i a_i a_i = sum_(i=1)^n c_i a_i^2 >= 0\
(k alpha, beta) = sum_(i=1)^n c_i (k a_i) b_i = k sum_(i=1)^n c_i a_i b_i = k (alpha,beta)\
(alpha+beta,gamma) = sum_(i=1)^n c_i (a_i+b_i) y_i = sum_(i=1)^n c_i a_i y_i + sum_(i=1)^n c_i b_i y_i = (alpha,gamma) + (beta,gamma)
$
故该映射是内积．

= P184 习题八 4 #ac
#prob[
	欧式空间 $V$ 中的两个向量 $alpha$ 和 $beta$ 的距离定义为 $d(alpha,beta) = |alpha-beta|$，证明：
	$
	d(alpha,gamma) <= d(alpha, beta) + d(beta, gamma)
	$
]

即证：
$
||alpha - gamma|| <= ||alpha - beta|| + ||beta - gamma||
$
取 $eta_1 = (alpha-beta),sp eta_2 = (beta - gamma)$，即证三角不等式：
$
||eta_1 + eta_2|| <= ||eta_1|| + ||eta_2||
$
有
$
&||eta_1+eta_2||^2 = (eta_1+eta_2,eta_1+eta_2) = (eta_1,eta_1) + 2(eta_1,eta_2) + (eta_2,eta_2)\
<=& ||eta_1||^2 + 2 ||eta_1||||eta_2|| + ||eta_2||^2 = (||eta_1|| + ||eta_2||)^2
$

= P184 习题八 5 #ac
#prob[
	证明：在一个具有内积 $(dot,dot)$ 的欧式空间内，对任意向量 $alpha,beta$，以下等式成立：

	(1) $||alpha+beta||^2 + ||alpha-beta||^2 = 2 ||alpha||^2 + 2 ||beta||^2$．

	(2) $(alpha,beta) = display(1/4 ||alpha+beta||^2 - 1/4 ||alpha-beta||^2)$．
]

$
||alpha+beta||^2 = (alpha+beta,alpha+beta) = (alpha,alpha) + 2 (alpha,beta) + (beta,beta)\
||alpha-beta||^2 = (alpha+beta,alpha+beta) = (alpha,alpha) - 2 (alpha,beta) + (beta,beta)\
$
两式相加得：
$
||alpha+beta||^2 + ||alpha-beta||^2 = 2 ||alpha||^2 + 2 ||beta||^2
$

两式相减得
$
||alpha+beta||^2 - ||alpha-beta||^2 = 4 (alpha,beta)
=> (alpha,beta) = 1/4 ||alpha+beta||^2 - 1/4 ||alpha-beta||^2
$

= P184 习题八 6 #ac
#prob[
	(1) 证明：线性空间 $RR[x]_3$ 在如下定义的映射下成为内积空间：
	$
	(f(x),g(x)) = integral_(-1)^1 f(x) g(x) dx,quad
	forall f(x),g(x) in RR[x]_3
	$
]

$
(f(x), g(x)) &= integral_(-1)^1 f(x) g(x) dx = integral_(-1)^1 g(x) f(x) dx = (g(x), f(x))\
(f(x), f(x)) &= integral_(-1)^1 f^2(x) dx >= 0\
(k f(x), g(x)) &= integral_(-1)^1 (k f(x)) g(x) dx = k integral_(-1)^1 f(x) g(x) dx = k (f(x), g(x))\
(f(x) + g(x), h(x)) &= integral_(-1)^1 (f(x) + g(x)) h(x) dx\
&= integral_(-1)^1 f(x) h(x) dx + integral_(-1)^1 g(x) h(x) dx\
&= (f(x),h(x)) + (g(x),h(x))\
$

综上所述，线性空间 $RR[x]_3$ 在如题设定义的映射下可以成为一个欧氏空间．

#prob[(2) 在如 (1) 定义的内积空间中求一个多项式 $f(x)$ 使得 $f(x)$ 与 $1+x,1-x$ 均正交．]

设该多项式为 $f(x) = a_0 + a_1 x + a_2 x^2$，考虑
$
&integral_(-1)^1 (1+x)(a_0 + a_1 x + a_2 x^2) dx
= integral_(-1)^1 (a_0 + (a_0+a_1) x + (a_1+a_2) x^2 + a_2 x^3) dx = 0\
=>& a_0 + 1/3(a_1 + a_2) = 0 => 3a_0 + a_1 + a_2 = 0\
&integral_(-1)^1 (1+x)(a_0 + a_1 x + a_2 x^2) dx
= integral_(-1)^1 (a_0 + (-a_0+a_1) x + (-a_1+a_2) x^2 - a_2 x^3) dx = 0\
=>& a_0 + 1/3(-a_1 + a_2) = 0 => 3a_0 - a_1 + a_2 = 0\
$

取 $a_0 = -1,sp a_1 = 0,sp a_2 = 3$，可得 $f(x) = 3x^2 - 1$．

= P184 习题八 7 #pc
#prob[
	设 $seqn(alpha,n)$ 是具有内积 $(dot,dot)$ 的欧式空间 $V$ 的一个基，证明：

	(1) 如果 $gamma in V$，且 $(gamma,alpha_i)=0 sp(i=1,2,dots.c,n)$，那么 $gamma = theta$．
]

#answer[
	由于 $gamma in V$，故可以表示为 $gamma = k_1 alpha_1 + k_2 alpha_2 + dots.c + k_n alpha_n$，故
	$
	(gamma,gamma) &= (gamma,k_1 alpha_1 + k_2 alpha_2 + dots.c + k_n alpha_n)\
	&= k_1 (gamma,alpha_1) + k_2 (gamma,alpha_2) + dots.c + k_n (gamma,alpha_n) = 0
	$
	所以 $gamma = theta$．
]

#prob[(2) 如果 $gamma_1,gamma_2 in V$，且 $forall alpha in V$ 有 $(gamma_1,alpha) = (gamma_2,alpha)$，那么 $gamma_1=gamma_2$．]

有 $forall alpha in V$，$(gamma_1 - gamma_2, alpha) = 0$，由 (1) 的结论得 $gamma_1 - gamma_2 = theta$ 即 $gamma_1 = gamma_2$．

= P184 习题八 8 #ac
#prob[在例 2 定义的内积空间 $C_([-1,1])$ 中，利用 Schmidt 正交化过程将向量组 $epsilon_1=1,sp epsilon_2=x, epsilon_3=x^2$ 改造成一个标准正交向量组．]

$
&eta_1 = epsilon_1 = 1\
&eta_2 = epsilon_2 - ((epsilon_2,eta_1))/((eta_1,eta_1)) eta_1 = epsilon_2 - 0 eta_1 = epsilon_2 = x\
&eta_3 = epsilon_3 - ((epsilon_3,eta_1))/((eta_1,eta_1)) eta_1 - ((epsilon_3,eta_2))/((eta_2,eta_2)) eta_2 = epsilon_3 - 1/3 eta_1 - 0eta_2 = x^2 - 1/3 
$

= P184 习题八 10(1) #ac
#prob[
	设 $xi_1,xi_2,xi_3$ 是三维欧式空间中的一个标准正交基，证明：
	$
	alpha_1 = 1/3 (2 xi_1 + 2 xi_2 - xi_3)\
	alpha_2 = 1/3 (2 xi_1 - xi_2 + 2 xi_3)\
	alpha_3 = 1/3 (xi_1 - 2 xi_2 - 2 xi_3)\
	$
	也是一个标准正交基．
]

由于 $xi_1,xi_2,xi_3$ 是一组标准正交基，所以
$
(alpha_1,alpha_1) = 1/9 (4 + 4 + 1) = 1, quad
(alpha_2,alpha_2) = 1/9 (4 + 1 + 4) = 1, quad
(alpha_3,alpha_3) = 1/9 (1 + 4 + 4) = 1\
(alpha_1,alpha_2) = 1/9 (4 - 2 - 2) = 0, quad
(alpha_1,alpha_3) = 1/9 (2 - 4 + 2) = 0, quad
(alpha_2,alpha_3) = 1/9 (2 + 2 - 4) = 0\
$
故 $alpha_1,alpha_2,alpha_3$ 也是一组标准正交基．

= P184 习题八 10(2) #ac
#prob[
	设 $xi_1,xi_2,xi_3,xi_4,xi_5$ 是五维欧式空间 $V$ 中的一个标准正交基，令：
	$
	alpha_1 = xi_1 + xi_5,quad
	alpha_2 = xi_1 - xi_2 + xi_4,quad
	alpha_3 = 2 xi_1 + xi_2 + xi_3
	$
	求 $V_1 = L(alpha_1,alpha_2,alpha_3)$ 的一个标准正交基．
]

写出 $alpha_1,alpha_2,alpha_3$ 在 $seqn(xi,5)$ 下对应的下标所构成的矩阵为：

$
mat(
	1,1,2;
	0,-1,1;
	0,0,1;
	0,1,0;
	1,0,0;
) -> mat(
	1,0,0;
	0,1,0;
	0,0,1;
	0,0,0;
	0,0,0;
)
$
故 $dim(V_1) = 3$．通过 Schmidt 正交化法得一组正交基
$
beta_1 &= alpha_1 = xi_1 + xi_5\
beta_2 &= alpha_2 - ((alpha_2,beta_1))/((beta_1,beta_1)) beta_1 = alpha_2 - 1/2 beta_1 = 1/2 xi_1 - xi_2 + xi_4 - 1/2 xi_5\
beta_3 &= alpha_3 - ((alpha_3,beta_1))/((beta_1,beta_1)) beta_1 - ((alpha_3,beta_2))/((beta_2,beta_2)) beta_2 = alpha_3 - 2/2 beta_1 - 0 beta_2 = xi_1 + xi_2 + xi_3 - xi_5
$
对其标准化得标准正交基
$
eta_1 &= 1/sqrt(2) (xi_1 + xi_5)\
eta_2 &= 1/sqrt(10) (xi_1 - 2 xi_2 + 2 xi_4 - xi_5)\
eta_3 &= 1/2 (xi_1 + xi_2 + xi_3 - xi_5)\
$

= P185 补充题八 1 #pc
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

$=>$：线性相关：$alpha_m = k_1 alpha_1 + k_2 alpha_2 + dots.c + k_(m-1) alpha_(m-1)$，可通过初等行变换将最后一行消成 $0$．

$arrow.double.l$：由于 $G(seqn(alpha,m)) = 0$，可知矩阵不满秩，即存在不为 $0$ 的一组 $seqn(k,m)$ 使得 $forall j in [1,m],sp sum_(i=1)^m k_i (alpha_j, alpha_i) = 0$，即 $forall j in [1,m],sp (alpha_j, sum_(i=1)^m k_i alpha_i) = 0$．可以进一步得到：$(sum_(j=1)^m k_j alpha_j, sum_(i=1)^m k_i alpha_i) = 0$，根据欧氏空间的正定性，有 $sum_(i=1)^m k_i alpha_i = 0$，即 $seqn(alpha,m)$ 线性相关．

#note[看了点提示做出来的．]

= P185 补充题八 3 #wa
#prob[
	设 $seqn(alpha,n)$ 是具有内积 $(dot,dot)$ 的 $n$ 维欧式空间 $V$ 的一个基，证明：这个基为 $V$ 的一个标准正交基的充分必要条件为对于 $V$ 中任意两个向量 $alpha,beta$，若
	$
	alpha &= x_1 alpha_1 + x_2 alpha_2 + dots.c + x_n alpha_n\
	beta  &= y_1 alpha_1 + y_2 alpha_2 + dots.c + y_n alpha_n\
	$
	则必有 $(alpha,beta) = x_1 y_1 + x_2 y_2 + dots.c + x_n y_n$．
]

$=>$：显然．

$arrow.double.l$：不会．

#answer[
	$=>$：由题意，其度量矩阵为 $EE$，故 $(alpha,beta) = alpha^TT EE beta = alpha^TT beta$．

	$arrow.double.l$：由于对于任意 $alpha,beta in V$ 都成立，代入可得 $display((alpha_i,alpha_j) = cases(1\,quad i!=j,0\,quad i=j))$．故 $seqn(alpha,n)$ 是一组标准正交基．
]

= P185 补充题八 4 #pc
#prob[
	设 $seqn(alpha,n)$ 是具有内积 $(dot,dot)$ 的 $n$ 维欧式空间 $V$ 的一个基，证明：这个基是 $V$ 中的一个标准正交基当且仅当 $forall alpha in V$，有
	$
	alpha = (alpha,alpha_1) alpha_1 + (alpha,alpha_2) alpha_2 + dots.c + (alpha,alpha_n) alpha_n
	$
]

设 $alpha = k_1 alpha_1 + k_2 alpha_2 + dots.c + k_n alpha_n$，$AA = ((alpha_i,alpha_j))_(n times n)$，则
$
alpha = AA alpha
$
对于任意 $alpha in V$ 都成立，故只可能 $AA$ 是单位矩阵，即设 $bold(U) = vecn(alpha,n)$ 有 $bold(U)^TT bold(U) = EE$，即 $seqn(alpha,n)$ 是 $V$ 的一组标准正交基。

#warn[这个不严谨，应用上面类似的方法，两个方向分别证明，反过来的时候取一些特殊值代入来得到想要的结果。]

= P185 补充题八 5 #ac
#prob[
	设 $seqn(alpha,s) in RR^n$ 线性无关，令 $bold(A) = vecn(alpha,s)$．设 $seqn(beta,n-s)$ 为齐次线性方程组 $AA^TT bold(X) = bold(O)$ 的一个基础解系，证明：
	$
	seqn(alpha,s),seqn(beta,n-s)
	$
	为 $RR^n$ 的一个基．
]

设 $bold(X) = k_1 beta_1 + k_2 beta_2 + dots.c + k_(n-s) beta_(n-s)$，其中 $seqn(k,n-s)$ 是任意一组非全零的实数。由已知得：

$
alpha_i^TT bold(X) = (alpha_i, bold(X)) = k_1 (alpha_i,beta_1) + k_2 (alpha_i,beta_2) + dots.c + k_(n-s) (alpha_i,beta_(n-s)) = 0 sp (i=1,2,dots.c,s)
$

取 $k_1=1,k_2=k_3=dots.c=k_(n-s)=0$ 得 $(alpha_1,beta_j)=1 sp (j=1,2,dots.c,n-s)$。同理得：
$
forall 1<=i<=s and 1<=j<=n-s,sp (alpha_i,beta_j) = 0
$
反设 $seqn(alpha,s),seqn(beta,n-s)$ 线性相关，则 $alpha_1$ 可被表示为（$l_2,l_3,dots.c,l_n$ 是一组不全为零的实数）
$
alpha_1 = l_2 alpha_2 + l_3 alpha_3 + dots.c + l_s alpha_s + l_(s+1) beta_1 + dots.c + l_n beta_(n-s)
$
则
$
(alpha_1,alpha_1)
&= (alpha_1,l_2 alpha_2 + l_3 alpha_3 + dots.c + l_s alpha_s + l_(s+1) beta_1 + dots.c + l_n beta_(n-s))\
&= (alpha_1, l_2 alpha_2 + l_3 alpha_3 + dots.c + l_s alpha_s)\
&= (l_2 alpha_2 + l_3 alpha_3 + dots.c + l_s alpha_s + l_(s+1) beta_1 + dots.c + l_n beta_(n-s),l_2 alpha_2 + l_3 alpha_3 + dots.c + l_s alpha_s)\
&= (l_2 alpha_2 + l_3 alpha_3 + dots.c + l_s alpha_s,l_2 alpha_2 + l_3 alpha_3 + dots.c + l_s alpha_s)\
$
故 $norm(alpha_1) = norm(l_2 alpha_2 + l_3 alpha_3 + dots.c + l_s alpha_s)$ 且 $cos <alpha,l_2 alpha_2 + l_3 alpha_3 + dots.c + l_s alpha_s> = 1$，即
$
alpha = l_2 alpha_2 + l_3 alpha_3 + dots.c + l_s alpha_s
$
与 $seqn(alpha,s)$ 是一组线性无关的向量矛盾，故 $seqn(alpha,s),seqn(beta,n-s)$ 线性无关。

= P185 补充题八 6 #ac
#prob[
	设 $alpha,beta$ 是具有内积 $(dot,dot)$ 的 $n$ 维欧式空间 $V$ 中的两个不同的向量且 $|alpha| = |beta| = 1$，证明：$(alpha,beta) != 1$．
]

反设 $(alpha,beta) = 1$，那么两向量夹角 $display(theta = arccos ((alpha,beta))/(||alpha|| dot ||beta||) = arccos 1 = 0)$，此时两向量重合．

故两向量不重合时，$(alpha,beta) != 1$．

#warn[没答案。]