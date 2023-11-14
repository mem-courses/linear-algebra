#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Homework #6",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "October 30, 2023",
)

#let AA = math.bold("A")
#let BB = math.bold("B")
#let CC = math.bold("C")
#let EE = math.bold("E")
#let OO = math.bold("O")
#let II = math.bold("I")

= P69 习题三 29

#prob[设 $f(x) = a_m x^m + a_(m-1) x^(m-1) + dots.c + a_1 x + a_0$ 与 $AA$ 分别为数域 $PP$ 上的一元多项式与 $n$ 阶方阵，令 $f(AA) = a_m AA^m + a_(m-1) AA^(m-1) + dots.c + a_1 AA + a_0 EE$。通常，称之为 *矩阵 $A$ 的多项式*。若 $a_0!=0$ 且 $f(AA) = OO$，证明 $AA$ 可逆，并求其逆。]

设 $g(x) = a_m x^(m-1) + a_(m-1) x^(m-2) + dots.c + a_2 x + a_1$，那么 $f(AA) = g(AA) AA + a_0 EE$。已知：

$
f(AA) = OO
=> g(AA) AA + a_0 EE = OO
=> g(AA) AA = (- a_0) EE
=> (-g(AA) / a_0) AA = EE
$

故 $AA$ 可逆，且 $display(AA^(-1) = -(a_m AA^(m-1) + a_(m-1) AA^(m-2) + dots.c + a_2 AA + a_1)/a_0)$。

= P70 习题三 30

#prob[设 $bold(J_n)$ 为所有元素全为 $1$ 的 $n sp (n>1)$ 阶方阵，证明 $EE-bold(J_n)$ 可逆，且其逆为 $EE - display(1/(n-1))bold(J_n)$。]

已知 $bold(J_n)^2 = n bold(J_n)$。考虑
$
&(EE - bold(J_n))(EE - 1/(n-1) bold(J_n))
= EE^2 - bold(J_n) EE - 1/(n-1) EE bold(J_n) + 1/(n-1) bold(J_n)^2\
=& EE - (n/(n-1) - 1 - 1/(n-1))bold(J_n) = EE
$

故 $EE - bold(J_n)$ 可逆，且其逆为 $EE - display(1/(n-1))bold(J_n)$。

= P70 习题三 32

#prob[
  设 $AA$ 为 $n$ 阶非零矩阵，若 $AA^3 = OO$，则（$quad$）：

  (A) $EE - AA$ 不可逆，$EE + AA$ 不可逆\
  (B) $EE - AA$ 不可逆，$EE + AA$ 可逆\
  (C) $EE - AA$ 可逆，$EE + AA$ 可逆\
  (D) $EE - AA$ 可逆，$EE + AA$ 不可逆\
]

已知：

$
EE = EE^3 - AA^3 = (EE - AA)(EE^2 + EE AA + AA)\
EE = EE^3 + AA^3 = (EE + AA)(EE^2 - EE AA + AA)\
$

故 $EE-AA$ 和 $EE+AA$ 均可逆，选 (C) 项。

= P70 习题三 33

#prob[
  设 $n$ 阶方阵 $AA$ 满足 $AA^2 + AA - 4 EE = OO$，证明 $AA$ 及 $AA - EE$ 都是可逆矩阵，并写出 $AA^(-1)$ 及 $(AA - EE)^(-1)$。
]

不妨先假设 $AA^(-1)$ 存在，那么

$
AA^2 + AA - 4 EE = OO
=> AA + EE - 4 AA^(-1) = OO
=> AA^(-1) = (AA+EE)/4
$

下面代入验证：

$
AA ((AA+EE)/4) = (AA^2 + AA)/4 = (4 EE)/4 = EE
$

类似的，设 $BB = AA-EE$，先假设 $BB$ 存在，那么

$
 (BB + EE)^2 + (BB + EE) - 4 EE = OO
=> BB^2 + 3 BB - 2 EE = OO\
=> BB + 3 EE - 2 BB^(-1) = OO
=> BB^(-1) = (BB + 3 EE)/2
$

下面代入验证：

$
(AA - EE)((AA + 2EE) / 2)
= (AA^2 + 2 AA - AA - 2 EE)/2
= (4 EE - 2 EE) / 2
= EE
$

故 $AA$ 和 $AA - EE$ 均可逆，且 $AA^(-1) = display((AA+EE)/4), sp (AA-EE)^(-1) = display(frac(AA+2EE,2))$。

= P70 习题三 34

#prob[
  设 $AA = (a_(i j))$ 是三阶非零矩阵，$|AA|$ 为 $AA$ 的行列式，$A_(i j)$ 为 $a_(i j)$ 的代数余子式，若 $a_(i j) + A_(i j) = 0 sp (i,j = 1,2,3)$，计算 $|AA|$。
]

依题意 $AA + AA^* = OO => AA^* = OO - AA$。所以，

$
AA AA^* = |AA|^(n-1)EE
=> AA(OO - AA) = |AA|^2 EE
=> -AA^2 = |AA|^2 EE
=> - |AA|^2 = |AA|^2
$

故只可能有 $|AA|=0$。

= P70 习题三 36

#prob[
  设 $AA$ 是一个 $n sp (n>2)$ 阶方阵，证明：$(AA^*)^* = |AA|^(n-2) AA$。
]

- 当 $bold(A)$ 可逆时，$bold(A^*)$ 也可逆。故只需证：

  $
  (AA^*)^* AA^* = |AA|^(n-2) AA AA^*
  <=> |AA^*| EE = |AA|^(n-2) |AA| EE
  <=> |AA^*| = |AA|^(n-1)
  $

  显然成立。

