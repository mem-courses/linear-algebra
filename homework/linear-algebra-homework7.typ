#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Homework #7",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "November 9, 2023",
)

#let AA = math.bold("A")
#let BB = math.bold("B")
#let CC = math.bold("C")
#let EE = math.bold("E")
#let OO = math.bold("O")
#let TT = math.upright("T")
#let alpha = math.bold(math.alpha)
#let beta = math.bold(math.beta)

= P73 习题三 52
#prob[
  已知 $a$ 是常数，且矩阵 $AA = display(mat(1,2,a;1,3,0;2,7,-a))$ 可经初等列变换化为矩阵 $BB = display(mat(1,a,2;0,1,1;-1,1,1))$．

  (1) 求 $a$．
]

对 $AA$ 应用初等行变换得 $AA -> display(mat(1,2,a;0,1,-a;0,0,0))$；对 $BB$ 应用初等行变换得 $BB -> display(mat(-1,1,1;0,1,1;0,0,2-a))$．

由于 $AA$ 可以通过初等列变换化为 $BB$ 的充要条件是 $AA$ 与 $BB$ 相抵，即 $r(AA) = r(BB) = 2$，故 $a=2$．

#prob[(2) 求满足 $bold(A P) = BB$ 的可逆矩阵 $bold(P)$．]

由 (1) 得 $AA = display(mat(1,2,2;0,1,-2;0,0,0)),sp BB=display(mat(1,2,2;0,1,1;-1,1,1))$．TBD

= P73 习题三 53 #ac
#prob[设矩阵 $AA = display(mat(0,1,0,0;0,0,1,0;0,0,0,1;0,0,0,0))$，求 $AA^3$ 的秩．]

$
AA = mat(0,1,0,0;0,0,1,0;0,0,0,1;0,0,0,0)
=> AA^2 = mat(
  0,0,1,0;
  0,0,0,1;
  0,0,0,0;
  0,0,0,0;
) => AA^3 = mat(
  0,0,0,1;
  0,0,0,0;
  0,0,0,0;
  0,0,0,0;
)
$

所以 $r(AA^3) = 1$．

= P73 习题三 54
#prob[
  设 $AA$ 为 $m times n$ 矩阵，$BB$ 为 $n times m$ 矩阵，$bold(E)$ 为 $m$ 阶单位矩阵．若 $bold(A B)=bold(E)$，则（$quad$）．

  (A) 秩 $r(AA)=m$，秩 $r(BB)=m$．\
  (B) 秩 $r(AA)=m$，秩 $r(BB)=n$．\
  (C) 秩 $r(AA)=n$，秩 $r(BB)=m$．\
  (D) 秩 $r(AA)=n$，秩 $r(BB)=n$．
]

选 (A) 项．

= P73 习题三 55 #ac
#prob[
  设 $AA,BB$ 为 $n$ 阶矩阵，则（$quad$）

  (A) $r(bold(A sp A B)) = r(AA)$\
  (B) $r(bold(A sp B A)) = r(AA)$\
  (C) $r(bold(A sp B)) = max{r(AA),r(BB)}$\
  (D) $r(bold(A sp B)) = r(AA^TT sp BB^TT)$
]

选 (A) 项．

= P73 习题三 56 #ac
#prob[(1) 设 $AA$ 是一个 $n$ 阶方阵，证明：$r(AA)=1$ 当且仅当存在非零列向量 $alpha,beta$ 使得 $AA = bold(alpha beta)^TT$．]

$=>$：$AA$ 的所有列向量两两线性相关，设 $AA = vecn(alpha,n)$，设 $alpha_i = k_i alpha_1 sp (i=2,3,dots.c,n)$，则取 $beta^TT = display(mat(1,k_2,k_3,dots.c,k_n))^TT$ 有 $AA = alpha beta^TT$．

$arrow.double.l$：$r(AA) = r(alpha beta^TT) <= min{r(alpha), r(beta)} = 1$．若 $r(AA) = 0$ 即 $AA = OO$，则 $alpha,beta$ 中必有一个零向量，与题设矛盾．故 $r(AA) = 1$．

