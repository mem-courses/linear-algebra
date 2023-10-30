#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Homework #6",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "October 30, 2023",
)

= P69 习题三 29

#prob[设 $f(x) = a_m x^m + a_(m-1) x^(m-1) + dots.c + a_1 x + a_0$ 与 $bold(A)$ 分别为数域 $PP$ 上的一元多项式与 $n$ 阶方阵，令 $f(A) = a_m bold(A)^m + a_(m-1) bold(A)^(m-1) + dots.c + a_1 bold(A) + a_0 bold(E)$。通常，称之为 *矩阵 $A$ 的多项式*。若 $a_0!=0$ 且 $f(bold(A)) = bold(O)$，证明 $bold(A)$ 可逆，并求其逆。]

= P70 习题三 30

#prob[设 $bold(J_n)$ 为所有元素全为 $1$ 的 $n sp (n>1)$ 阶方阵，证明 $bold(E)-bold(J_n)$ 可逆，且其逆为 $bold(E) - display(1/(n-1))bold(J_n)$。]

已知 $bold(J_n)^2 = n bold(J_n)$。考虑
$
&(bold(E) - bold(J_n))(bold(E) - 1/(n-1) bold(J_n))
= bold(E)^2 - bold(J_n) bold(E) - 1/(n-1) bold(E) bold(J_n) + 1/(n-1) bold(J_n)^2\
=& bold(E) - (n/(n-1) - 1 - 1/(n-1))bold(J_n) = bold(E)
$

故 $bold(E) - bold(J_n)$ 可逆，且其逆为 $bold(E) - display(1/(n-1))bold(J_n)$。

= P70 习题三 32

#prob[
  设 $bold(A)$ 为 $n$ 阶非零矩阵，若 $bold(A)^3 = bold(O)$，则（$quad$）：

  (A) $bold(E) - bold(A)$ 不可逆，$bold(E) + bold(A)$ 不可逆\
  (B) $bold(E) - bold(A)$ 不可逆，$bold(E) + bold(A)$ 可逆\
  (C) $bold(E) - bold(A)$ 可逆，$bold(E) + bold(A)$ 可逆\
  (D) $bold(E) - bold(A)$ 可逆，$bold(E) + bold(A)$ 不可逆\
]

= P70 习题三 33

#prob[
  设 $n$ 阶方阵 $bold(A)$ 满足 $bold(A)^2 + bold(A) - 4 bold(E) = bold(O)$，证明 $bold(A)$ 及 $bold(A) - bold(E)$ 都是可逆矩阵，并写出 $bold(A)^(-1)$ 及 $(bold(A) - bold(E))^(-1)$。
]

= P70 习题三 34

#prob[
  设 $bold(A) = (a_(i j))$ 是三阶非零矩阵，$|bold(A)|$ 为 $bold(A)$ 的行列式，$A_(i j)$ 为 $a_(i j)$ 的代数余子式，若 $a_(i j) + A_(i j) = 0 sp (i,j = 1,2,3)$，计算 $|bold(A)|$。
]

= P70 习题三 36

#prob[
  设 $bold(A)$ 是一个 $n sp (n>2)$ 阶方阵，证明：$(bold(A)^*)^* = |bold(A)|^(n-2) bold(A)$。
]

= P70 习题三 37

#prob[
  已知三阶方阵 $bold(A)$ 的行列式 $|bold(A)| = 3$，求行列式 $|bold(A)^(-1)|$，$|bold(A)^*|$，$|-2bold(A)|$，$|(-3 bold(A))^(-1)|$，$display(|1/3 bold(A)^* - 4 bold(A)^(-1)|)$ 及矩阵 $(bold(A)^*)^(-1)$。
]

= P70 习题三 38

#prob[
  设 $bold(A),bold(B),bold(A) + bold(B)$ 均为 $n$ 阶可逆矩阵，证明 $bold(A)^(-1) + bold(B)^(-1)$ 可逆，并求 $(bold(A)^(-1) + bold(B)^(-1))^(-1)$。
]

= P71 习题三 40

#prob[
  用矩阵分块的方法计算 $bold(A B)$，其中
  $ bold(A) = mat(
    1,-2,7,0,0;
    -1,3,6,0,0;
    -3,2,-5,0,0;
    0,0,0,1,2;
    0,0,0,0,5;
  ) , quad bold(B) = mat(
    3,0,0,1,2;
    0,3,0,3,4;
    0,0,3,5,6;
    0,0,0,3,4;
    0,0,0,5,1;
  ) $
]

= P71 习题三 43

#prob[
  设 $bold(A),bold(B)$ 均为二阶方阵，若 $|bold(A)| = 2, |bold(B)| = 3$，则分块矩阵 $display(mat(bold(O),bold(A);bold(B),bold(O)))$ 的伴随矩阵为（$quad$）。

  $
  "(A)" display(mat(bold(O),3 bold(B)^*;2 bold(A)^*,bold(O))) quad quad
  "(B)" display(mat(bold(O),2 bold(B)^*;3 bold(A)^*,bold(O))) quad quad
  "(C)" display(mat(bold(O),3 bold(A)^*;2 bold(B)^*,bold(O))) quad quad
  "(D)" display(mat(bold(O),2 bold(A)^*;3 bold(B)^*,bold(O)))
  $
]

= P71 习题三 44

#prob[
  判断下列命题是否成立：

  (1) 若矩阵 $bold(A),bold(B)$ 均为二阶矩阵，设他们的列分块矩阵分别为 $bold(A) = display(mat(bold(alpha_1),bold(alpha_2)))$，$bold(B) = display(mat(bold(beta_1),bold(beta_2)))$，则 $bold(A B) = display(mat(bold(alpha_1 beta_1), bold(alpha_2 beta_2)))$。
]

#prob[
  (2) 设矩阵 $bold(A)$ 的列分块矩阵为 $bold(A) = display(mat(bold(alpha_1), bold(alpha_2), bold(alpha_3)))$，列矩阵 $bold(X) = display(mat(x_1; x_2;  x_3))$，则 $bold(A X) = x_1 bold(alpha_1) + x_2 bold(alpha_2) + x_3 bold(alpha_3)$。
]

#prob[
  (3) 设 $bold(A)$ 是可逆矩阵，则分块矩阵 $display(mat(bold(O), 2; bold(A), bold(O)))$ 也可逆，且
  $ mat(bold(O),2;bold(A),bold(O))^(-1) = mat(bold(O), 2; bold(A)^(-1), bold(O)) $
]

#prob[
  (4) 分块矩阵 $display(mat(bold(A),bold(O);bold(O),bold(B)))$ 是一个准（分块）对角矩阵。
]

#prob[
  (5) 若矩阵 $bold(A),bold(B)$ 均为方阵，则分块矩阵 $display(mat(bold(O),bold(A); bold(B),bold(O)))$ 是一个准对角矩阵。
]

= P74 补充题三 3

#prob[
  设 $n$ 阶方阵 $bold(A) = (a_(i j))$ 且对于任意的 $1<=i<=n$，满足 $2 |a_(i i)| = display(sum_(j=1)^n |a_(i j)|)$，证明：$bold(A)$ 可逆。
]