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

= P129 习题五 31 #pc
#prob[
  设 $AA$ 为二阶矩阵，$bold(P) = display(mat(alpha,AA alpha))$，其中 $alpha$ 是非零向量且不是 $AA$ 的特征向量。

  (1) 证明：$bold(P)$ 为可逆矩阵。
]

反证法：反设 $bold(P)$ 不是可逆矩阵，则 $alpha$ 与 $AA alpha$ 线性相关，即存在不为零的 $k in RR$ 使得 $k alpha = AA alpha$。由于 $alpha$ 不是 $AA$ 的特征向量且非零，这样的 $k$ 不存在。故 $bold(P)$ 是可逆矩阵，原命题得证。#ac

#prob[
  (2) 若 $AA^2 alpha + AA alpha - 6 alpha = theta$，求 $bold(P)^(-1) AA bold(P)$ 并判断 $AA$ 是否与对角矩阵相似。
]

$
AA bold(P)
= AA mat(alpha, AA alpha)
= mat(AA alpha, AA^2 alpha)
= mat(AA alpha, 6 alpha - AA alpha)
= mat(alpha, AA alpha) mat(0,6;1,-1)\
=> bold(P)^(-1) AA bold(P) = mat(0,6;1,-1) quad wa
$

设 $f(x) = x^2 + x - 6 = (x-2)(x+3)$，则 $f(AA) alpha = theta$，由于 $alpha$ 不是特征向量，故只能是 $f(AA) = OO$，故 $f(x)$ 是 $AA$ 的特征多项式，$AA$ 的两个特征根分别为 $2$ 和 $-3$，应至少个存在一个特征向量，故 $AA$ 可被相似对角化。#ac

#warn[
  令 $bold(Q) = display(mat((AA - 2 EE) alpha, (AA + 3 EE) alpha))$，则 $bold(Q)^(-1) AA bold(Q) = diag(-3,2)$。

  由于 $bold(Q) = bold(P) display(mat(-2,3;1,1))$，故
  $
  mat(-2,3;1,1)^(-1) bold(P)^(-1) AA bold(P) mat(-2,3;1,1) = diag(-3,2)\
  => bold(P)^(-1) AA bold(P) = mat(-2,3;1,1) diag(-3,2) mat(-2,3;1,1)^(-1) = mat(6/5,6;2/5,-1)\
  $
]

= P129 习题五 32 #wa
#prob[
  下列矩阵中，与矩阵 $display(mat(1,1,0;0,1,1;0,0,1))$ 相似的为（$quad$）

  （选项略）
]

选 (D) 项，对应矩阵为 $display(mat(1,0,-1;0,1,0;0,0,1))$。

#warn[已纠错到错题本上。]

= P130 习题五 33 #ac
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

= P130 习题五 34 #ac
#prob[
  证明：$n$ 阶矩阵 $display(mat(1,1,dots.c,1;1,1,dots.c,1;dots.v,dots.v,,dots.v;1,1,dots.c,1))$ 与 $display(mat(0,dots.c,0,1;0,dots.c,0,2;dots.v,,dots.v,dots.v;0,dots.c,0,n))$ 相似。
]

设 $bold(P) AA bold(Q) = BB$。

考虑要应用的行变换：需要将每一行依次加上前一行，即按 $i=1,2,dots.c,n-1$ 依次右乘 $EE + bold(e)_(i,i+1)$，即 $display(bold(Q) = product_(i=1)^(n-1) (EE + bold(e)_(i,i+1)))$。

考虑要应用的列变换：需要将每一列依次减去后一列，即按 $i=1,2,dots.c,n-1$ 依次左乘 $EE - bold(e)_(i,i+1)$，即 $display(bold(P) = product_(i=n-1)^(1) (EE - bold(e)_(i,i+1)))$。

考虑对于 $1<=i<n$，有 $(EE + bold(e)_(i,i+1))(EE - bold(e)_(i,i+1)) = EE - bold(e)_(i,i+1) + bold(e)_(i,i+1) - bold(e)_(i,i+1)^2 = EE$，从内到外依次相乘可以得到 $bold(P) bold(Q) = EE$。即 $bold(P) AA bold(P)^(-1) = BB$，即 $AA ssim BB$。

