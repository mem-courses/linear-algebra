#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Homework #15",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "January 11, 2024",
)


#let AA = math.bold(math.italic("A"))
#let BB = math.bold(math.italic("B"))
#let XX = math.bold(math.italic("X"))
#let YY = math.bold(math.italic("Y"))
#let EE = math.bold(math.italic("E"))
#let OO = math.bold(math.italic("O"))
#let TT = math.upright("T")
#let x1 = math.attach(math.italic("x"), br: math.upright("1"))
#let x2 = math.attach(math.italic("x"), br: math.upright("2"))
#let x3 = math.attach(math.italic("x"), br: math.upright("3"))
#let y1 = math.attach(math.italic("y"), br: math.upright("1"))
#let y2 = math.attach(math.italic("y"), br: math.upright("2"))
#let y3 = math.attach(math.italic("y"), br: math.upright("3"))
#let alpha = math.bold(math.alpha)
#let beta = math.bold(math.beta)
#let Lambda = math.bold(math.Lambda)
#let diag = math.upright("diag")
#let ssim = math.attach(sp + math.upright("~") + sp, tl: "", tr:"", t: math.upright("S"))


= P151 习题六 30
#prob[
	已知二次型 $f(x_1,x_2,x_3) = XX^TT AA XX$ 在正交替换 $XX = bold(U) YY$ 下的标准形为 $y_1^2+y_2^2$， 且 $bold(U)$ 的第 $3$ 列为 $display(mat(sqrt(2)/2,0,sqrt(2)/2))^TT$。

	(1) 求矩阵 $AA$。
]
#prob[(2) 证明 $AA + EE$ 为正定矩阵。]
= P151 习题六 33
#prob[
	证明：$n$ 阶矩阵
	$ AA = mat(
		1,1/n,dots.c,1/n;
		1/n,1,dots.c,1/n;
		dots.v,dots.v,,dots.v;
		1/n,1/n,dots.c,1;
	) $
	是一个正定矩阵。
]
= P152 习题六 34
#prob[已知 $AA = (a_(i j))_(n times n)$ 是正定矩阵，证明：$a_(i i)>0,sp i=1,2,dots.c,n$。]
= P152 习题六 35
#prob[
	设 $AA = (a_(i j))_(n times n)$ 是一个实对称矩阵，证明：

	(1) 矩阵 $AA$ 正定当且仅当 $AA$ 的任意一个主子式都大于零。
]
#prob[(2) 当 $AA$ 正定时，对任意的 $i!=j,sp 1<=i,j<=n$，有 $|a_(i j)| < sqrt(a_(i i) a_(j j))$。]
= P152 习题六 36
#prob[设 $AA_(m times n)$ 是一个实矩阵，证明：$AA^TT AA$ 为正定矩阵，当且仅当 $r(AA) = n$。]
= P152 习题六 38
#prob[
	设 $AA,BB$ 是实对称矩阵，证明：
	(1) 当实数 $t$ 充分大时，$t EE + AA$ 正定。
]
#prob[(2) 若 $AA$ 正定，则 $AA^(-1)$ 正定。]
#prob[(3) 若 $AA,BB$ 正定，则 $AA+BB$ 正定。]
#prob[(4) 若 $AA$ 正定，则 $AA$ 的伴随矩阵 $AA^*$ 正定。]
= P152 习题六 39
#prob[
	设 $AA = (a_(i j))_(n times n)$ 是一个实矩阵，且对任意的 $1<=i<=n$，有 $2 a_(i i) > display(sum_(j=1)^n |a_(i j)|)$，证明：

	(1) $abs(AA) > 0$。
]
#prob[(2) 如果 $AA$ 对称，那么 $AA$ 正定。]
= P152 习题六 41
#prob[设 $AA_(n times n)$ 是一个实对称矩阵，且 $abs(AA) < 0$，证明：必存在非零向量 $alpha in RR^n$，使得 $alpha^TT AA alpha < 0$。]
= P152 习题六 44
#prob[
	设 $AA$ 是一个正定矩阵，$BB = display(mat(AA,alpha,alpha^TT,b))$，其中 $b in RR$，证明：

	(1) $BB$ 正定当且仅当 $b - alpha^TT AA^(-1) alpha > 0$。
]
#prob[(2) $BB$ 半正定当且仅当 $b - alpha^TT AA^(-1) alpha >= 0$。]
= P152 习题六 45
#prob[
	设 $AA_(n times n)$ 是一个实对称矩阵，其最小和最大的特征值分别为 $a,b$，证明：对任意的向量 $XX in RR^n$，有
	$ a XX^TT XX <= XX^TT AA XX <= b XX^TT XX $
]
= P153 习题六 46
#prob[
	设 $f(XX) = XX^TT AA XX$ 是一个实二次型，存在 $n$ 元实向量 $XX_1$ 与 $XX_2$ 使得
	$ XX_1 ^TT AA XX_1 > 0,quad XX_2^TT AA XX_2 < 0 $
	证明：必存在 $n$ 元实向量 $XX_0$，使得 $XX_0^TT AA XX_0 = 0$。
]
= P153 习题六 47
#prob[
	设 $AA$ 是 $n$ 阶正定矩阵，$seqn(alpha,n)$ 均为实的 $n$ 元非零列向量，且当 $i!=j$ 时，$alpha_i^TT AA alpha_j = 0 sp (i,j=1,2,dots.c,n)$，证明：$seqn(alpha,n)$ 线性无关。
]
= P153 习题六 49
#prob[
	设 $AA = (a_(i j))_(n times n)$ 正定，$bold(T) = (t_(i j))_(n times n)$ 是 $n$ 阶实可逆矩阵，证明：

	(1) $abs(AA) <= a_(n n) abs(AA_(n-1))$，这里 $abs(AA_(n-1))$ 是 $AA$ 的 $n-1$ 阶顺序主子式，且等号成立的充分必要条件是 $a_(1 n) = a_(2 n) = dots.c = a_(n-1,n) = 0$。
]
#prob[
	(2) $abs(AA) <= a_11 a_22 dots.c a_(n n)$ 且等式成立的充分必要条件是 $AA$ 为对角矩阵。
]
= P153 补充题六 3
#prob[设 $AA,BB$ 是两个实对称矩阵，其中 $AA$ 是正定的，证明：存在可逆矩阵 $bold(P)$，使得 $bold(P)^TT AA bold(P) = EE$，且 $bold(P)^TT BB bold(P)$ 是一个对角矩阵。]
= P153 补充题六 5
#prob[设 $AA,BB$ 是两个实对称矩阵，证明：如果矩阵 $AA$ 的特征值在区间 $[a,b]$ 上，矩阵 $BB$ 的特征值在 $[c,d]$ 上，那么矩阵 $AA + BB$ 的特征值在区间 $[a+c,b+d]$ 上。]
= P153 补充题六 6
#prob[设 $n$ 元实二次型 $f(bold(X))$ 是半正定的且其秩为 $r$，证明：方程 $f(bold(X)) = 0$ 的所有解向量所构成的集合 $W$ 是 $RR^n$ 的一个子空间，并求该子空间的维数。]