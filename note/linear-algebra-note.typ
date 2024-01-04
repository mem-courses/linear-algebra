#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
  title: "线性代数 复习笔记",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "September 19, 2023",
)

#let def(x) = { strong(x) }
#let kw(x) = { strong(x) }

= 线性方程组

== 数域

#def[定义] 设 $PP$ 是一个非空的集合，如果 $PP$ 满足两个条件：

1. $PP$ 中至少还有两个不同的复数
2. $PP$ 中的数对四则运算是#kw[封闭]的

则称 $PP$ 是一个数域．

#def[定理] 设 $PP$ 是一个数域，则 $QQ subset.eq PP$．（$QQ$ 是最小的数域）

#note[
  #kw[【封闭】]以加法为例，
  - 如果 $forall a, b in PP$，必有 $a+b in PP$，则称 $PP$ 对加法封闭；
  - 反之，如果 $exists a_0, b_0 in PP$，使得 $a_0 + b_0 in.not PP$，则称 $PP$ 对加法不封闭．
]

== 线性方程组的解集

当一个线性方程组可解时，则称他是#kw[相容]的，否则称他是#kw[不相容]的．

线性方程组的解集只有三种情况：无解，有唯一解，有无穷多解．

== 线性方程组的初等变换

+ $xarrow(R_(i j))$ 交换第 $i$ 和第 $j$ 个方程．
+ $xarrow(c R_i)$ 用一个不等于 $0$ 的数乘以某个方程．
+ $xarrow(R_i + c R_j)$ 把第 $j$ 个方程的 $c$ 倍加到第 $i$ 个方程上．

#def[引理] 线性方程组的初等变换不改变线性方程组的解集．

== Gauss 消元法

=== 用 Gauss 消元法解线性方程组的过程

=== 对解的情况的判定

+ 当线性方程组有解时（即 $c_(r+1) = 0$ 时）

  $display(cases(
    r=n quad arrow.r.double quad "线性方程组有唯一解",
    r<n quad arrow.r.double quad "线性方程组有无穷多解"
  ))$

+ $r=m$ 时，线性方程组一定有解．