= P130 习题五 36 #ac
#prob[
  设 $AA$ 为非零方阵，$m>=2$ 为正整数，证明：若 $AA^m = OO$，则 $AA$ 不能与对角矩阵相似。
]

反设 $AA$ 可被对角化，即存在可逆矩阵 $bold(P)$ 使得 $bold(P)^(-1) AA bold(P) = Lambda$。考虑
$
Lambda^m = bold(P)^(-1) AA^m bold(P) = OO
$
由于 $bold(P)$ 可逆，故 $Lambda^m = diag(lb_1^m,lb_2^m,dots.c,lb_n^m) = OO$。解得 $lb_1=lb_2=dots.c=lb_n=0$ 即 $Lambda = OO$。与 $AA$ 是非零矩阵矛盾，故假设不成立，原命题得证。

= P130 习题五 38 #ac
#prob[
  设 $n$ 阶矩阵 $AA$ 的所有特征值为 $seqn(lb,n)$ 且 $AA$ 可相似对角化，证明：对任意的多项式 $f(x)$，矩阵 $f(AA)$ 的所有特征值为 $f(lb_1),f(lb_2),dots.c,f(lb_n)$。
]

设 $bold(P)^(-1) A bold(P) = Lambda = diag(seqn(lb,n))$。考虑对于任意 $m in NN_+$，有：
$
bold(P)^(-1) AA^m bold(P) = (bold(P)^(-1) AA bold(P))^m = Lambda^m = diag(lb_1^m,lb_2^m,dots.c,lb_n^m)
$
对于 $f(x)$ 的每一个单项式 $x^(k_i)$，分别代入 $m=k_i$ 并相加，可以得到：
$
bold(P)^(-1) f(AA) bold(P) = f(Lambda) = diag(f(lb_1),f(lb_2),dots.c,f(lb_n))
$
#warn[我书上的第38题和讲评的第38题似乎不一样。]

= P130 习题五 39 #ac
#prob[
  设 $AA=(a_(i j))_(n times n)$ 是一个 $n$ 阶下三角矩阵，证明：

  (1) 若 $a_11,a_22,dots.c,a_(n n)$ 互不相等，则 $AA$ 可相似对角化。
]

$
|lambda EE - AA| = (lambda-a_11)(lambda-a_22)dots.c(lambda-a_(n n))
$
故 $lambda_1=a_11,lambda_2=a_22,dots.c,lambda_n=a_(n n)$ 是 $AA$ 的 $n$ 个特征根且两两不同。

考虑到 $|lambda_i EE - AA| = 0$，故有 $r(lambda_i EE - AA)<n$，即 $dim V_(lambda_i) >= 1$，再由 $display(sum_(i=1)^n dim V_(lambda_i))$ 可得 
$
dim V_lambda_1=dim V_lambda_2=dots.c=dim V_lambda_n=1
$
故 $AA$ 可被对角化。

#prob[
  (2) 若 $a_11 = a_22 = dots.c = a_(n n)$ 且至少一个 $a_(i_0 j_0) != 0$（其中 $i_0>j_0$），则 $AA$ 不可相似对角化。
]

所有特征值相同，设为 $lambda=a_11$，再设 $BB = lambda EE - AA$。由于 $exists a_(i_0 j_0) != 0$（其中 $i_0>j_0$），故 $BB != OO$，即 $r(BB) >= 1$。

所以 $dim W = n - r(BB) < n$，故 $AA$ 不可相似对角化。

= P131 习题五 42 #ac
#prob[
  已知矩阵 $AA = display(mat(0,-1,1;2,-3,0;0,0,0))$。

  (1) 求 $AA^99$。
]

