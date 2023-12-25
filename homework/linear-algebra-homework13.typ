#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Homework #13",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "December 25, 2023",
)

#let lb = math.lambda
#let alpha = math.bold(math.alpha)
#let beta = math.bold(math.beta)
#let theta = math.bold(math.theta)
#let xi = math.bold(math.xi)
#let AA = math.bold(math.italic("A"))
#let BB = math.bold(math.italic("B"))
#let EE = math.bold(math.italic("E"))
#let XX = math.bold(math.italic("X"))
#let OO = math.bold(math.italic("O"))
#let TT = math.upright("T")
#let Lambda = math.bold(math.Lambda)
#let diag = math.upright("diag")
#let ssim = math.attach(sp + math.upright("~") + sp, tl: "", tr:"", t: math.upright("S"))

= P129 习题五 31
#prob[
  设 $AA$ 为二阶矩阵，$bold(P) = display(mat(alpha,AA alpha))$，其中 $alpha$ 是非零向量且不是 $AA$ 的特征向量。

  (1) 证明：$bold(P)$ 为可逆矩阵。
]

反证法：反设 $bold(P)$ 不是可逆矩阵，则 $alpha$ 与 $AA alpha$ 线性相关，即存在不为零的 $k in RR$ 使得 $k alpha = AA alpha$。由于 $alpha$ 不是 $AA$ 的特征向量且非零，这样的 $k$ 不存在。故 $bold(P)$ 是可逆矩阵，原命题得证。

#prob[
  (2) 若 $AA^2 alpha + AA alpha - 6 alpha = theta$，求 $bold(P)^(-1) AA bold(P)$ 并判断 $AA$ 是否与对角矩阵相似。
]

$
AA bold(P)
= AA mat(alpha, AA alpha)
= mat(AA alpha, AA^2 alpha)
= mat(AA alpha, 6 alpha - AA alpha)
= mat(alpha, AA alpha) mat(0,6;1,-1)\
=> bold(P)^(-1) AA bold(P) = mat(0,6;1,-1)
$

设 $f(x) = x^2 + x - 6 = (x-2)(x+3)$，则 $f(AA) alpha = theta$，由于 $alpha$ 不是特征向量，故只能是 $f(AA) = OO$，故 $f(x)$ 是 $AA$ 的特征多项式，$AA$ 的两个特征根分别为 $2$ 和 $-3$，应至少个存在一个特征向量，故 $AA$ 可被相似对角化。

= P129 习题五 32
#prob[
  下列矩阵中，与矩阵 $display(mat(1,1,0;0,1,1;0,0,1))$ 相似的为（$quad$）

  （选项略）
]

选 (D) 项，对应矩阵为 $display(mat(1,0,-1;0,1,0;0,0,1))$。

= P130 习题五 33
#prob[
  已知矩阵
  $
  AA = mat(2,0,0;0,2,1;0,0,1) quad
  BB = mat(2,1,0;0,2,0;0,0,1) quad
  bold(C) = mat(1,0,0;0,2,0;0,0,2) quad
  $
  则（$quad$）。
  
  (A) $AA$ 与 $bold(C)$ 相似，$BB$ 与 $bold(C)$ 相似；

  (B) $AA$ 与 $bold(C)$ 相似，$BB$ 与 $bold(C)$ 不相似；

  (C) $AA$ 与 $bold(C)$ 不相似，$BB$ 与 $bold(C)$ 相似；

  (D) $AA$ 与 $bold(C)$ 不相似，$BB$ 与 $bold(C)$ 不相似。
]

选 (B) 项。

= P130 习题五 34
#prob[
  证明：$n$ 阶矩阵 $display(mat(1,1,dots.c,1;1,1,dots.c,1;dots.v,dots.v,,dots.v;1,1,dots.c,1))$ 与 $display(mat(0,dots.c,0,1;0,dots.c,0,2;dots.v,,dots.v,dots.v;0,dots.c,0,n))$ 相似。
]

