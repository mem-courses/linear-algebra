#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra #1",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "October 28, 2023",
)

#let def(x) = { text("【" + x + "】", weight: "bold") }
#let deft(x) = { text("【" + x + "】", weight: "bold", fill: rgb("#FFFFFF")) }
#let bb(x) = { text(x, weight: "bold") }

= 预备知识

== 数域

设 $PP$ 是一个非空的集合，如果 $PP$ 满足两个条件：

1. $PP$ 中至少含有两个不同的复数
2. $PP$ 中的数对四则运算是封闭的

则称 $PP$ 是一个数域．

#note[设 $PP$ 是一个数域，则 $QQ in PP$．（有理数域是最小的数域）]

== 排列

对于 $1,2,dots,n$ 共 $n$（$n>1$）个数码组成的一个有序数组 $i_1 i_2 dots.c i_n$ 称为一个 #bb[$bold(n)$ 阶排列]．

用 $tau(i_1 i_2 dots.c i_n) = display(sum_(1<=k<j<=n) [i_k>i_j])$ 表示排列的#bb[逆序对数]．

#def[性质1]排列中的一对数交换位置称为#bb[对换]，对换改变排列的奇偶性．

#def[性质2]$n!$ 个 $n$ 阶排列中，奇排列和偶排列各占一半．

#prof[
  证明：设奇排列和偶排列分别有 $n!$ 种，有 $p+q=n!$．不妨设 $p$ 个奇排列为：
  $ cases(
    a_1 a_2 a_3 dots.c a_n,
    b_1 b_2 b_3 dots.c b_n,
    c_1 c_2 c_3 dots.c c_n,
    dots.c,
  ) xarrow("选 1,3 位置对换") cases(
    a_3 a_2 a_1 dots.c a_n,
    b_3 b_2 b_1 dots.c b_n,
    c_3 c_2 c_1 dots.c c_n,
    dots.c,
  ) $
  可以得到 $p$ 个不同的偶排列，故 $q>=p$．同理可得 $p>=q$．故有 $p=q$．
]

= 线性方程组

#def[性质]线性方程组要么无解，要么有唯一解，要么有无穷多解．

== 阶梯型线性方程组

$ cases(
  b_(1 j_1) x_(j_1) + dots.c +& b_(1 j_2) x_(j_2) + &dots.c + &b_(1 j_r) x_(j_r) + dots.c + &b_(1 n) x_(n) &= c_1,
  & b_(2 j_2) x_(j_2) + &dots.c + &b_(2 j_r) x_(j_r) + dots.c + &b_(2 n) x_(n) &= c_2,
  &&dots.down &&&dots.c,
  &&& b_(r j_r) x_(j_r) + dots.c + &b_(r n) x_(n) &= c_r,
  &&&& 0 &= c_(r+1),
) $

“$0 = c_(r+1)$” 下留空部分表示还有 $m-(r+1)$ 个 $0=0$ 的方程．称阶梯处转弯的项 $b_(i j_i) x_(j_i)$ 为#bb[阶梯头]．

关于约化阶梯型线性方程组的定义、线性方程组的初等变换可参考矩阵部分．

== 线性方程组解的判定

先化为阶梯型线性方程组再进行判定．当线性方程组有解时（即 $c_(r+1)=0$ 时）：

- 若 $r=n$，则线性方程组有唯一解．
- 若 $r<n$，则线性方程组有无穷多（组）解，且有 $n-r$ 个#bb[自由变量（自由未知量）]．

#note[记线性方程组的系数矩阵为 $bold(A)$，系数矩阵的增广矩阵为 $overline(bold(A))$．实际上吗，我们有 $r=r(bold(A))=r(overline(bold(A)))$．]

== 齐次线性方程组

对于所有常数项全部为 $0$（即 $forall 1<=i<=m,sp c_i=0$）的线性方程组，称为齐次线性方程组．

#def[性质1]齐次线性方程组一定有解．

#def[性质2]如果齐次线性方程组存在一组非零解，那么该齐次线性方程组有无穷多解．

= 矩阵

== 矩阵的初等变换

分为初等行变换和初等列变换．

1. #bb[互换]：交换矩阵的两行（列）；$xarrow(R_(i j))$（$xarrow(C_(i j))$）
2. #bb[倍乘]：把某行（列）乘以非零的 $c$ 倍；$xarrow(c R_(i))$（$xarrow(c C_(i))$）
3. #bb[倍加]：把某行（列）的 $c$ 倍加到另一行（列）上．$xarrow(R_i + c R_j)$（$xarrow(C_i + c C_j)$）

#note[对线性方程组做初等变换等价与对其系数矩阵（的增广矩阵）做初等#bb[行]变换．]

== 阶梯型矩阵

$ overline(bold(A)) xarrow("初等行变换") mat(
  b_(1 j_1),dots.c,b_(1 j_2),dots.c,b_(1 j_3),dots.c,b_(1 j_r),dots.c,b_(1 n),c_1;
  " ",,b_(2 j_2),dots.c,b_(2 j_3),dots.c,b_(2 j_r),dots.c,b_(2 n),c_2;
  " ",,,,b_(3 j_3),dots.c,b_(3 j_r),dots.c,b_(3 n),c_3;
  " ",,,,,dots.down,dots.v,,dots.v,dots.v;
  " ",,,,,,b_(r j_r),dots.c,b_(r n),c_r;
  " ",,,,,,,,,c_(r+1);
) $

#note[阶梯型矩阵的每个阶梯头的左下方都是 $0$．]

== 约化阶梯型矩阵

在阶梯型矩阵的基础上，要求：

1. 阶梯头元素为 $1$；
2. 阶梯头所在列其余元素为 $0$．

#warn[
  注意到根据定义，$display(mat(
    1,bold(2),0,0;
    0,bold(0),1,0;
    0,bold(0),0,1;
  ))$ 也是约化阶梯型矩阵．
]