$
|lambda EE - AA| = lambda(lambda+1)(lambda+2)
$
故 $lambda_1=-2,lambda_2=-1,lambda_3=0$ 为 $AA$ 的三个特征根，求得对应的一组特征向量为：
$
cases(
  alpha_1 = display(mat(1,2,0))^TT,
  alpha_2 = display(mat(1,1,0))^TT,
  alpha_3 = display(mat(3,2,2))^TT,
)
$
取 $display(bold(P) = mat(alpha_1,alpha_2,alpha_3) = mat(
  1,1,3;
  2,1,2;
  0,0,2;
))$ 可得 $bold(P)^(-1) bold(A) bold(P) = Lambda = diag(-2,-1,0)$。那么
$
AA^99 = bold(P) Lambda^99 bold(P)^(-1) = mat(
  1,1,3;
  2,1,2;
  0,0,2;
) mat(
  -2^99,0,0;
  0,-1,0;
  0,0,0;
) mat(
  -1,-1,1/2;
  2,1,-2;
  0,0,1/2;
) = mat(
  2^99-2,2^99-1,0;
  2^100-2,2^100-1,0;
  0,0,0;
)
$

#prob[
  (2) 设三阶矩阵 $BB = display(mat(alpha_1,alpha_2,alpha_3))$ 满足 $BB^2 = BB AA$，记 $BB^100 = display(mat(beta_1,beta_2,beta_3))$，将 $beta_1,beta_2,beta_3$ 分别表示为 $alpha_1,alpha_2,alpha_3$ 的线性组合。
]

$
BB^100 &= BB AA^99 = mat(2^99-2) mat(
  2^99-2,2^99-1,0;
  2^100-2,2^100-1,0;
  0,0,0;
)\ &= mat(
  (2^99-2) alpha_1 + (2^100-2) alpha_2,
  (2^99-1) alpha_1 + (2^100-1) alpha_2,
  0,
)
$
即：
$ cases(
  beta_1 = (2^99-2) alpha_1 + (2^100-2) alpha_2,
  beta_2 = (2^99-1) alpha_1 + (2^100-1) alpha_2,  
  beta_3 = 0,
) $

= P131 习题五 44 #ac
#prob[
  设矩阵 $AA = display(mat(1,0,1;0,2,0;1,0,1))$，矩阵 $BB = (k EE + AA)^2$，其中 $k in RR$，证明：$BB$ 可相似对角化。
]

设 $bold(T) = display(mat(0,0,1;0,1,0;1,0,0))$，则 $AA = EE + bold(T)$。那么
$
BB = (k EE + EE + bold(T))^2 = (k+1)^2 EE + 2(k+1) bold(T) + bold(T)^2 = (k^2+2k+2) EE + 2(k+1) bold(T)
$
设 $t=k+1$，则 $BB = (t^2+1) EE + 2t bold(T)$，考虑
$
|lambda EE - BB| &= |(lambda-1-t^2)EE - 2t bold(T)|\
&= (lambda-1-t^2)(lambda-(t+1)^2)(lambda-1-t^2-(4t^2)/(lambda-1-t^2))\
&= (lambda-(t+1)^2) (lambda^2 - 2(t^2+1) lambda + (t-1)^2)
$
故 $BB$ 有三个不同的特征根，根据类似前面例题的推导，可以得出 $BB$ 可相似对角化。

= P132 习题五 45 #ac
#prob[
   证明：如果 $n$ 阶实矩阵 $AA$ 有 $n$ 个正交的特征向量，那么 $AA$ 是一个对称矩阵。
]

将这 $n$ 个特征向量标准化后记为 $seqn(xi,n)$，令 $bold(U) = vecn(xi,n)$，则
$
bold(U)^TT AA bold(U) &= diag(seqn(lambda,n)) = Lambda\
=> bold(U)^TT AA^TT bold(U) &= (bold(U)^TT AA bold(U))^TT = Lambda^TT = Lambda\
$
再由于 $bold(U)$ 可逆，故
$
AA = AA^TT = (bold(U)^TT)^(-1) Lambda bold(U)^(-1)
$
即 $AA$ 是对称矩阵。