#prob[(2) 设 $AA$ 是一个 $n$ 阶方阵且 $r(AA)=1$，证明存在常数 $k$，使得 $AA^2=k AA$ 成立．]

设 $AA = alpha beta^TT$，其中 $alpha,beta$ 非零向量．则：
$
AA^2 = (alpha beta^TT)^2 = alpha (beta^TT alpha) beta^TT = (beta^TT alpha) AA
$
则 $k=beta^TT alpha$ 即所求常数．

#prob[(3) 设 $AA$ 为一个二阶方阵，证明：如果存在正整数 $l>=2$ 使得 $AA^l = bold(O)$，那么 $AA^2 = bold(O)$．]

讨论 $r(AA)$：

若 $r(AA) = 0$，即 $AA = OO$，则必满足 $AA^l = AA^2 = OO$．

若 $r(AA) = 1$，即不妨令 $AA = display(mat(a,b;0,0))$，其中 $a,b$ 为不全为零的实数，则
$
AA^l = mat(a^l,a^(l-1) b;0,0) = OO => a = 0 and b != 0
$
故 $AA^2 = display(mat(a^2,a b;0,0)=mat(0,0;0,0))=OO$．

若 $r(AA) =2$，即 $AA$ 是可逆矩阵，则 $forall l in NN_+$，$AA^l$ 均可逆，故不可能 $AA^l = OO$．

= P73 习题三 57 #wa
#prob[
  设 $AA$ 是一个 $s times n$ 矩阵，证明：
  
  (1) 如果 $s<=n$ 且 $r(AA) = s$（此时称矩阵 $AA$ 是行满秩的），那么必有 $n times s$ 矩阵 $BB$ 使得 $AA BB = bold(E)_s$．
]

#prob[(2) 如果 $n<=s$ 且 $r(AA)=n$（此时称矩阵 $AA$ 是列满秩的），那么必有 $n times s$ 矩阵 $bold(C)$ 使得 $bold(C A) = bold(E)_n$．]

TBD

#warn[已纠错到错题本上．]

= P74 习题三 58 #ac
#prob[设 $m times n$ 矩阵 $bold(A)$ 的秩为 $r$，证明：存在秩为 $r$ 的 $m times r$ 矩阵 $bold(B)$ 和秩为 $r$ 的 $r times n$ 矩阵 $bold(C)$，使得 $bold(A) = bold(B C)$．]

存在可逆矩阵 $bold(P) in PP^(m times m)$ 和可逆矩阵 $bold(Q) in PP^(n times n)$ 使得
$
bold(P) AA bold(Q) = mat(EE_r,;,OO_(m-r,n-r)) = mat(EE_r;O_(m-r,r)) mat(EE_r,OO_(r,n-r))
$
取 $BB = bold(P)^(-1) display(mat(EE_r,;,OO_(m-r,n-r))),sp CC = display(mat(EE_r;OO_(m-r,r)) mat(EE_r,OO_(r,n-r))) bold(Q)^(-1)$ 则 $AA = BB CC$．

= P74 习题三 60 #wa
#prob[
  设 $AA$ 为 $n$ 阶矩阵（$n>=2$），$AA^*$ 为 $AA$ 的伴随矩阵，证明：
  $ r(AA^*) = cases(
    n\,quad& r(AA)=n,
    1\,quad& r(AA)=n-1,
    0\,quad& r(AA)<=n-2
  ) $
]

TBD
#warn[已纠错到错题本上．]

= P74 习题三 62 #ac
#prob[
  设矩阵 $AA$ 是 $n$ 阶幂等矩阵，即 $AA^2=AA$，证明：

  (1) $r(AA) + r(EE_n-AA) = n$．
]

$
r(AA) + r(EE-AA) &<= n+r(AA(EE - AA)) = n+r(AA - AA^2) = n\
r(AA) + r(EE - AA) &>= r(AA + (EE - AA))= r(EE) = n\
$

夹得 $r(AA) + r(EE - AA) = n$．

#prob[(2) 如果 $AA$ 可逆，那么 $AA=EE_n$．]

