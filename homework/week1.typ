#import "template.typ": *
#import "functions.typ": *

#show: project.with(
  title: "线性代数 Homework Week1",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "September 12, 2023",
)


= P13 习题一 1(3)
#prob[
  解线性方程组
  $
  &cases(
    5&x_1 -  &x_2 +  &x_3 - 2&x_4 &= 3,
    8&x_1 -  &x_2 +  &x_3 -  &x_4 &= 1,
    7&x_1 + 2&x_2 - 2&x_3 + 3&x_4 &= 0,
    5&x_1 - 3&x_2 + 3&x_3 - 6&x_4 &= 6,
  )
  $
]


= P14 习题一 2
#prob[
  证明：任意一个形如
  $
  cases(
    a_11 x_1 + a_12 x_2 + &dots.c + a_1n x_n &= 0,
    a_21 x_1 + a_22 x_2 + &dots.c + a_2n x_n &= 0,
    &dots.c,
    a_(m 1) x_1 + a_(m 2) x_2 + &dots.c + a_(m n) x_n &= 0,
  )
  $
  的齐次线性方程组一定有解：它或有唯一解 $x_1 = 0, x_2 = 0, dots, x_n = 0$，或有无穷多解。
]

代入可知全为 0 一定是合法解，现只需证：如果存在一组非平凡解，则一定存在无穷多解。

若存在一组非平凡解 $x_1, x_2, dots, x_n$，则 $forall c in RR$，一定存在 ${x'_i = x_i dot c}_(i=1)^n$ 也是合法解。因为实数有无穷多个，所以此时有无穷多解。


= P14 习题一 3(1)


= P14 习题一 6
#prob[
  设矩阵 $bold(A)$ 通过初等变换 $R_12$ 换成矩阵 $bold(B)$，请写出仅用行的倍加和倍乘变换将 $bold(A)$ 换成 $bold(B)$ 的过程。
] 

设 $bold(A) = mat(bold(R_1); bold(R_2); bold(C))$，则有 $bold(B) = mat(bold(R_2); bold(R_1); bold(C))$。

对 $bold(A)$ 应用初等变换得
$
bold(A)
xarrow(R_2+R_1) mat(bold(R_1); bold(R_1) + bold(R_2); bold(C))
xarrow(-1 times R_1) mat(-bold(R_1); bold(R_1) + bold(R_2); bold(C))
xarrow(R_1 + R_2) mat(bold(R_2); bold(R_1) + bold(R_2); bold(C))
xarrow(R_2 - R_1) mat(bold(R_2); bold(R_1); bold(C))
= bold(B)
$


= P15 习题一 9 (1-3)
= P15 习题一 9 (3-1)
= P15 习题一 10(2)
#prob[
  问线性方程组中的参数取何值时，线性方程组无解，有唯一解，有无穷多个解？当线性方程组有解时，求其（通）解：
  $
  cases(
    lambda x_1 &+ x_2 &+ x_3 &+ x_4 &= 1,
    x_1 &+ lambda x_2 &+ x_3 &+ x_4 &= lambda,
    x_1 &+ x_2 &+ lambda x_3 &+ lambda x_4 &= lambda^2,
  )
  $
]

= P15 习题一 10(4)
= P15 习题一 11
#prob[
  设线性方程组
  $
  cases(
    x_1 &+  x_2 &+     x_3 &= 0,
    x_1 &+ 2x_2 &+   a x_3 &= 0,
    x_1 &+ 4x_2 &+ a^2 x_3 &= 0,
  )
  $
  与方程
  $
  x_1 + 2x_2 + x_3 = a - 1
  $
  有公共解，求 $a$ 的值和所有公共解。
]


= P15 习题一 12
#prob[
  证明线性方程组
  $
  cases(
    x_1 &- x_2 &= a_1,
    x_2 &- x_3 &= a_2,
    x_3 &- x_4 &= a_3,
    x_4 &- x_5 &= a_4,
    x_5 &- x_1 &= a_5,
  )
  $
  有解的充分必要条件是 $a_1+a_2+a_3+a_4+a_5 = 0$，并在有解时求其（通）解。
]

必要性：令 $R_1+R_2+R_3+R_4+R_5$ 得：
$
0 = a_1 + a_2 + a_3 + a_4 + a_5
$

充分性：对原线性方程组应用初等变换得
$
cases(
  x_1 &- x_2 &= a_1,
  x_1 &- x_3 &= a_1 + a_2,
  x_1 &- x_4 &= a_1 + a_2 + a_3,
  x_1 &- x_5 &= a_1 + a_2 + a_3 + a_4,
)
$

设 $c in RR$，可得通解为
$
cases(
  x_1 &= c,
  x_2 &= c - a_1,
  x_3 &= c - a_1 - a_2,
  x_4 &= c - a_1 - a_2 - a_3,
  x_5 &= c - a_1 - a_2 - a_3 - a_4,
)
$
故而可以说明充分性。


= P16 习题一 13


= P16 补充题一 1
#prob[
  设空间中三张平面的方程为
  $
  &pi_1&: 2x_1 &+ a x_2 &+ b x_3 &= 0,\
  &pi_2&: 2x_1 &+   x_2 &+   x_3 &= 0,\
  &pi_3&:  x_1 &+ a x_2 &- b x_3 &= -1.\
  $
  若该三张平面有一公共点 $(-1,1,1)$，试求 $a$ 和 $b$ 的值以及这三张平面的所有公共点。
]


= P16 补充题一 3
#prob[
  解齐次线性方程组
  $
  cases(
    quad + x_2 + x_3 + dots.c + x_(n-1) + x_n &= 0,
    x_1 + quad + x_3 + dots.c + x_(n-1) + x_n &= 0,
    x_1 + x_2 + quad + dots.c + x_(n-1) + x_n &= 0,
    &dots.c,
    x_1 + x_2 + quad + dots.c + x_(n-1) + quad &= 0,
  )
  $
  其中 $n>1$
]