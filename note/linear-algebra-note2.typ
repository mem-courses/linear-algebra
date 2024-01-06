#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Note #2",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "November 13, 2023",
)

#let AA = math.bold("A")
#let BB = math.bold("B")
#let CC = math.bold("C")
#let DD = math.bold("D")
#let EE = math.bold("E")
#let XX = math.bold("X")
#let II = math.bold("I")
#let OO = math.bold("O")
#let TT = math.upright("T")
#let alpha = math.bold(math.alpha)
#let beta = math.bold(math.beta)
#let theta = math.bold(math.theta)

= 矩阵的运算

== 数乘

矩阵数乘的四条定理：

#box(height: 29pt)[
  #columns(2)[
    1. $k(AA + BB) = k AA + k BB$；
    2. $(k+t) AA = k AA + t AA$；
    3. $(k t) AA = k(t AA)$；
    4. $1 dot AA = AA$．
  ]
]

== 加法

矩阵加法的四条定理：

#box(height: 29pt)[
  #columns(2)[
    1. 加法交换律：$AA + BB = BB + AA$；
    2. 加法结合律：$(AA + BB) + CC = AA + (BB + CC)$；
    3. 零矩阵：$OO + AA = AA + OO = AA$；
    4. 负矩阵：$AA + (-AA) = OO$．
  ]
]

== 乘法

只有第一个矩阵的 *列数* 等于第二个矩阵的 *行数* 时，两个矩阵才可以相乘．结果矩阵的第 $i$ 行第 $j$ 个元素等于第一个矩阵的第 $i$ 行与第二个矩阵的第 $j$ 列的点积．

1. 不满足交换律：一般地，$AA BB != BB AA$（如果 $AA BB = BB AA$，则称 $AA$ 与 $BB$ 是可交换的）；
2. 不满足消去律：$AA BB = AA CC arrow.r.double.not BB = CC$；$AA BB = OO arrow.r.double.not AA = OO or BB = OO$（如果 $AA$ 可逆，那么消去律满足）；
3. 满足结合律：$(AA BB) CC = AA (BB CC)$；
4. 满足分配律：$AA (BB + CC) = AA BB + AA CC$，$(BB + CC) AA = BB AA + CC AA$，$k(AA BB) = (k AA)BB = AA (k BB)$．

#warn[
  #def[注意]
  - $(AA + BB)(AA - BB) = AA^2 - AA BB + BB AA - BB^2 != AA^2 - BB^2$
  - $(AA BB)^2 = AA (BB AA) BB != AA^2 BB^2$
]

#def[性质1]设 $AA,BB$ 都是 $n$ 阶方阵，则 $|AA BB| = |AA| dot |BB| = |BB AA|$．

#prof[
  #set math.mat(delim: "|")
  #def[证明]记 $|DD| = display(mat(AA, OO; -EE, BB)) = |AA| |BB|$．

  另一方面，对 $DD$ 做初等行变换 $display(C_(n+j)+sum_(i=1)^n b_(i j)C_i\,sp j=1\,2\,dots.c\,n)$，可得 $|DD|=display(mat(AA,CC;-EE,OO))$，其中 $CC=AA BB$．那么有 $|DD| = (-1)^(n^2) |CC| |-EE| = (-1)^(n(n+1)) |CC| = |AA BB|$．

  因此证得 $|AA BB| = |AA| |BB|$．
]

#def[性质2]关于可交换矩阵的几条结论：\
#deft[性质2]1. 与任何矩阵可交换的矩阵一定是数量矩阵\
#deft[性质2]2. 与对角线上元素互不相同的对角矩阵可交换的矩阵一定是对角矩阵\

== 转置

#def[性质1]当 $AA$ 为方阵时，$|AA| = |AA^TT|$；

#def[性质2]$(AA BB)^TT = BB^TT AA^TT$．



= 矩阵的逆

对于 $n$ 阶方阵 $AA$，若存在 $n$ 阶方阵 $BB$ 使得 $AA BB = BB AA = EE$，则称 $AA$ *可逆*，且 $BB$ 是 $AA$ 的 *逆矩阵*．用 $AA^(-1)$ 表示 $AA$ 的逆矩阵．

== 伴随矩阵

