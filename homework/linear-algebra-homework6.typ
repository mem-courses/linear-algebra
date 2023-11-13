#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Homework #6",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "October 30, 2023",
)

= P69 习题三 29

#prob[设 $f(x) = a_m x^m + a_(m-1) x^(m-1) + dots.c + a_1 x + a_0$ 与 $AAA$ 分别为数域 $PP$ 上的一元多项式与 $n$ 阶方阵，令 $f(AAA) = a_m AAA^m + a_(m-1) AAA^(m-1) + dots.c + a_1 AAA + a_0 EEE$。通常，称之为 *矩阵 $A$ 的多项式*。若 $a_0!=0$ 且 $f(AAA) = bold(O)$，证明 $AAA$ 可逆，并求其逆。]

设 $g(x) = a_m x^(m-1) + a_(m-1) x^(m-2) + dots.c + a_2 x + a_1$，那么 $f(AAA) = g(AAA) AAA + a_0 EEE$。已知：

$
f(AAA) = OOO
=> g(AAA) AAA + a_0 EEE = OOO
=> g(AAA) AAA = (- a_0) EEE
=> (-g(AAA) / a_0) AAA = EEE
$

故 $AAA$ 可逆，且 $display(AAA^(-1) = -(a_m AAA^(m-1) + a_(m-1) AAA^(m-2) + dots.c + a_2 AAA + a_1)/a_0)$。

= P70 习题三 30

#prob[设 $bold(J_n)$ 为所有元素全为 $1$ 的 $n sp (n>1)$ 阶方阵，证明 $EEE-bold(J_n)$ 可逆，且其逆为 $EEE - display(1/(n-1))bold(J_n)$。]

已知 $bold(J_n)^2 = n bold(J_n)$。考虑
$
&(EEE - bold(J_n))(EEE - 1/(n-1) bold(J_n))
= EEE^2 - bold(J_n) EEE - 1/(n-1) EEE bold(J_n) + 1/(n-1) bold(J_n)^2\
=& EEE - (n/(n-1) - 1 - 1/(n-1))bold(J_n) = EEE
$

故 $EEE - bold(J_n)$ 可逆，且其逆为 $EEE - display(1/(n-1))bold(J_n)$。

= P70 习题三 32

#prob[
  设 $AAA$ 为 $n$ 阶非零矩阵，若 $AAA^3 = bold(O)$，则（$quad$）：

  (A) $EEE - AAA$ 不可逆，$EEE + AAA$ 不可逆\
  (B) $EEE - AAA$ 不可逆，$EEE + AAA$ 可逆\
  (C) $EEE - AAA$ 可逆，$EEE + AAA$ 可逆\
  (D) $EEE - AAA$ 可逆，$EEE + AAA$ 不可逆\
]

已知：

$
EEE = EEE^3 - AAA^3 = (EEE - AAA)(EEE^2 + EEE AAA + AAA)\
EEE = EEE^3 + AAA^3 = (EEE + AAA)(EEE^2 - EEE AAA + AAA)\
$

故 $EEE-AAA$ 和 $EEE+AAA$ 均可逆，选 (C) 项。

= P70 习题三 33

#prob[
  设 $n$ 阶方阵 $AAA$ 满足 $AAA^2 + AAA - 4 EEE = bold(O)$，证明 $AAA$ 及 $AAA - EEE$ 都是可逆矩阵，并写出 $AAA^(-1)$ 及 $(AAA - EEE)^(-1)$。
]

不妨先假设 $AAA^(-1)$ 存在，那么

$
AAA^2 + AAA - 4 EEE = bold(O)
=> AAA + EEE - 4 AAA^(-1) = bold(O)
=> AAA^(-1) = (AAA+EEE)/4
$

下面代入验证：

$
AAA ((AAA+EEE)/4) = (AAA^2 + AAA)/4 = (4 EEE)/4 = EEE
$

类似的，设 $bold(B) = AAA-EEE$，先假设 $bold(B)$ 存在，那么

$
 (bold(B) + EEE)^2 + (bold(B) + EEE) - 4 EEE = OOO
=> bold(B)^2 + 3 bold(B) - 2 EEE = OOO\
=> bold(B) + 3EEE - 2 bold(B)^(-1) = OOO
=> bold(B)^(-1) = (bold(B) + 3 EEE)/2
$

下面代入验证：

$
(AAA - EEE)((AAA + 2EEE) / 2)
= (AAA^2 + 2 AAA - AAA - 2 EEE)/2
= (4 EEE - 2 EEE) / 2
= EEE
$

故 $AAA$ 和 $AAA - EEE$ 均可逆，且 $AAA^(-1) = display((AAA+EEE)/4), sp (AAA-EEE)^(-1) = display(frac(AAA+2EEE,2))$。

= P70 习题三 34

#prob[
  设 $AAA = (a_(i j))$ 是三阶非零矩阵，$|AAA|$ 为 $AAA$ 的行列式，$A_(i j)$ 为 $a_(i j)$ 的代数余子式，若 $a_(i j) + A_(i j) = 0 sp (i,j = 1,2,3)$，计算 $|AAA|$。
]

依题意 $AAA + AAA^* = OOO => AAA^* = OOO - AAA$。所以，

$
AAA AAA^* = |AAA|^(n-1)EEE
=> AAA(OOO - AAA) = |AAA|^2 EEE
=> -AAA^2 = |AAA|^2 EEE
=> - |AAA|^2 = |AAA|^2
$

故只可能有 $|AAA|=0$。

= P70 习题三 36

#prob[
  设 $AAA$ 是一个 $n sp (n>2)$ 阶方阵，证明：$(AAA^*)^* = |AAA|^(n-2) AAA$。
]