若 $AA$ 可逆，则两边都左乘 $AA^(-1)$ 得 $EE = AA$，得证．

= P74 习题三 63 #ac
#prob[设矩阵 $AA,BB,CC$ 均为 $n$ 阶方阵，证明：如果 $AA BB CC = bold(O)$，那么 $ r(AA) + r(BB) + r(CC) <= 2n $]

$
&cases(
  r(AA) + r(BB) <= r(AA BB) + n,
  r(BB) + r(CC) <= r(BB CC) + n,
)\
=> &r(AA) + 2 r(BB) + r(CC) <= r(AA BB) + r(BB CC) + 2n <= r(AA BB CC) + r(BB) + 2n = 2n + r(BB)\
=> &r(AA) + r(BB) + r(CC) <=  2n
$

= P74 习题三 64 #ac
#prob[设矩阵 $AA$ 是一个 $n$ 阶方阵，证明 $r(AA^3) + r(AA) >= 2r(AA^2)$．]

$
r(AA^3) >= r(AA^2) + r(AA^2) - r(AA) => r(AA^3) + r(AA) >= 2r(AA^2)
$


  设分块矩阵 $display(mat(AA,BB;CC,bold(D)))$ 是对称矩阵，且 $bold(AA)$ 可逆，证明：存在可逆矩阵 $bold(P)$，使得

  $ bold(P)^TT mat(AA,BB;CC,bold(D)) bold(P) = mat(AA,bold(O);bold(O),bold(D)-CC AA^(-1) BB) $

= P74 补充题三 5 #wa
#prob[
  设分块矩阵 $display(mat(AA,BB;CC,bold(D)))$ 是对称矩阵，且 $bold(AA)$ 可逆，证明：存在可逆矩阵 $bold(P)$，使得

  $ bold(P)^TT mat(AA,BB;CC,bold(D)) bold(P) = mat(AA,bold(O);bold(O),bold(D)-CC AA^(-1) BB) $
]

由已知：
$
(bold(P)^TT mat(AA,BB;CC,bold(D)) bold(P))^TT = bold(P)^TT mat(AA,BB;CC,bold(D))^TT bold(P) = bold(P)^TT mat(AA,BB;CC,bold(D)) bold(P)\
=> mat(AA,bold(O);bold(O),bold(D)-CC AA^(-1) BB) = mat(AA,bold(O);bold(O),bold(D)-CC AA^(-1) BB)^TT = mat(AA^TT,bold(O);bold(O),(bold(D)-CC AA^(-1) BB)^TT)
$
注意到 $AA$ 可逆，故 $AA$ 必定是方阵．否则 $AA$ 必有一行或一列全零，与可逆矛盾．

同时，可得：
$
cases(
  AA = AA^TT,
  bold(D)-CC AA^(-1) BB = (bold(D)-CC AA^(-1) BB)^TT
)
$

设 $AA in PP^(n times n),sp bold(D) in PP^(m times m)$，则 $BB in PP^(n times m), sp CC in PP^(m times n)$．

TBD

#warn[已纠错到错题本上．]

= P74 补充题三 6 #ac
#prob[
  设 $AA,BB$ 分别是 $n times m$ 和 $m times n$ 矩阵，证明：
  
  #set math.mat(delim: "|")
  (1) $display(mat(bold(E)_m,BB;AA,bold(E)_n)) = |bold(E)_n - AA BB| = |bold(E)_m - BB AA|$．
  #set math.mat(delim: "(")
]


#set math.mat(delim: "|")
$
mat(bold(E)_m,BB;AA,bold(E)_n)
&= mat(EE_m, OO; AA, EE_n- AA BB)
&= mat(EE_m) dot mat(bold(E)_n - AA BB)
&= mat(bold(E)_n - AA BB)
$
同理可证 $display(mat(bold(E)_m,BB;AA,bold(E)_n)) = display(mat(bold(E)_m - BB AA))$．
#set math.mat(delim: "(")

#prob[(2) 当 $lambda != 0$ 时，$|lambda bold(E)_n - bold(A B)| = lambda^(n-m) |lambda bold(E)_m - bold(B A)|$．]