$n$ 阶*方阵* $AA$ 的各个元素的代数余子式 $A_(i j)$ 所构成的如下矩阵：$ AA^* = mat(A_(11),A_(21),dots.c,A_(n 1);A_(12),A_(22),dots.c,A_(n 2);dots.v,dots.v,,dots.v;A_(1 n),A_(2 n),dots.c,A_(n n)) $称为 $AA$ 的 *伴随矩阵*．（注意：原先第 $i$ 行各元素的代数余子式在伴随矩阵的第 $j$ 列）

#def[引理]$AA dot AA^* = AA^* dot AA = |AA| dot EE$

#prof[
  可以通过 $sum_(i=1)^n a_(j i) A_(k i) = |AA| [j=k]$ 证明．
]

#def[性质]1. $AA$ 可逆 $<=>$ $AA^*$ 可逆；

#deft[性质]2. $|AA^*| = |AA|^(n-1) sp (n>=2)$（由 1. 得无论 $AA$ 是否可逆都成立）；

#deft[性质]3. $(AA^*)^* = |AA|^(n-2) AA sp (n>=3)$

#deft[性质]4. $(k AA)^* = k^(n-1) AA^* sp (n>=2)$

#deft[性质]5. $(AA BB)^* = BB^* AA^*$；

#deft[性质]6. $(AA^*)^(-1) = (AA^(-1))^* = display(1/(abs(AA)) AA)$

#deft[性质]7. $(AA^*)^TT = (AA^TT)^*$

#deft[性质]8. $r(AA^*) = display(cases(
      n\,quad& r(AA) = n,
      1\,quad& r(AA) = n-1,
      0\,quad& r(AA) < n-1,
    ))$．

== 性质

#def[性质1.1]$AA$ 可逆\
#deft[性质1.1]$<=>$ $|AA| != 0$\
#deft[性质1.1]$<=>$ $r(AA) = n$\
#deft[性质1.1]$<=>$ $AA XX=theta$ 只有零解\
#deft[性质1.1]$<=>$ $forall beta,sp AA XX=beta$\
#deft[性质1.1]$<=>$ $AA$ 可以表示为初等矩阵的乘积\
#deft[性质1.1]$<=>$ $AA^*$ 可逆\
#deft[性质1.1]$<=>$ $AA$ 与 $EE$ 相抵（等价）\
#deft[性质1.1]$<=>$ $AA$ 的行（列）向量组线性无关\
#deft[性质1.1]$<=>$ $AA$ 的所有特征值都不为零\

#def[性质1.2]$AA$ 不可逆\
#deft[性质1.2]$<=>$ $|AA| = 0$\
#deft[性质1.2]$<=>$ $r(AA) < n$\
#deft[性质1.2]$<=>$ $AA XX = theta$ 有非零解\
#deft[性质1.2]$<=>$ $AA$ 的行（列）向量组线性相关\
#deft[性质1.2]$<=>$ $0$ 是 $A$ 的特征值\

#def[性质2]如果 $AA$ 可逆，则 $AA^(-1)$ 必唯一．

#def[性质3]当 $AA$ 可逆时，$AA^(-1) = display(AA^* / (|AA|))$．

#prof[
  *必要性*：设 $AA$ 可逆，两边取行列式得到$ |AA||BB| = |BB||AA| = |EE| = 1 => |AA|!=0 $
  *充分性*：设 $|AA|!=0$，由引理 $AA dot AA^* = AA^* dot AA = |AA| dot EE$ 两边同除 $|AA|$ 得到$ AA dot (AA^*)/(|AA|) = (AA^*)/(|AA|) dot AA = EE $
  
  比较定义可知，$AA$ 可逆，那么 $AA^(-1) = display(frac(AA^*,|AA|))$．
]

#def[性质4]设 $AA$ 可逆，那么：

#box(height: 31pt)[
  #columns(2)[
    1. $AA^(-1)$ 可逆，且 $(AA^(-1))^(-1) = AA$；
    2. $k!=0$ 时，$k AA$ 可逆，且 $(k AA)^(-1) = display(1/k) AA^(-1)$；
    3. $AA^TT$ 可逆，且 $(AA^TT)^(-1) = (AA^(-1))^TT$；
    4. $|AA^(-1)| = |AA|^(-1)$．
  ]
]

#def[性质5]若 $AA,BB$ 都是 $n$ 阶可逆矩阵，且 $AA BB$ 可逆，那么 $(AA BB)^(-1) = BB^(-1) AA^(-1)$．

