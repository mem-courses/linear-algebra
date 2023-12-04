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

= P73 习题三 52
#prob[
  已知 $a$ 是常数，且矩阵 $AA = display(mat(1,2,a;1,3,0;2,7,-a))$ 可经初等列变换化为矩阵 $BB = display(mat(1,a,2;0,1,1;-1,1,1))$。

  (1) 求 $a$。
]

对 $AA$ 应用初等行变换得 $AA -> display(mat(1,2,a;0,1,-a;0,0,0))$；对 $BB$ 应用初等行变换得 $BB -> display(mat(-1,1,1;0,1,1;0,0,2-a))$。

由于 $AA$ 可以通过初等列变换化为 $BB$ 的充要条件是 $AA$ 与 $BB$ 相抵，即 $r(AA) = r(BB) = 2$，故 $a=2$。

#prob[(2) 求满足 $bold(A P) = BB$ 的可逆矩阵 $bold(P)$。]

由 (1) 得 $AA = display(mat(1,2,2;0,1,-2;0,0,0)),sp BB=display(mat(1,2,2;0,1,1;-1,1,1))$。TBD

= P73 习题三 53
#prob[设矩阵 $AA = display(mat(0,1,0,0;0,0,1,0;0,0,0,1;0,0,0,0))$，求 $AA^3$ 的秩。]

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

所以 $r(AA^3) = 1$。

= P73 习题三 54
#prob[
  设 $AA$ 为 $m times n$ 矩阵，$BB$ 为 $n times m$ 矩阵，$bold(E)$ 为 $m$ 阶单位矩阵。若 $bold(A B)=bold(E)$，则（$quad$）。

  (A) 秩 $r(AA)=m$，秩 $r(BB)=m$。\
  (B) 秩 $r(AA)=m$，秩 $r(BB)=n$。\
  (C) 秩 $r(AA)=n$，秩 $r(BB)=m$。\
  (D) 秩 $r(AA)=n$，秩 $r(BB)=n$。
]



= P73 习题三 55
#prob[
  设 $AA,BB$ 为 $n$ 阶矩阵，则（$quad$）

  (A) $r(bold(A sp A B)) = r(AA)$\
  (B) $r(bold(A sp B A)) = r(AA)$\
  (C) $r(bold(A sp B)) = max{r(AA),r(BB)}$\
  (D) $r(bold(A sp B)) = r(AA^TT sp BB^TT)$
]

(A) 正确

(B) 正确

(C) 错误



= P73 习题三 56
#prob[(1) 设 $AA$ 是一个 $n$ 阶方阵，证明：$r(AA)=1$ 当且仅当存在非零列向量 $bold(alpha),bold(beta)$ 使得 $AA = bold(alpha beta)^TT$。]

#prob[(2) 设 $AA$ 是一个 $n$ 阶方阵且 $r(AA)=1$，证明存在常数 $k$，使得 $AA^2=k AA$ 成立。]

#prob[(3) 设 $AA$ 为一个二阶方阵，证明：如果存在正整数 $l>=2$ 使得 $AA^l = bold(O)$，那么 $AA^2 = bold(O)$。]

= P73 习题三 57
#prob[
  设 $AA$ 是一个 $s times n$ 矩阵，证明：
  
  (1) 如果 $s<=n$ 且 $r(AA) = s$（此时称矩阵 $AA$ 是行满秩的），那么必有 $n times s$ 矩阵 $BB$ 使得 $AA BB = bold(E)_s$。
]

#prob[(2) 如果 $n<=s$ 且 $r(AA)=n$（此时称矩阵 $AA$ 是列满秩的），那么必有 $n times s$ 矩阵 $bold(C)$ 使得 $bold(C A) = bold(E)_n$。]

= P74 习题三 58
#prob[设 $m times n$ 矩阵 $bold(A)$ 的秩为 $r$，证明：存在秩为 $r$ 的 $m times r$ 矩阵 $bold(B)$ 和秩为 $r$ 的 $r times n$ 矩阵 $bold(C)$，使得 $bold(A) = bold(B C)$。]

= P74 习题三 60
#prob[
  设 $AA$ 为 $n$ 阶矩阵（$n>=2$），$AA^*$ 为 $AA$ 的伴随矩阵，证明：
  $ r(AA^*) = cases(
    n\,quad& r(AA)=n,
    1\,quad& r(AA)=n-1,
    0\,quad& r(AA)<=n-2
  ) $
]



= P74 习题三 62
#prob[
  设矩阵 $AA$ 是 $n$ 阶幂等矩阵，即 $AA^2=AA$，证明：

  (1) $r(AA) + r(EE_n-AA) = n$。
]

#prob[(2) 如果 $AA$ 可逆，那么 $AA=EE_n$。]

= P74 习题三 63
#prob[设矩阵 $AA,BB,CC$ 均为 $n$ 阶方阵，证明：如果 $AA BB CC = bold(O)$，那么 $ r(AA) + r(BB) + r(CC) <= 2n $]

= P74 习题三 64
#prob[设矩阵 $AA$ 是一个 $n$ 阶方阵，证明 $r(AA^3) + r(AA) >= 2r(AA^2)$。]

= P74 补充题三 5
#prob[
  设分块矩阵 $display(mat(AA,BB;CC,bold(D)))$ 是对称矩阵，且 $bold(AA)$ 可逆，证明：存在可逆矩阵 $PP$，使得

  $ bold(P)^TT mat(AA,BB;CC,bold(D)) bold(P) = mat(AA,bold(O);bold(O),bold(D)-CC AA^(-1) BB) $
]

= P74 补充题三 6
#prob[
  设 $AA,BB$ 分别是 $n times m$ 和 $m times n$ 矩阵，证明：
  
  #set math.mat(delim: "|")
  (1) $display(mat(bold(E)_m,BB;AA,bold(E)_n)) = |bold(E)_n - AA BB| = |bold(E)_m - BB AA|$。
  #set math.mat(delim: "(")
]

#prob[(2) 当 $lambda != 0$ 时，$|lambda bold(E)_n - bold(A B)| = lambda^(n-m) |lambda bold(E)_m - bold(B A)|$。]

= P75 补充题三 8
#prob[
  设 $AA$ 是 $n$ 阶方阵，且 $r(AA) = r$，证明：

  (1) $AA$ 可表示成 $r$ 个秩为 $1$ 的方阵的和。
]

#prob[(2) 存在一个 $n$ 阶可逆方阵 $bold(P)$，使得 $bold(P A P)^(-1)$ 的后 $n-r$ 个行全为零。]

= P75 补充题三 9
#prob[试证明 $PP^(n times n)$ 中任意一个矩阵均可表示为 $PP^(n times n)$ 中的一个可逆矩阵和一个幂等矩阵的乘积。]

= P75 补充题三 11
#prob[
  设矩阵 $AA in PP^(m times n)$，$BB in times PP^(n times m)$，试证明：

  $ r(bold(E)_m - AA BB) + n = r(bold(E)_n - BB AA) + m $
]

= P75 补充题三 12
#prob[
  设 $AA$ 是一个 $n$ 阶可逆矩阵，向量 $bold(alpha),bold(beta) in PP^n$，证明：$ r(AA + bold(alpha beta)^TT) >= n-1 $
]