设 $bold(P) AA bold(Q) = BB$。

考虑要应用的行变换：需要将每一行依次加上前一行，即按 $i=1,2,dots.c,n-1$ 依次右乘 $EE + bold(e)_(i,i+1)$，即 $display(bold(Q) = product_(i=1)^(n-1) (EE + bold(e)_(i,i+1)))$。

考虑要应用的列变换：需要将每一列依次减去后一列，即按 $i=1,2,dots.c,n-1$ 依次左乘 $EE - bold(e)_(i,i+1)$，即 $display(bold(P) = product_(i=n-1)^(1) (EE - bold(e)_(i,i+1)))$。

考虑对于 $1<=i<n$，有 $(EE + bold(e)_(i,i+1))(EE - bold(e)_(i,i+1)) = EE - bold(e)_(i,i+1) + bold(e)_(i,i+1) - bold(e)_(i,i+1)^2 = EE$，从内到外依次相乘可以得到 $bold(P) bold(Q) = EE$。即 $bold(P) AA bold(P)^(-1) = BB$，即 $AA ssim BB$。

= P130 习题五 36
#prob[
  设 $AA$ 为非零方阵，$m>=2$ 为正整数，证明：若 $AA^m = OO$，则 $AA$ 不能与对角矩阵相似。
]

反设 $AA$ 可被对角化，即存在可逆矩阵 $bold(P)$ 使得 $bold(P)^(-1) AA bold(P) = Lambda$。考虑
$
Lambda^m = bold(P)^(-1) AA^m bold(P) = OO
$
由于 $bold(P)$ 可逆，故 $Lambda^m = diag(lb_1^m,lb_2^m,dots.c,lb_n^m) = OO$。解得 $lb_1=lb_2=dots.c=lb_n=0$ 即 $Lambda = OO$。与 $AA$ 是非零矩阵矛盾，故假设不成立，原命题得证。

= P130 习题五 38
#prob[
  设 $n$ 阶矩阵 $AA$ 的所有特征值为 $seqn(lb,n)$ 且 $AA$ 可相似对角化，证明：对任意的多项式 $f(x)$，矩阵 $f(AA)$ 的所有特征值为 $f(lb_1),f(lb_2),dots.c,f(lb_n)$。
]

设 $bold(P)^(-1) A bold(P) = Lambda = diag(seqn(lb,n))$。考虑对于任意 $m in NN_+$，有：
$
bold(P)^(-1) AA^m bold(P) = (bold(P)^(-1) AA bold(P))^m = Lambda^m = diag(lb_1^m,lb_2^m,dots.c,lb_n^m)
$
对于 $f(x)$ 的每一个单项式，分别代入 $m$ 并相加，可以得到：
$
bold(P)^(-1) f(AA) bold(P) = f(Lambda) = diag(f(lb_1),f(lb_2),dots.c,f(lb_n))
$

= P130 习题五 39
#prob[
  设 $AA=(a_(i j))_(n times n)$ 是一个 $n$ 阶下三角矩阵，证明：

  (1) 若 $a_11,a_22,dots.c,a_(n n)$ 互不相等，则 $AA$ 可相似对角化。
]

#prob[
  (2) 若 $a_11 = a_22 = dots.c = a_(n n)$ 且至少一个 $a_(i_0 j_0) != 0$（其中  $i_0>j_0$），则 $AA$ 不可相似对角化。
]

= P131 习题五 42
#prob[
  已知矩阵 $AA = display(mat(0,-1,1;2,-3,0;0,0,0))$。

  (1) 求 $AA^99$。
]

#prob[
  (2) 设三阶矩阵 $BB = display(mat(alpha_1,alpha_2,alpha_3))$ 满足 $BB^2 = BB AA$，记 $BB^100 = display(mat(beta_1,beta_2,beta_3))$，将 $beta_1,beta_2,beta_3$ 分别表示为 $alpha_1,alpha_2,alpha_3$ 的线性组合。
]