#def[性质6]若对角矩阵 $bold(Lambda) = op("diag")(lambda_1,lambda_2,dots.c,lambda_n)$ 可逆，那么 $bold(Lambda)^(-1) = op("diag")(lambda_1^(-1),lambda_2^(-1),dots.c,lambda_n^(-1))$．

#def[性质7]（Cramer 法则）对于线性方程组 $AA bold(X) = bold(beta)$，若 $AA$ 为 $n$ 阶方阵，且 $D = |AA| != 0$，有唯一解：
  #set math.mat(delim: "(")
  $
  bold(X)
  = mat(x_1;x_2;dots.v;x_n)
  = AA^(-1) bold(beta)
  = frac(AA^*,|AA|) bold(beta)
  = frac(1,|AA|) mat(
    AA_11,AA_21,dots.c,AA_(n 1);
    AA_12,AA_22,dots.c,AA_(n 2);
    dots.v,dots.v,,dots.v;
    AA_(1 n),AA_(2 n),dots.c,AA_(n n);
  ) mat(b_1;b_2;dots.v;b_n)
  = frac(1,D) mat(D_1;D_2;dots.v;D_n)
  $

== 求矩阵的逆的方法

=== 定义法
找到 $BB$ 使得 $AA BB = EE$，则 $AA^(-1) = BB$

=== 伴随矩阵法
$display(AA^(-1) = 1/(abs(AA)) AA)$．

=== 初等变换法
对分块矩阵 $display(mat(AA,dots.v,EE))$ 应用初等行变换化为 $display(mat(EE,dots.v,AA^(-1)))$

= 矩阵的分块

== 加法

设 $AA=(a_(i j))_(m times n)=(AA_(i j))_(s times t), BB=(b_(i j))_(m times n)=(BB_(i j))_(s times t)$，如果有相同分块法，则$ AA + BB = (AA_(i j) + BB_(i j))_(s times t) $

== 数乘

设 $AA=(AA_(i j))_(s times t)$，那么 $k dot AA = (k dot AA_(i j))_(s times t)$．

== 乘法

设 $AA=(a_(i j))_(m times s),BB=(b_(i j))_(s times n)$，只要求 $AA$ 的行的分法和 $BB$ 的列的分法 *完全一样*，那么可用类似于矩阵乘法的规则相乘．

== 转置

等于将分块矩阵转置并将每个元素转置．

== 求逆

当矩阵分块后，对于以下特殊情形：（其中 $AA in PP^(r times r),BB in PP^(s times s)$）

$
bold(G)_1 = mat(AA,OO;CC,BB), quad
bold(G)_2 = mat(AA,CC;OO,BB), quad
bold(G)_3 = mat(OO,AA;BB,CC), quad
bold(G)_4 = mat(CC,AA;BB,OO).
$

由于 $|bold(G)_1| = |bold(G)_2| = |AA||BB|,sp |bold(G)_3| = |bold(G)_4| = (-1)^(s times t)|AA||BB|$，所以 $bold(G)_1 (bold(G)_2,bold(G)_3,bold(G)_4)$ 可逆 $<=>$ $AA$ 和 $BB$ 均可逆．可以证明：

$
(bold(G)_1)^(-1) = mat(AA^(-1),OO;-BB^(-1)CC AA^(-1),BB^(-1)),&quad
(bold(G)_2)^(-1) = mat(AA^(-1),-AA^(-1) CC BB^(-1);OO,BB^(-1)),\
(bold(G)_3)^(-1) = mat(-BB^(-1) CC AA^(-1),BB^(-1);AA^(-1),OO),&quad
(bold(G)_4)^(-1) = mat(OO,BB^(-1);AA^(-1),-AA^(-1)CC BB^(-1)).
$

#prof[
  设 $bold(G)=display(mat(AA,OO;CC,BB))$ 且 $bold(G)$ 可逆．设 $bold(G)^(-1) = display(mat(XX_11,XX_12;XX_21,XX_22))$，那么

  $
  &mat(AA,OO;CC,BB) mat(XX_11,XX_12;XX_21,XX_22) = mat(EE_r,;"",EE_s)\
  =>& display(mat(AA XX_11,AA XX_12;CC XX_11 + BB XX_21,CC XX_12 + BB XX_22
  ))= mat(EE_r,;"",EE_s)\
  $

  从而可以解得 $bold(G)^(-1)$．
]

== 准对角阵