- 当 $bold(A)$ 可逆时，$bold(A^*)$ 也可逆。故只需证：

  $
  (AAA^*)^* AAA^* = |AAA|^(n-2) AAA AAA^*
  <=> |AAA^*| EEE = |AAA|^(n-2) |AAA| EEE
  <=> |AAA^*| = |AAA|^(n-1)
  $

  显然成立。

- 当 $bold(A)$ 不可逆时，有 $|AAA|=0$，故 $"左式" = "右式" = 0$ 也成立。

综上，原命题得证。

= P70 习题三 37

#prob[
  已知三阶方阵 $AAA$ 的行列式 $|AAA| = 3$，求行列式 $|AAA^(-1)|$，$|AAA^*|$，$|-2bold(A)|$，$|(-3 AAA)^(-1)|$，$display(|1/3 AAA^* - 4 AAA^(-1)|)$ 及矩阵 $(AAA^*)^(-1)$。
]

$
|AAA^(-1)| &= |AAA AAA^(-1)| / |AAA| = 1/3\
|AAA^*| &= |AAA|^(n-1) = 3^2 = 9\
|-2 AAA| &= (-2)^n |AAA| = -24\
|(-3 AAA)^(-1)| &= | (-3)^(n-1) AAA^(-1)| =  9^n |AAA^(-1)| = 243\
|1/3 AAA^* - 4 AAA^(-1)| &= 3 - 4/3 = 8/3\
$


= P70 习题三 38

#prob[
  设 $AAA,bold(B),AAA + bold(B)$ 均为 $n$ 阶可逆矩阵，证明 $AAA^(-1) + bold(B)^(-1)$ 可逆，并求 $(AAA^(-1) + bold(B)^(-1))^(-1)$。
]

已知 TBD

故 $AAA^(-1) + bold(B)^(-1)$ 的逆存在，且 $(AAA^(-1) + bold(B)^(-1))^(-1) = (AAA + bold(B))^(-1) AAA bold(B)$。

= P71 习题三 40

#prob[
  用矩阵分块的方法计算 $bold(A B)$，其中
  $ AAA = mat(
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

$
AAA &= mat(bold(A_11), OOO; OOO, bold(A_22))
quad quad bold(B) = mat(3 EEE,bold(B_12); OOO, bold(B_22))\
bold(A B) &= mat(
  bold(A_11)(3 EEE), bold(A_11) bold(B_12);
  OOO, bold(A_22) bold(B_22)
) = mat(
  3,-6,21,30,36;
  -3,9,18,38,46;
  -9,6,-15,-22,-28;
  0,0,0,13,6;
  0,0,0,25,5;
)
$

= P71 习题三 43

#prob[
  设 $AAA,bold(B)$ 均为二阶方阵，若 $|AAA| = 2, |bold(B)| = 3$，则分块矩阵 $display(mat(bold(O),AAA;bold(B),bold(O)))$ 的伴随矩阵为（$quad$）。

  $
  "(A)" display(mat(bold(O),3 bold(B)^*;2 AAA^*,bold(O))) quad quad
  "(B)" display(mat(bold(O),2 bold(B)^*;3 AAA^*,bold(O))) quad quad
  "(C)" display(mat(bold(O),3 AAA^*;2 bold(B)^*,bold(O))) quad quad
  "(D)" display(mat(bold(O),2 AAA^*;3 bold(B)^*,bold(O)))
  $
]

= P71 习题三 44

#prob[
  判断下列命题是否成立：

  (1) 若矩阵 $AAA,bold(B)$ 均为二阶矩阵，设他们的列分块矩阵分别为 $AAA = display(mat(bold(alpha_1),bold(alpha_2)))$，$bold(B) = display(mat(bold(beta_1),bold(beta_2)))$，则 $bold(A B) = display(mat(bold(alpha_1 beta_1), bold(alpha_2 beta_2)))$。
]

不成立。$bold(alpha_1),bold(alpha_2),bold(beta_1),bold(beta_2) in PP^(2 times 1)$，故 $bold(alpha_1) bold(beta_1)$ 不合法。

#prob[
  (2) 设矩阵 $AAA$ 的列分块矩阵为 $AAA = display(mat(bold(alpha_1), bold(alpha_2), bold(alpha_3)))$，列矩阵 $bold(X) = display(mat(x_1; x_2;  x_3))$，则 $bold(A X) = x_1 bold(alpha_1) + x_2 bold(alpha_2) + x_3 bold(alpha_3)$。
]

成立。满足 $bold(A)$ 上列的分块方法与 $bold(X)$ 上行的分块方法相同，且数乘满足交换律。

#prob[
  (3) 设 $AAA$ 是可逆矩阵，则分块矩阵 $display(mat(bold(O), 2; AAA, bold(O)))$ 也可逆，且
  $ mat(bold(O),2;AAA,bold(O))^(-1) = mat(bold(O), 2; AAA^(-1), bold(O)) $
]

#prob[
  (4) 分块矩阵 $display(mat(AAA,bold(O);bold(O),bold(B)))$ 是一个准（分块）对角矩阵。
]

不成立。不能保证 $bold(A)$ 和 $bold(B)$ 为方阵。

#prob[
  (5) 若矩阵 $AAA,bold(B)$ 均为方阵，则分块矩阵 $display(mat(bold(O),AAA; bold(B),bold(O)))$ 是一个准对角矩阵。
]

不成立。非零矩阵 $bold(A),bold(B)$ 不在主对角线上。

= P74 补充题三 3

#prob[
  设 $n$ 阶方阵 $AAA = (a_(i j))$ 且对于任意的 $1<=i<=n$，满足 $2 |a_(i i)| = display(sum_(j=1)^n |a_(i j)|)$，证明：$AAA$ 可逆。
]