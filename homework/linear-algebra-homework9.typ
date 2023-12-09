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
#let eta = math.bold(math.eta)
#let xi = math.bold(math.xi)
#let ds = math.dots.c
#let TT = math.upright("T")

= P104 习题四 19 #ac
#prob[证明：在线性空间 $RR^3$ 中，向量组 $alpha_1=display(mat(0,1,2))^TT,sp alpha_2 = display(mat(3,-1,0))^TT,sp alpha_3 = display(mat(3,1,0))^TT$ 与 $beta_1=display(mat(1,0,0))^TT,sp beta_2=display(mat(1,2,0))^TT,sp beta_3=display(mat(1,2,3))^TT$ 等价．]

$
r mat(0,1,2;3,-1,0;3,1,0) = r mat(1,0,0;1,2,0;1,2,3) = 3
$

所以 $L(alpha_1,alpha_2,alpha_3) = L(beta_1,beta_2,beta_3) = RR^3$，即两向量组等价。

= P104 习题四 21 #ac
#prob[判断题，略．]

(1) T
(2) F
(3) F
(4) T
(5) F

= P105 习题四 23 #ac
#prob[
	设向量组 $alpha_1,alpha_2,alpha_3$ 为 $RR^3$ 的一个基，
	$
	beta_1 = 2 alpha_1 + 2k alpha_3,sp
	beta_2 = 2 alpha_2,sp
	beta_3 = alpha_1 + (k+1)alpha_3
	$

	(1) 证明向量组 $beta_1,beta_2,beta_3$ 也是 $RR^3$ 的一个基．
]

#set math.mat(delim: "|")
$
mat(2,0,2k;0,2,0;1,0,k+1)
= mat(1,0,k+1;0,2,0;0,0,-2)
= -4 !=0
$
#set math.mat(delim: "(")

$beta_1,beta_2,beta_3$ 在基 $alpha_1,alpha_2,alpha_3$ 下的坐标线性无关 $<=>$ $beta_1,beta_2,beta_3$ 线性无关 $<=>$ $beta_1,beta_2,beta_3$ 也是 $RR^3$ 的一组基。

#prob[(2) 当 $k$ 为何值时，存在非零向量 $xi$ 在基 $alpha_1,alpha_2,alpha_3$ 与基 $beta_1,beta_2,beta_3$ 下的坐标相同，并求所有满足条件的 $xi$．]

设 $xi = x_1 alpha_1 + x_2 alpha_2 + x_3 alpha_3 = x_1 beta_1 + x_2 beta_2 + x_3 beta_3$。

代入得：

$
x_1 alpha_1 + x_2 alpha_2 + x_3 alpha_3
= (2x_1 + x_3) alpha_1 + (2x_2) alpha_2 + (2k x_1 + (k+1) x_3) alpha_3\
=> cases(
	x_1+x_3 = 0,
	x_2 = 0,
	k(2x_1+x_3) = 0,
)
$

综上，由于要求向量非零，故当且仅当 $k=0$ 时，所有形如 $xi=(t,0,-t),sp t in RR$ 的向量合法。

= P105 习题四 25 #ac
#prob[
	已知 $RR^3$ 的两个基分别为
	$
	upright("(I)") quad& alpha_1=mat(1;1;1),sp alpha_2 = mat(1;0;-1),sp alpha_3=mat(1;0;1)\
	upright("(II)") quad& beta_1=mat(1;2;1),sp beta_2=mat(2;3;4),sp beta_3=mat(3;4;5)\
	$

	(1) 求从基 (I) 到基 (II) 的过渡矩阵 $bold(M)$；
]

$
upright("(II)") = upright("(I)") bold(M)\
=> bold(M) = mat(1,1,1;1,0,0;1,-1,1)^(-1) mat(1,2,3;2,3,4;1,4,5) = mat(2,3,4;0,-1,-1;-1,0,0)
$

（利用分块矩阵的性质和初等行变换求解的过程略）

#prob[(2) 设 $alpha$ 在基 (I) 下的坐标为 $display(mat(1,1,3))^TT$，求 $alpha$ 在基 (II) 下的坐标．]

$
alpha = upright("(II)") bold(Y) = upright("(II)") bold(M X) = upright("(I)") bold(X) => bold(Y) = bold(M)^(-1) bold(X)\
=> bold(Y) = mat(2,3,4;0,-1,-1;-1,0,0)^(-1) mat(1;1;3) = mat(-3;-11;10)
$

= P105 习题四 26
#prob[
	设向量组 $alpha_1=display(mat(1,2,1))^TT,sp alpha_2=display(mat(1,3,2))^TT,sp alpha_3=display(mat(1,a,3))^TT$ 为 $RR^3$ 的一个基，$beta=display(mat(1,1,1))^TT$ 在这个基下的坐标为 $display(mat(b,c,1))^TT$．

	(1) 求 $a,b,c$ 的值．
]