$AA = op("diag")(AA_1,AA_2,dots.c,AA_n)$．其中 $AA$ 是方阵，$AA_(i) (i=1,2,dots.c,n)$ 也都是方阵．

那么 $AA$ 的数乘、加法、乘法、方幂、行列式、求逆运算都可以类比对角矩阵．

= 初等矩阵

设 $AA in PP^(m times n)$，则

- 对矩阵应用初等行变换，相当于将矩阵左乘对应的 $m$ 阶初等矩阵；
- 对矩阵应用初等列变换，相当于将矩阵右乘对应的 $n$ 阶初等矩阵．

这里以三阶初等矩阵为例：

1. *倍乘*：$E_2 (k) = display(mat(1,0,0;0,k,0;0,0,1))$，可将矩阵的第 $2$ 行（或第 $2$ 列）乘以 $k$ 倍．

2. *交换*：$E_12 = display(mat(0,1,0;1,0,0;0,0,1))$，可将矩阵的第 $1,2$ 行（或第 $1,2$ 列）交换．

3. *倍加*：$E_13 (k)=display(mat(1,0,0;0,1,0;k,0,1))$，可将矩阵的第 $1$ 行的 $k$ 被加到第 $3$ 行（或第 $3$ 列的 $k$ 倍加到第 $1$ 列）．

#def[性质]初等矩阵是可逆的，且初等矩阵的逆是初等矩阵．

#def[结论1]$r(AA_(m times n))=r <=>$ 存在 $m$ 阶可逆阵 $bold(P)$ 和 $n$ 阶可逆阵 $bold(Q)$，使得 $display(bold(P A Q) = mat(EE_r,OO;OO,OO))$．

#def[结论2]设 $AA in PP^(n times n)$ 可逆，那么 $AA$ 一定可以被表示为一系列初等矩阵的乘积．

= 矩阵的秩

矩阵 $bold(A)$ 的不等于 $0$ 的子式的最大阶数称为矩阵的秩，记为 $r(bold(A))$．

== 矩阵的相抵（等价）

设 $bold(A),bold(B) in PP^(m times n)$，如果 $bold(A)$ 经过一系列初等变换化为 $bold(B)$，即存在可逆矩阵 $bold(P),bold(Q)$ 使得 $bold(P) AA bold(Q) = BB$，则称 $bold(A)$ 与 $bold(B)$ *相抵*（*等价*）．

== 矩阵的相抵（等价）标准形

设 $r(bold(A_(m times n)))=r$，则 $bold(A)$ 与 $display(mat(bold(E_r),bold(O);bold(O),bold(O)))$ 相抵（等价），将其称为 $bold(A)$ 的 *相抵（等价）标准形*．

== 基本性质

#def[性质1] $r(bold(A)_(m times n)) <= min{m,n}$

#def[性质2] (1) $bold(A)_(m times n)$ 中存在一个 $k$ 阶子式不等于 $0$ $=>$ $r(bold(A)_(m times n))>=k$；\
#deft[性质2] (2) $bold(A)_(m times n)$ 中所有 $k+1$ 阶子式都等于 $0$ $=>$ $r(bold(A)_(m times n))<=k$．

#def[性质3] 当 $bold(A)$ 为 $n$ 阶方阵时：\
#deft[性质3] $|bold(A)|!=0 <=> r(bold(A)_(n times n))=n$（称 $bold(A)$ 为满秩矩阵 / 非奇异矩阵）\
#deft[性质3] $|bold(A)|=0 <=> r(bold(A)_(n times n))<n$（称 $bold(A)$ 为降秩矩阵 / 奇异矩阵）

#def[性质4] $r(bold(A)_(m times n))=k <=>$ $bold(A)$ 中至少存在一个 $k$ 阶子式不为 $0$ 且 $bold(A)$ 中所有 $k+1$ 阶子式均为 $0$．

#def[性质5] 矩阵的初等变换不改变矩阵的秩．

#def[性质6] 矩阵增加一行或一列，矩阵的秩不变或增加 $1$．

#def[性质2]当 $bold(P),bold(Q)$ 可逆时，$r(AA) = r(bold(P A)) = r(bold(A Q)) = r(bold(P A Q))$．

#def[性质3]$r(AA BB) <= min{r(AA),r(BB)}$．