= P131 习题五 44
#prob[
  设矩阵 $AA = display(mat(1,0,1;0,2,0;1,0,1))$，矩阵 $BB = (k EE + AA)^2$，其中 $k in RR$，证明：$BB$ 可相似对角化。
]

= P132 习题五 45
#prob[
   证明：如果 $n$ 阶实矩阵 $AA$ 有 $n$ 个正交的特征向量，那么 $AA$ 是一个对称矩阵。
]

= P132 习题五 46
#prob[
  设 $alpha$ 为 $n$ 元单位列向量，则（$quad$）：

  (A) $EE - alpha alpha^TT$ 不可逆；
  
  (B) $EE + alpha alpha^TT$ 不可逆；

  (C) $EE + 2alpha alpha^TT$ 不可逆；

  (D) $EE - 2alpha alpha^TT$ 不可逆。
]

= P132 习题五 47
#prob[
  设 $alpha$ 为三元列向量，求矩阵 $EE - alpha alpha^TT$ 的秩。
]

= P132 习题五 52
#prob[
  设 $AA$ 为三阶实对称矩阵，$lb_1,lb_2,lb_3$ 为 $AA$ 的特征值，$xi_1,xi_2$ 为 $AA$ 的分别属于 $lb_1,lb_2$ 的线性无关的特征向量。

  (1) 给出求 $AA$ 的属于特征值 $lb_3$ 的全部特征向量的一个方法。
]

#prob[
  (2) 判断 $c_1 xi_1 + c_2 xi_2$（其中 $c_1,c_2 in RR$）是否为 $AA$ 的属于特征值 $lambda_3$ 的特征向量。
]

= P133 习题五 54
#prob[
  设 $AA$ 为实三阶对称矩阵，$r(AA) = 2$，且
  $
  AA mat(1,1;0,0;-1,1) = mat(-1,1;0,0;1,1)
  $
  (1) 求 $AA$ 的所有特征值与特征向量。
]

#prob[(2) 求矩阵 $AA$。]

= P133 习题五 55
#prob[
  设三阶实对称矩阵 $AA$ 的特征值 $lb_1=1,lb_2=2,lb_3=-2$，且 $alpha_1=display(mat(1,-1,1))^TT$ 是 $AA$ 的属于 $lb_1$ 的一个特征向量，记 $BB = AA^5 - 4 AA^3 + EE$。

  (1) 验证 $alpha_1$ 是矩阵 $BB$ 的特征向量，并求 $BB$ 的全部特征值与特征向量。
]

#prob[(2) 求矩阵 $BB$。]

= P133 习题五 58
#prob[
  证明：反对称实矩阵的特征值或为零，或为虚部不为零的纯虚数。
]

= P134 补充题五 5
#prob[
  设矩阵 $A$ 与 $BB$ 相似，试证明：伴随矩阵 $AA^*$ 与 $BB^*$ 也相似。
]

= P134 补充题五 6
#prob[
  设 $AA$ 是一个可逆矩阵，试证明：存在多项式 $f(x)$ 使得 $AA^(-1) = f(AA)$。
]

= P134 补充题五 8
#prob[
  设 $AA,BB$ 均可相似对角化，试证明：$AA,BB$ 乘法可交换当且仅当存在可逆矩阵 $bold(P)$ 使得 $bold(P) AA bold(P)^(-1)$ 与 $bold(P) BB bold(P)^(-1)$ 均为对角矩阵。
]

= P134 补充题五 10
#prob[
  设 $AA,BB in PP^(n times n)$，试证明：$AA$ 与 $BB$ 相似的充分必要条件是存在 $bold(C),bold(D) in PP^(n times n)$，使得 $AA = bold(C D),sp BB = bold(D C)$，且 $bold(C),bold(D)$ 中至少一个可逆。
]