= P132 习题五 46 #wa
#prob[
  设 $alpha$ 为 $n$ 元单位列向量，则（$quad$）：

  (A) $EE - alpha alpha^TT$ 不可逆；
  
  (B) $EE + alpha alpha^TT$ 不可逆；

  (C) $EE + 2alpha alpha^TT$ 不可逆；

  (D) $EE - 2alpha alpha^TT$ 不可逆。
]

#warn[不会做。]

= P132 习题五 47 #ac
#prob[
  设 $alpha$ 为三元列向量，求矩阵 $EE - alpha alpha^TT$ 的秩。
]

由46题知 $r(EE - alpha alpha^TT)<=2$。

考虑特征根为 $1$ 的解空间 $W_1$，此时 $r(EE - (EE - alpha alpha^TT)) = r(alpha alpha^TT) = 1$，故 $dim W_1 = 3-1=2$。

考虑 $r(EE - alpha alpha^TT)>=dim W_1=2$，夹得 $r(EE - alpha alpha^TT)=2$。

= P132 习题五 52 #ac
#prob[
  设 $AA$ 为三阶实对称矩阵，$lb_1,lb_2,lb_3$ 为 $AA$ 的特征值，$xi_1,xi_2$ 为 $AA$ 的分别属于 $lb_1,lb_2$ 的线性无关的特征向量。

  (1) 给出求 $AA$ 的属于特征值 $lb_3$ 的全部特征向量的一个方法。
]

首先 $AA in PP^(3 times 3)$，由于 $dim V_(lb_1) + dim_V_lb_2 + dim_V_lb_3 <= 3$，故 $dim_V_lb_3 = 1$ 即 $lb_3$ 只有一个特征向量。


根据实对称矩阵的性质，$xi_3$ 应与 $xi_1,xi_2$ 都正交，可用待定系数法解方程得到。

#prob[
  (2) 判断 $c_1 xi_1 + c_2 xi_2$（其中 $c_1,c_2 in RR$）是否为 $AA$ 的属于特征值 $lambda_3$ 的特征向量。
]

应满足 $xi_1,xi_2,xi_3$ 两两正交。

$
(xi_1,c_1 xi_1 + c_2 xi_2) = c_1 (xi_1,xi_1) = 0
(xi_2,c_1 xi_1 + c_2 xi_2) = c_2 (xi_2,xi_2) = 0
$

由于 $xi_1,xi_2,xi_3$ 都非零向量，根据内积的正定性，$(xi_1,xi_1)>0,sp (xi_2,xi_2)>0$，故只能 $c_1=c_2=0$ 而此时 $xi_3 = c_1 xi_1 + c_2 xi_2 = theta$，不能作为特征向量。故综上，这一定不是属于特征值 $lb_3$ 的特征向量。

= P133 习题五 54 #ac
#prob[
  设 $AA$ 为实三阶对称矩阵，$r(AA) = 2$，且
  $
  AA mat(1,1;0,0;-1,1) = mat(-1,1;0,0;1,1)
  $
  (1) 求 $AA$ 的所有特征值与特征向量。

  (2) 求矩阵 $AA$。
]

设 $AA = display(mat(alpha_1^TT;alpha_2^TT;alpha_3^TT))$，代入可得：
$ cases(
  alpha_1 - alpha_3 = display(mat(-1,0,1))^TT,
  alpha_1 + alpha_3 = display(mat(1,0,1))^TT,
) => cases(
  alpha_1 = display(mat(0,0,1))^TT,
  alpha_3 = display(mat(1,0,0))^TT,
) $
同时，考虑到 $r(AA) = 2$，故 $alpha_2$ 可被 $alpha_1,alpha_3$ 线性表示。再考虑到 $AA$ 是对称矩阵，故解得
$
AA = mat(0,0,1;0,0,0;1,0,0)
=> |lambda EE - AA| = lambda^2 (lambda-1/lambda) = lambda(lambda-1)(lambda+1)
$
故 $-1,0,1$ 是 $AA$ 的特征值，代入可得对应的特征向量分别为 $display(mat(1,0,-1))^TT,display(mat(0,1,0))^TT,display(mat(1,0,1))^TT$。

