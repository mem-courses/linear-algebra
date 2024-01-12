#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra #4",
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

= 矩阵的迹

矩阵 $AA$ 的主对角线的所有元素之和称为矩阵的迹，记为 $tr(bold(AA))$。

= 矩阵的秩

矩阵 $AA$ 的不等于 $0$ 的子式的最大阶数称为矩阵的秩，记为 $r(AA)$．

== 矩阵的相抵（等价）

设 $AA,BB in PP^(m times n)$，如果 $AA$ 经过一系列初等变换化为 $BB$，即存在可逆矩阵 $bold(P),bold(Q)$ 使得 $bold(P) AA bold(Q) = BB$，则称 $AA$ 与 $BB$ *相抵*（*等价*）．

== 矩阵的相抵（等价）标准形

设 $r(bold(A_(m times n)))=r$，则 $AA$ 与 $display(mat(bold(E_r),bold(O);bold(O),bold(O)))$ 相抵（等价），将其称为 $AA$ 的 *相抵（等价）标准形*．

== 基本性质

#def[性质1] $r(AA_(m times n)) <= min{m,n}$

#def[性质2] (1) $AA_(m times n)$ 中存在一个 $k$ 阶子式不等于 $0$ $=>$ $r(AA_(m times n))>=k$；\
#deft[性质2] (2) $AA_(m times n)$ 中所有 $k+1$ 阶子式都等于 $0$ $=>$ $r(AA_(m times n))<=k$．

#def[性质3] 当 $AA$ 为 $n$ 阶方阵时：\
#deft[性质3] $|AA|!=0 <=> r(AA_(n times n))=n$（称 $AA$ 为满秩矩阵 / 非奇异矩阵）\
#deft[性质3] $|AA|=0 <=> r(AA_(n times n))<n$（称 $AA$ 为降秩矩阵 / 奇异矩阵）

#def[性质4] $r(AA_(m times n))=k <=>$ $AA$ 中至少存在一个 $k$ 阶子式不为 $0$ 且 $AA$ 中所有 $k+1$ 阶子式均为 $0$．

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