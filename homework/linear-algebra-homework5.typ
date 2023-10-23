#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Homework #5",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "October 23, 2023",
)

= P66 习题三 3

#prob[
  设矩阵 $display(bold(A) = mat(lambda,1,1;0,lambda-1,0;1,1,lambda)\,sp bold(b) = mat(a;1;1))$。已知线性方程组 $bold(A X) = bold(B)$ 存在两个不同的解。

  (1) 求 $lambda$、$a$。\
  (2) 求线性方程组 $bold(A X) = bold(B)$ 的通解。
]

= P67 习题三 6

#prob[
  设矩阵 $ bold(A) = mat(1,-1,-1;2,a,1;-1,-1,a),quad bold(B) = mat(2,2;1,a;-a-1,-2) $ 问当 $a$ 为何值时，方程 $bold(A X) = bold(B)$ 无解，有唯一解，有无穷多个解？在有解时，求解此方程。
]

= P67 习题三 7

#prob[
  设 $n$ 元线性方程组 $bold(A X) = bold(b)$，其中 $ bold(A) = mat(2a,1;a^2,2a,1;,a^2,2a,1;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a),quad bold(X) = mat(x_1;x_2;dots.v;x_n),quad bold(b) = mat(1;0;dots.v;0) $

  (1) 证明行列式 $|bold(A)| = (n+1)a^n$；\
  (2) 问当 $a$ 为何值时，该方程组有唯一解，并求 $x_1$；\
  (3) 问当 $a$ 为何值时，该方程组有无穷多个解，并求通解。
]

= P67 习题三 9

#prob[设 $bold(A) in PP^(n times n)$，证明：如果对 $PP^(n times 1)$ 中的所有矩阵 $bold(A)$ 都有 $bold(A X) = bold(O)$，那么 $bold(A) = bold(O)$。]

= P67 习题三 10

#prob[设 $bold(e)_(i j) in PP^(m times n)$ 表示第 $i$ 行和第 $j$ 列交叉位置元素为 $1$，其余元素均为零的矩阵。若 $bold(A) in PP^(n times m),sp bold(B) in PP^(m times n)$，请计算 $bold(A e)_(i j)$ 以及 $bold(e)_(i j)bold(B)$]。

= P67 习题三 12(1)

#prob[求所有与矩阵 $bold(A) = display(mat(0,1,0,dots.c,0,0;0,0,1,dots.c,0,0;0,0,0,dots.c,0,0;dots.v,dots.v,dots.v,,dots.v,dots.v;0,0,0,dots.c,0,1;0,0,0,dots.c,0,0))_(n times n)$ 可交换的矩阵。]

= P67 习题三 12(2)

#prob[设 $bold(B)$ 是一个对角线上元素互不相同的对角矩阵，求所有与矩阵 $bold(B)$ 可交换的矩阵。]

= P68 习题三 14(4)

#prob[计算矩阵的幂：$ mat(1,-1,-1,-1;-1,1,-1,-1;-1,-1,1,-1;-1,-1,-1,1) $]

= P68 习题三 17

#prob[
  称 $n$ 阶矩阵 $bold(A)$ 的主对角线上所有元素之和为该矩阵的 *迹*，记为 $tr(bold(A))$。证明：

  (1) $forall bold(A) in PP^(m times n),sp forall bold(B) in PP^(n times m)$，均有 $tr(bold(A B)) = tr(bold(B A))$。\
  (2) 不存在 $n$ 阶矩阵 $bold(A),sp bold(B)$ 使得 $bold(A B) - bold(B A) = bold(E)$ 成立。
]

= P68 习题三 20

#prob[设线性方程组 $bold(A X) = bold(b)$ 的系数矩阵 $bold(A)$ 的秩等于矩阵 $bold(B) = display(mat(bold(A),bold(b);bold(b)^T,0))$ 的秩，证明该线性方程组有解。]

= P68 习题三 21

#prob[如果 $bold(A)^T = bold(A)$，那么称 $bold(A)$ 为 *对称矩阵*。证明：若 $bold(A)$ 实对称且 $bold(A)^2 = bold(O)$，则 $bold(A) = bold(O)$。]

= P69 习题三 24

#prob[
  如果 $bold(A)^T = -bold(A)$，那么称 $bold(A)$ 为 *反对称矩阵*。证明：

  (1) 如果 $bold(A) = (a_(i j))_(n times n)$，那么 $forall 1<=i,j<=n$，均有 $a_(i j) = - a_(j i)$ 成立；\
  (2) 如果 $bold(A) = (a_(i j))_(n times n)$，那么 $forall 1<=i<=n$，均有 $a_(i i) = 0$ 成立；\
  (3)  
]

= P69 习题三 25
= P69 习题三 26