#prof[
  #def[证明]（充分利用相抵标准型）先证 $r(AA_(m times s) BB_(s times n)) <= r(AA)$．设 $r(AA) = r$，则有可逆矩阵 $bold(P)_(m times m), bold(Q)_(s times s)$，使得 $AA = bold(P) display(mat(EE_r, OO;OO, OO))bold(Q)$．

  所以 $r(AA BB) = r(bold(P) display(mat(EE_r, OO;OO, OO)) bold(Q) BB) = r(display(mat(EE_r, OO;OO, OO)) bold((Q B))_(s times n))$，

  设 $bold(Q B) = display(mat(CC_(r times n);bold(H)_((s-r)times n)))$，那么 $display(mat(EE_r, OO;OO, OO)) display(mat(CC_(r times n);bold(H)_((s-r)times n))) = display(mat(CC_(r times n)))$．

  所以 $r(AA BB) <= r = r(AA)$，同时 $r(AA BB) = r(AA BB)^TT = r(BB^TT AA^TT) <= r(BB^TT) = r(BB)$．故命题得证．
]

#def[性质4]设 $bold(G) = display(mat(AA_(M times n),OO;OO,BB_(s times t)))$（或 $bold(G) = display(mat(OO,AA_(m times n);BB_(s times t),OO))$）则 $r(bold(G)) = r(AA) + r(BB)$．

#prof[
  #def[证明]由已知，存在可逆矩阵 $bold(P)_i,bold(Q)_i sp (i,j=1,2)$ 使 $AA=bold(P)_1 display(mat(EE_r,OO;OO,OO)) bold(Q)_1,sp BB=bold(P)_2 display(mat(EE_s,OO;OO,OO)) bold(Q)_2$．

  则有：$bold(P G Q) = display(mat(bold(P)_1,OO;OO,bold(P)_2)) display(mat(AA,OO;OO,BB)) display(mat(bold(Q)_1,OO;OO,bold(Q)_2)) = display(mat(bold(P)_1 AA bold(Q)_1,OO; OO,bold(P)_2 BB bold(Q)_2)) = display(mat(EE_r,OO,OO,OO;OO,OO,OO,OO;OO,OO,EE_s,OO;OO,OO,OO,OO))$．

  所以 $r(bold(G)) = r(AA) + r(BB)$．
]

#def[性质5]设 $AA,BB in PP^(m times n)$，则 $r(AA) - r(BB) <= r(AA+BB) <= r(AA) + r(BB)$．


#prof[
  #def[证明（一）]利用相抵标准型．
  设 $r(AA) = r$，则有可逆矩阵 $bold(P),bold(Q)$ 使得 $bold(P A Q) = display(mat(EE_r,OO;OO,OO))$．

  因为 $r(bold(P A B)) = r(bold(A B))$．考察：
  
  $
  bold(P A B)
  &= (bold(P A Q))(bold(Q)^(-1) BB)
  = display(mat(EE_r,OO;OO,OO))_(s times n) (bold(Q)^(-1) BB)_(n times m)\
  &= display(mat(EE_r,OO;OO,OO)) display(mat(CC_(r times m);bold(F)_((n-r) times m)))
  = display(mat(CC_(r times m);OO))
  $

  所以 $r(bold(A B)) = r(bold(P A B)) = r(CC)$．又，
  $
  r(BB) &= r(bold(Q)^(-1) BB) = r mat(CC;bold(F)) <= r mat(CC,OO;bold(F),bold(F)) = r mat(CC,OO;OO,bold(F))\
  &= r(CC) + r(bold(F)) <= r(AA BB) + n - r = r(AA BB) + n - r(AA)
  $

  即可得到 Sylvester 不等式．
]

#prof[
  #def[证明（二）]利用分块矩阵作初等变换．
  $
  mat(EE_n,;,AA BB)
  -> mat(EE_n,;AA,AA BB)
  -> mat(EE_n,-BB;AA,)
  -> mat(EE_n,BB;AA,)
  $
  考虑：
  $
  r(AA BB) + n
  = r mat(EE_n,;,AA BB)
  = r mat(EE_n,BB;AA,)
  >= r mat(,BB;AA,)
  = r(AA) + r(BB)
  $
]

#def[性质7]（Frobenius不等式）设 $AA in PP^(m times n),sp BB in PP^(n times t),sp CC in PP^(t times s)$，则
$ r(AA BB CC) >= r(AA BB) + r(BB CC) - r(BB) $