#set math.mat(delim: "|")
$
mat(lambda EE_m,BB;AA,EE_n)
= mat(lambda EE_m - AA BB, OO; AA, EE_n)
= mat(lambda EE_m, OO; AA, EE_n - 1/lambda AA BB)\
=> |lambda EE_m - AA BB| = |lambda EE_m| |EE_n - 1/lambda AA BB| = lambda^(m-n) |lambda EE_n - AA BB|
$
#set math.mat(delim: "(")
故原命题得证．

= P75 补充题三 8 #ac
#prob[
  设 $AA$ 是 $n$ 阶方阵，且 $r(AA) = r$，证明：

  (1) $AA$ 可表示成 $r$ 个秩为 $1$ 的方阵的和．
]

$AA$ 可被可逆矩阵 $bold(P),bold(Q)$ 化为相抵标准形：

$
AA = bold(P) mat(EE_r,;,OO_(n-r)) bold(Q) = bold(P) (bold(e)_11 + bold(e)_22 + dots.c + bold(e)_(r r)) +bold(Q)
$

故 $AA$ 可被表示为 $bold(P)bold(e)_(i i)bold(Q) sp (i=1,2,dots.c,r)$ 的和，其中它们的秩都等于 $r(bold(e)_(i i)) = 1$．

#prob[(2) 存在一个 $n$ 阶可逆方阵 $bold(P)$，使得 $bold(P A P)^(-1)$ 的后 $n-r$ 个行全为零．]

通过初等行变换对 $AA$ 进行高斯消元，可将 $bold(A)$ 化为一个后 $n-r$ 行全为 $0$ 的方阵 $AA bold(Q)$（其中 $bold(Q)$ 是一个可逆矩阵）．

再对 $AA bold(Q)$ 作任意初等列变换，则其后 $n-r$ 行仍全是零．故取 $bold(P)=bold(Q)^(-1)$，可得 $bold(P)AA bold(P)^(-1)$ 的后 $n-r$ 个行全为零．

= P75 补充题三 9 #ac
#prob[试证明 $PP^(n times n)$ 中任意一个矩阵均可表示为 $PP^(n times n)$ 中的一个可逆矩阵和一个幂等矩阵的乘积．]

设 $r(AA) = r$，则存在可逆矩阵 $bold(P),bold(Q)$ 使得
$
AA = bold(P) mat(EE_r,;,OO_(n-r)) bold(Q)
$
则取：
$
cases(bold(B) &= bold(P)bold(Q),
bold(C) &= bold(Q)^(-1) display(mat(EE_r,;,OO_(n-r))) bold(Q))
$
即满足 $bold(B)$ 是可逆矩阵，$bold(C)$ 是幂等矩阵的要求．

= P75 补充题三 11 #ac
#prob[
  设矩阵 $AA in PP^(m times n)$，$BB in PP^(n times m)$，试证明：

  $ r(bold(E)_m - AA BB) + n = r(bold(E)_n - BB AA) + m $
]

设 $bold(C) = display(mat(EE_n, BB; AA, EE_m))$，考虑对其应用初等变换有：
$
bold(C)
= mat(EE_n, BB; AA, EE_m)
-> mat(EE_n, OO; AA, EE_m - AA BB)
-> mat(EE_n, OO; OO, EE_m - AA BB)
$
故 $r(bold(C)) = n + r(EE_m - AA BB)$，同理可得 $r(bold(C)) = m + r(EE_n - BB AA)$，故原命题等证．

= P75 补充题三 12 #ac
#prob[
  设 $AA$ 是一个 $n$ 阶可逆矩阵，向量 $alpha,beta in PP^n$，证明：$ r(AA + alpha beta^TT) >= n-1 $
]

可以进一步地证明：
$
r(AA + BB) >= r(AA) - r(BB)
&<=> r(AA + BB) + r(-BB) >= r(AA)\
&<=> r(AA + BB) + r(-BB) >= r((AA + BB) + (-BB))\
$

故
$
r(alpha beta^TT) <= 1\\
r(AA + alpha beta^TT) >= n - r(alpha beta^TT) >= n-1
$
