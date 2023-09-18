#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
  title: "线性代数 Note #1",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "September 18, 2023",
)

#let def(x) = { math.bold(x) }
#let tmp(x) = { math.bold(x) }
#let quote = prob

= 学习方法指导

- 重视归纳总结

= 预备知识

== 数域

#tmp[定义] 设 $PP$ 是一个非空的集合，如果 $PP$ 满足两个条件：

1. $PP$ 中至少还有两个不同的复数
2. $PP$ 中的数对四则运算是封闭的

则称 $PP$ 是一个数域。

#prob[
	#tmp[例] $QQ(sqrt(2))$
]


#tmp[定理] 设 $PP$ 是一个数域，则 $QQ in PP$。（有理数域是最小的数域）

= 线性方程组

- 当一个线性方程组可解时，则称他是#def[相容的]，否则则称他是#def[不相容的]。