= P133 习题五 55 #ac
#prob[
  设三阶实对称矩阵 $AA$ 的特征值 $lb_1=1,lb_2=2,lb_3=-2$，且 $alpha_1=display(mat(1,-1,1))^TT$ 是 $AA$ 的属于 $lb_1$ 的一个特征向量，记 $BB = AA^5 - 4 AA^3 + EE$。

  (1) 验证 $alpha_1$ 是矩阵 $BB$ 的特征向量，并求 $BB$ 的全部特征值与特征向量。
]

$
BB alpha_1 = (1^5 - 4 dot 1^3 + 1) alpha_1 = -2 alpha_1
$
故 $alpha_1$ 是矩阵 $BB$ 的特征向量，且 $lb'_1=-2$。同理可得 $lb'_2=lb'_3=1$。$1$ 是 $BB$ 的一个二重特征根，其对应的特征向量应与 $display(mat(1,-1,1))^TT$ 正交且线性无关，可取：
$ cases(
  alpha_2 = display(mat(1,1,0))^TT,
  alpha_3 = display(mat(1,0,-1))^TT
) $

（下省略正交单位化的过程）

#prob[(2) 求矩阵 $BB$。]

取 $bold(P) = display(mat(1,1,0;-1,1,1;1,0,1))$，则
$
bold(P)^(-1) BB bold(P) = Lambda = mat(-2,0,0;0,1,0;0,0,1)\
=> BB = bold(P) Lambda bold(P)^(-1) = mat(
  -2,-1,0;2,-1,-1;-2,0,1
) mat(
  1/3,-1/3,1/3;
  2/3,1/3,-1/3;
  -1/3,1/3,2/3
) = mat(
  -4/3,1/3,-1/3;
  1/3,-4/3,1/3;
  -1,1,0;
)
$

= P133 习题五 58 #wa
#prob[
  证明：反对称实矩阵的特征值或为零，或为虚部不为零的纯虚数。
]

#warn[
  已整理到错题本上。

  后面的问题我也整理到纠错本上。
]

= P134 补充题五 5
#prob[
  设矩阵 $AA$ 与 $BB$ 相似，试证明：伴随矩阵 $AA^*$ 与 $BB^*$ 也相似。
]

若 $|AA|=|BB|=0$，则伴随矩阵 $AA^* = BB^* = OO$，显然相似。否则 $|AA| = |BB| != 0$。考虑
$
AA AA^* = |AA| EE = |BB| EE = BB BB^* = bold(P)^(-1) AA bold(P) BB^*\
=> bold(P) AA AA^* = AA bold(P) BB^*
=> 
$

= P134 补充题五 6
#prob[
  设 $AA$ 是一个可逆矩阵，试证明：存在多项式 $f(x)$ 使得 $AA^(-1) = f(AA)$。
]

$
AA^(-1) f(AA) = EE <=> AA^(-1) g(AA) = OO
$
其中 $g(x) = f(x) - x$。由于 $AA$ 是可逆矩阵，应满秩，故应有 $g(AA) = OO$ 即 $g(x)$ 为特征多项式。设 $seqn(lambda,n)$ 为 $AA$ 的特征根，则取
$
f(x) = g(x) + x = (x-lambda_1)(x-lambda_2)dots.c(x-lambda_n) + x
$
即合题意。

= P134 补充题五 8
#prob[
  设 $AA,BB$ 均可相似对角化，试证明：$AA,BB$ 乘法可交换当且仅当存在可逆矩阵 $bold(P)$ 使得 $bold(P) AA bold(P)^(-1)$ 与 $bold(P) BB bold(P)^(-1)$ 均为对角矩阵。
]

= P134 补充题五 10
#prob[
  设 $AA,BB in PP^(n times n)$，试证明：$AA$ 与 $BB$ 相似的充分必要条件是存在 $bold(C),bold(D) in PP^(n times n)$，使得 $AA = bold(C D)$，$BB = bold(D C)$，且 $bold(C),bold(D)$ 中至少一个可逆。
]