由已知：
$
cases(
  1 = b+c+1,
	1 = 2b+3c+a,
	1 = b+2c+3
) => cases(
	a = 3,
	b = 2,
	c = -2,
)
$

#prob[(2) 证明 $alpha_2,alpha_3,beta$ 为 $RR^3$ 的一个基，并求 $alpha_2,alpha_3,beta$ 到 $alpha_1,alpha_2,alpha_3$ 的过渡矩阵．]

#set math.mat(delim: "|")
$
mat(1,3,2;1,3,3;1,1,1)
= mat(1,3,2;0,0,1;0,-2,-1) = 2 != 0
$
#set math.mat(delim: "(")

所以 $alpha_2,alpha_3,beta$ 线性无关，是 $RR^3$ 的一组基，且可解得过渡矩阵为：

$
bold(M) = mat(
sp 1 sp,sp 1 sp,sp 0 sp;
-1/2,0,1;
1/2,0,0;
)
$

= P106 习题四 29 #ac
#prob[设矩阵 $bold(A) = display(mat(1,0,1;1,1,2;0,1,1;))$，$alpha_1,alpha_2,alpha_3$ 为线性无关的三元列向量，求向量组 $bold(A) alpha_1,bold(A) alpha_2,bold(A) alpha_3$ 的秩．]

$
r(bold(A) alpha_1,bold(A) alpha_2,bold(A) alpha_3) = r(bold(A) vecn(alpha,3)) = r(bold(A)) = 2
$

= P174 习题七 21 #ac
#prob[设 $V$ 是实数域 $RR$ 上全体 $n$ 阶对角矩阵构成的线性空间（运算为矩阵的加法与数与矩阵乘法），求 $V$ 的一个基和维数．]

设一组常用基为 $bold(e)_(i i),sp i=1,2,dots.c,n$。显然两两线性无关且对于所有对角矩阵 $bold(A) in RR^(n times n)$ 都有
$
bold(A) = upright("diag")(seqn(l,n)) = l_1 bold(e)_11 + l_2 bold(e)_22 + dots.c + l_n bold(e)_(n n)
$
故 $dim V = n$，基即上文给出的一组常用基。

= P174 习题七 22 #ac
#prob[证明：如果线性空间中的每一个向量都可以唯一写成该空间中 $n$ 个给定向量的线性组合，那么该线性空间是 $n$ 维的．]

设 $n$ 个给定向量线性相关，不妨设 $alpha_1=k_2 alpha_2 + k_3 alpha_3 + dots.c + k_n alpha_n$。

那么，对于向量 $alpha_1$，有：
$
alpha_1
= vecn(alpha,n) mat(1;0;dots.v;n)
= vecn(alpha,n) mat(0;k_2;dots.v;k_n)
$
即有两种表示方式，与题设矛盾，故 $n$ 个给定向量必线性无关。

= P174 习题七 25 #ac
#prob[设向量组 (I) $alpha_1,alpha_2,dots.c,alpha_n$ 及向量组 (II) $beta_1,beta_2,dots.c,beta_n$ 是数域 $PP$ 上的线性空间 $V$ 中的两个基．证明：从基 (I) 到基 (II) 的过渡矩阵和从基 (II) 到基 (I) 的过渡矩阵互为逆矩阵．]

设基 (Z) 是 $V$ 的一组常用基，那么
$
upright("(I)") = upright("(Z)") bold(A)_1 quad
upright("(II)") = upright("(Z)") bold(A)_2\
upright("(II)") = upright("(I)") bold(M)_1 quad
upright("(I)") = upright("(II)") bold(M)_2\
$
有
$
upright("(I)") &= upright("(Z)") bold(A)_1\
&= upright("(II)") bold(M)_2 = upright("(I)") bold(M)_1 bold(M)_2 = upright("(Z)") bold(A)_1 bold(M)_1 bold(M)_2
$

故 $bold(A)_1 = bold(A)_1 bold(M)_1 bold(M)_2$，由于每组基都是一个极大线性无关组，所以 $bold(A)_1,bold(M)_1,bold(M)_2$ 均可逆，且 $bold(M)_1 bold(M)_2 = bold(E)$。两个过渡矩阵互为逆矩阵。

#warn[做麻烦了。]

= P174 习题七 26 #ac
#prob[
	设 $V$ 是数域 $PP$ 上的一个 $n$ 维线性空间，证明：

	(1) $PP^(n times n)$ 中的任意一个可逆矩阵均可以作为 $V$ 中某两个基之间的过渡矩阵．
]

可逆矩阵 $bold(M)$ 必是满秩的，不妨设其第 $i$ 列作为向量组 (II) 中第 $i$ 个向量在基 (I) 下的坐标，则由于可 $bold(M)$ 是满秩的，故向量组 (II) 也线性无关，且秩等于 $n$，即向量组 (II) 也可以作为一组基。且根据假设可以得到：
$
upright("(II)") = upright("(I)") bold(M)
$
即 $bold(M)$ 是基 (I) 到基 (II) 的过渡矩阵。