- 当 $bold(A)$ 不可逆时，有 $|AA|=0$，故 $"左式" = "右式" = 0$ 也成立。

综上，原命题得证。

= P70 习题三 37

#prob[
  已知三阶方阵 $AA$ 的行列式 $|AA| = 3$，求行列式 $|AA^(-1)|$，$|AA^*|$，$|-2bold(A)|$，$|(-3 AA)^(-1)|$，$display(|1/3 AA^* - 4 AA^(-1)|)$ 及矩阵 $(AA^*)^(-1)$。
]

$
|AA^(-1)| &= |AA AA^(-1)| / |AA| = 1/3\
|AA^*| &= |AA|^(n-1) = 3^2 = 9\
|-2 AA| &= (-2)^n |AA| = -24\
|(-3 AA)^(-1)| &= | (-3)^(n-1) AA^(-1)| =  9^n |AA^(-1)| = 243\
|1/3 AA^* - 4 AA^(-1)| &= 3 - 4/3 = 8/3\
$


= P70 习题三 38

#prob[
  设 $AA,BB,AA + BB$ 均为 $n$ 阶可逆矩阵，证明 $AA^(-1) + BB^(-1)$ 可逆，并求 $(AA^(-1) + BB^(-1))^(-1)$。
]

已知 TBD

故 $AA^(-1) + BB^(-1)$ 的逆存在，且 $(AA^(-1) + BB^(-1))^(-1) = (AA + BB)^(-1) AA BB$。

= P71 习题三 40

#prob[
  用矩阵分块的方法计算 $bold(A B)$，其中
  $ AA = mat(
    1,-2,7,0,0;
    -1,3,6,0,0;
    -3,2,-5,0,0;
    0,0,0,1,2;
    0,0,0,0,5;
  ) , quad BB = mat(
    3,0,0,1,2;
    0,3,0,3,4;
    0,0,3,5,6;
    0,0,0,3,4;
    0,0,0,5,1;
  ) $
]

$
AA &= mat(bold(A_11), OO; OO, bold(A_22))
quad quad BB = mat(3 EE,bold(B_12); OO, bold(B_22))\
bold(A B) &= mat(
  bold(A_11)(3 EE), bold(A_11) bold(B_12);
  OO, bold(A_22) bold(B_22)
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
  设 $AA,BB$ 均为二阶方阵，若 $|AA| = 2, |BB| = 3$，则分块矩阵 $display(mat(OO,AA;BB,OO))$ 的伴随矩阵为（$quad$）。

  $
  "(A)" display(mat(OO,3 BB^*;2 AA^*,OO)) quad quad
  "(B)" display(mat(OO,2 BB^*;3 AA^*,OO)) quad quad
  "(C)" display(mat(OO,3 AA^*;2 BB^*,OO)) quad quad
  "(D)" display(mat(OO,2 AA^*;3 BB^*,OO))
  $
]

设 $bold(P) = display(mat(OO,AA;BB,OO))$，那么 $|bold(P)| = (-1)^(2 times 2) |AA| |BB| = 6$。可验证 (B) 项合法：

$
mat(OO,AA;BB,OO) mat(OO,2 BB^*;3 AA^*,OO) = mat(6 EE_2, OO; OO, 6 EE_2) = |bold(P)| EE
$

故选 (B)。

= P71 习题三 44

#prob[
  判断下列命题是否成立：

  (1) 若矩阵 $AA,BB$ 均为二阶矩阵，设他们的列分块矩阵分别为 $AA = display(mat(bold(alpha_1),bold(alpha_2)))$，$BB = display(mat(bold(beta_1),bold(beta_2)))$，则 $bold(A B) = display(mat(bold(alpha_1 beta_1), bold(alpha_2 beta_2)))$。
]

不成立。$bold(alpha_1),bold(alpha_2),bold(beta_1),bold(beta_2) in PP^(2 times 1)$，故 $bold(alpha_1) bold(beta_1)$ 不合法。

#prob[
  (2) 设矩阵 $AA$ 的列分块矩阵为 $AA = display(mat(bold(alpha_1), bold(alpha_2), bold(alpha_3)))$，列矩阵 $bold(X) = display(mat(x_1; x_2;  x_3))$，则 $bold(A X) = x_1 bold(alpha_1) + x_2 bold(alpha_2) + x_3 bold(alpha_3)$。
]

成立。满足 $bold(A)$ 上列的分块方法与 $bold(X)$ 上行的分块方法相同，且数乘满足交换律。

#prob[
  (3) 设 $AA$ 是可逆矩阵，则分块矩阵 $display(mat(OO, 2; AA, OO))$ 也可逆，且
  $ mat(OO,2;AA,OO)^(-1) = mat(OO, 2; AA^(-1), OO) $
]

#prob[
  (4) 分块矩阵 $display(mat(AA,OO;OO,BB))$ 是一个准（分块）对角矩阵。
]

不成立。不能保证 $bold(A)$ 和 $BB$ 为方阵。

#prob[
  (5) 若矩阵 $AA,BB$ 均为方阵，则分块矩阵 $display(mat(OO,AA; BB,OO))$ 是一个准对角矩阵。
]

不成立。非零矩阵 $bold(A),BB$ 不在主对角线上。

= P74 补充题三 3

#prob[
  设 $n$ 阶方阵 $AA = (a_(i j))_(n times n)$ 且对于任意的 $1<=i<=n$，满足 $2 |a_(i i)| = display(sum_(j=1)^n |a_(i j)|)$，证明：$AA$ 可逆。
]