#note[这严谨吗？]

#prob[
	(2) 若 $V$ 中的由 $n$ 个不同向量所形成的向量组和 $V$ 的一个基等价，则该向量组也是 $V$ 的一个基．
]

不妨设 $r_1=n$ 为基的秩，$r_2$ 为向量组的秩。由于两者等价，故 $r_1=r_2=n$，即该向量组线性无关。即该向量组也是 $V$ 的一个基。

= P175 习题七 27 #ac
#prob[
	设 $W_1,W_2$ 是数域 $PP$ 上的线性空间 $V$ 的两个子空间，$alpha,beta$ 是 $V$ 中的两个向量，其中 $alpha in W_2$ 但 $alpha in.not W_1,beta in.not W_2$，证明：

	(1) $forall c in PP,sp beta + c alpha in.not W_2$．
]

反证法。设 $gamma = beta + c alpha in W_2$，则由子空间的封闭性，$beta = gamma - c alpha in W_2$，与题设矛盾。

#prob[
	(2) 至多有一个 $c in PP$ 使得 $beta + c alpha in W_1$．
]

反证法。设 $gamma = beta + c alpha in W_1$ 且 $eta = beta + c' alpha in W_1$，则由子空间的封闭性$ alpha = display(1/(c'-c)) (eta-gamma) in W_1 $与题设矛盾。

= P175 习题七 28 #ac
#prob[
	设 $V_1,V_2$ 均为线性空间 $V$ 的真子空间．

	(1) 证明：存在 $alpha in V$ 使得 $alpha in.not V_1 union V_2$．
]

设 $dim V = n$，则对于 $V$ 的一组基 $seqn(xi,n)$，至少存在一个 $xi_i in.not V_1$，否则 $dim V_1 = dim V = n$，矛盾。同理也至少存在一个 $xi_j in.not V_2$。

若 $xi_i in.not V_2$（或 $xi_j in.not V_1$），则取 $alpha = xi_i$（或 $alpha=xi_j$）即满足 $alpha in.not V_1 union V_2$。

否则必有 $i!=j$，取 $alpha = xi_i + xi_j$。考虑反证法：

- 若 $alpha in V_1$，则 $xi_i = alpha - xi_j in V_1$，由于 $xi_j in V_1$，根据子空间的封闭性，也有 $xi_i in V_1$，矛盾。
- 若 $alpha in V_2$，则 $xi_j = alpha - xi_i in V_2$，由于 $xi_i in V_2$，根据子空间的封闭性，也有 $xi_j in V_2$，矛盾。

所以 $alpha in.not V_1 union V_2$。综上，这样的 $alpha$ 一定存在。

#prob[
	(2) 如果 $V = RR^2$，请指出上述结论 (1) 的几何意义．
]

对于给定平面，任意两条直线不可能覆盖整个平面。

= P175 习题七 30 #wa
#prob[
	设向量组 $seqn(alpha,s)$ 线性无关，令
	$
	beta_j &= sum_(i=1)^s a_(i j) alpha_i,quad j=1,2,dots.c,s\
	bold(A) &= (a_(i j))_(s times s) in PP^(s times s)
	$
	证明：$r display(mat(beta_1,beta_2,dots.c,beta_s)) = r(bold(A))$．
]

TBD

#answer[
	设 $upright("rank"){seqn(beta,s)}=r$，$beta_(i_1),beta_(i_2),dots.c,beta_(i_r)$ 是一组极大线性无关组。
	
	令 $bold(A) = vecn(gamma,s)$，则 $beta_i=vecn(alpha,s) gamma_i$。

	故 $k_1 beta_(i_1) + k_2 beta_(i_2) + dots.c + k_r beta_(i_r) = vecn(alpha,s) k_1 gamma_(i_1) + k_2 gamma_(i_2) + dots.c + k_r gamma_(i_r)$。

	令 $k_1 beta_(i_1) + k_2 beta_(i_2) + dots.c + k_r beta_(i_r) = theta$，那么 $k_1 gamma_(i_1) + k_2 gamma_(i_2) + dots.c + k_r gamma_(i_r) = theta$。

	由于 $beta_(i_1),beta_(i_2),dots.c,beta_(i_r)$ 线性无关，故 $k_1=k_2=dots.c=k_r=0$，即 $k_1 gamma_(i_1) + k_2 gamma_(i_2) + dots.c + k_r gamma_(i_r) = theta$ 只有零解。故 $gamma_(i_1),gamma_(i_2),dots.c,gamma_(i_r)$ 线性无关。

	同理可证 $seqn(gamma,s)$ 中的其余所有向量都可以被 $gamma_(i_1),gamma_(i_2),dots.c,gamma_(i_r)$ 线性表示，即该向量组是极大线性无关组。即 $r(bold(A)) = r$，原命题得证。
]