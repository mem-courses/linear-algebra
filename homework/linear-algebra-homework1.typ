#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
  title: "线性代数 Homework #1",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "September 18, 2023",
)

= P14 习题一 1(3)

#prob[
  使用 Gauss 消元法解线性方程组：
  #let tmp = mem_equations(
    (5, -1, 1, -2, 3),
    (8, -1, 1, -1, 1),
    (7, 2, -2, 3, 0),
    (5, -3, 3, -6, 6),
  )
  $ tmp $
]

对原线性方程组实施初等变换：

#let tmp1 = mem_equations(
  (5, -1, 1, -2, 3),
  (8, -1, 1, -1, 1),
  (7, 2, -2, 3, 0),
  (5, -3, 3, -6, 6),
)
#let tmp2 = mem_equations(
  (5, -1, 1, -2, 3),
  (3, 0, 0, 1, -2),
  (17, 0, 0, -1, 6),
  (-10, 0, 0, 0, -3),
)
$ tmp1 dxarrow(R_2 - R_1 \ R_3 + 2R_1 \ R_4 - 3R_1) tmp2 $

可得 $x_1 = 0.3$。

由 $R_2$ 知 $x_4 = -2 - 3x_1 = -2.9$；由 $R_3$ 知 $x_4 = 17x_1 - 6 = -0.9$。

矛盾！故原线性方程组无解。

= P14 习题一 2
#prob[
  证明：任意一个形如
  $
    cases(
      a_11 x_1 + a_12 x_2 + &dots.c + a_(1n) x_n &= 0,
      a_21 x_1 + a_22 x_2 + &dots.c + a_(2n) x_n &= 0,
      &dots.c,
      a_(m 1) x_1 + a_(m 2) x_2 + &dots.c + a_(m n) x_n &= 0,
    )
  $
  的齐次线性方程组一定有解：它或有唯一解 $x_1 = 0, x_2 = 0, dots, x_n = 0$，或有无穷多解．
]

代入可知 $x_i$ 全为 0 一定是合法解，现只需证：如果存在一组非零解，则一定存在无穷多解．

若存在一组非零解 $x_1, x_2, dots, x_n$，则 $forall c in RR$，一定存在 ${x'_i = x_i dot c}_(i=1)^n$ 也是合法解．因为实数有无穷多个，所以此时有无穷多解．


= P14 习题一 3(1)

#prob[
  使用 Gauss 消元法解齐次线性方程组：
  #let tmp = mem_equations(
    (2, 2, -4, 3, 0),
    (2, 4, -11, 10, 0),
    (4, 2, -1, -8, 0),
    (1, 1, -3, 3, 0),
  )
  $ tmp $
]

对原线性方程组实施初等变换：

#let t0 = mem_equations(
  (1, 1, -3, 3, 0),
  (2, 4, -11, 10, 0),
  (4, 2, -1, -8, 0),
  (2, 2, -4, 3, 0),
)
#let t1 = mem_equations(
  (2, 2, -4, 3, 0),
  (2, 4, -11, 10, 0),
  (4, 2, -1, -8, 0),
  (1, 1, -3, 3, 0),
)
#let t2 = mem_equations(
  (1, 1, -3, 3, 0),
  (0, 2, -5, 4, 0),
  (0, -2, 11, -20, 0),
  (0, 0, 2, -3, 0),
)
#let t3 = mem_equations(
  (1, 1, -3, 3, 0),
  (0, 2, -5, 4, 0),
  (0, 0, 6, -16, 0),
  (0, 0, 6, -9, 0),
)
#let t4 = mem_equations(
  (1, 1, -3, 3, 0),
  (0, 2, -5, 4, 0),
  (0, 0, 6, -16, 0),
  (0, 0, 0, 7, 0),
)
$
t0 dxarrow(R_14) t1 \
dxarrow(R_2 - 2R_1 \ R_3 - 4R_1 \ R_4 - 2R_1) t2
dxarrow(R_3 + R_2 \ 3 R_4) t3 \
dxarrow(R_4 - R_3) t4
$

可解得 $display(cases(x_1 = 0, x_2 = 0, x_3 = 0, x_4 = 0))$。

= P14 习题一 6
#prob[
  设矩阵 $bold(A)$ 通过初等变换 $R_12$ 换成矩阵 $bold(B)$，请写出仅用行的倍加和倍乘变换将 $bold(A)$ 换成 $bold(B)$ 的过程．
] 

设 $bold(A) = display(mat(bold(R_1); bold(R_2); bold(C)))$，则有 $bold(B) = display(mat(bold(R_2); bold(R_1); bold(C)))$．

对 $bold(A)$ 应用初等变换得
$
  bold(A)
  dxarrow(R_2+R_1) mat(bold(R_1); bold(R_1) + bold(R_2); bold(C))
  dxarrow(-1 times R_1) mat(-bold(R_1); bold(R_1) + bold(R_2); bold(C))
  dxarrow(R_1 + R_2) mat(bold(R_2); bold(R_1) + bold(R_2); bold(C))
  dxarrow(R_2 - R_1) mat(bold(R_2); bold(R_1); bold(C))
  = bold(B)
$


= P15 习题一 9
见习题本．


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

对其系数矩阵的增广矩阵应用初等变换得：

$
  overline(bold(A)) = mat(
    lambda, 1, 1, 1, 1;
    1, lambda, 1, 1, lambda;
    1, 1, lambda, lambda, lambda^2;
  )dxarrow(lambda R_2 \ lambda R_3) mat(
    𝜆, 1, 1, 1, 1;
    𝜆, 𝜆^2, 𝜆, 𝜆, 𝜆^2;
    𝜆, 𝜆, 𝜆^2, 𝜆^2, 𝜆^3;
  ) dxarrow(R_2 - R_1 \ R_3 - R_1) mat(
    𝜆, 1, 1, 1, 1;
    0, 𝜆^2-1, 𝜆-1, 𝜆-1, 𝜆^2-1;
    0, 𝜆-1, 𝜆^2-1, 𝜆^2-1, 𝜆^3-1;
  ) \ dxarrow((𝜆+1) R_3) mat(
    𝜆, 1, 1, 1, 1;
    0, 𝜆^2-1, 𝜆-1, 𝜆-1, 𝜆^2-1;
    0, 𝜆^2-1, 𝜆^3+𝜆^2-𝜆-1, 𝜆^3+𝜆^2-𝜆-1, 𝜆^4+𝜆^3-𝜆-1;
  ) \ dxarrow(R_3 - R_2) mat(
    𝜆, 1, 1, 1, 1;
    0, 𝜆^2-1, 𝜆-1, 𝜆-1, 𝜆^2-1;
    0, 0, 𝜆^3+𝜆^2-2𝜆, 𝜆^3+𝜆^2-2𝜆, 𝜆^4+𝜆^3-𝜆^2-𝜆;
  )
$

当 $lambda=0$ 时，有 $display(cases(
  x_2 + x_3 + x_4 = 1,
  -x_2 - x_3 - x_4 = -1,
  x_3 + x_4 = 0
))$ 故原线性方程组有通解
$
  display(cases(
    x_1 = t_1,
    x_2 = 1,
    x_3 = t_2,
    x_4 = -t_2,
  )) quad quad t_1,t_2 in RR
$

当 $lambda=1$ 时，有 $display(cases(
  x_1 + x_2 + x_3 + x_4 = 1,
))$，故原线性方程组有通解
$
  display(cases(
    x_1 = t_1,
    x_2 = t_2,
    x_3 = t_3,
    x_4 = 1 - t_1 - t_2 - t_3,
  )) quad quad t_1,t_2,t_3 in RR
$

当 $lambda=-1$ 时，有 $display(cases(
  -x_1 + x_2 + x_3 + x_4 = 1,
  x_3 + x_4 = 0,
))$，故原线性方程组有通解
$
  display(cases(
    x_1 = t_1 - 1,
    x_2 = t_1,
    x_3 = t_2,
    x_4 = -t_2,
  )) quad quad t_1, t_2 in RR
$

当 $lambda = -2$ 时，有 $display(cases(
  -2x_1 + x_2 + x_3 + x_4 = 0,
  x_2 - x_3 - x_4 = 1,
  0 = 6,
))$，故此时原线性方程组无解．

否则，由于 $r<m$，原线性方程组有通解
$
  cases(
    x_1 = display(-(lambda+1) / (lambda+2)),
    x_2 = display(1 / (lambda+2)),
    x_3 = t,
    x_4 = display((lambda+1)^2 / (lambda+2)) - t
  ) quad quad t in RR
$

= P15 习题一 10(4)

TBD


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
  $ x_1 + 2x_2 + x_3 = a - 1 $
  有公共解，求 $a$ 的值和所有公共解．
]

对其系数矩阵的增广矩阵应用初等变换得
$
  overline(bold(A)) = mat(
    1, 1, 1, 0;
    1, 2, a, 0;
    1, 4, a^2, 0;
    1, 2, 1, a-1;
  ) dxarrow(R_2-R_1 \ R_3-R_1 \ R_4-R_1) mat(
    1, 1, 1, 0;
    0, 1, a-1, 0;
    0, 3, a^2-1, 0;
    0, 1, 0, a-1;
  ) dxarrow(R_3-3R_2 \ R_4-R_1) \ mat(
    1, 1, 1, 0;
    0, 1, a-1, 0;
    0, 0, a^2-3a+2, 0;
    0, 0, -(a-1), a-1; 
  )
$

若 $a=1$，代入得：

$
  overline(bold(A)) arrow.r mat(
    1,1,1,0;
    0,1,0,0;
    0,0,0,0;
    0,0,0,0;
  )
$

此时有公共解：
$ cases(x_1 = -t, x_2 = 0, x_3 = t) quad quad t in RR $

若 $a != 1$，则需满足 $x_3 = -1$ 且 $(a^2-3a+2) x_3 = 0$，可知 $a=2$．此时有公共解：
$ cases(x_1 = 0, x_2 = 1, x_3 = -1) $

综上所述，$a$ 的值为 $1$ 或 $2$，公共解为
$
  &cases(x_1 = -t, x_2 = 0, x_3 = t) quad quad t in RR quad quad &(a=1)\
  &cases(x_1 = 0, x_2 = 1, x_3 = -1) quad quad &(a=2)
$

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
  有解的充分必要条件是 $a_1+a_2+a_3+a_4+a_5 = 0$，并在有解时求其（通）解．
]

必要性：令 $R_1+R_2+R_3+R_4+R_5$ 得：
$ 0 = a_1 + a_2 + a_3 + a_4 + a_5 $

充分性：对原线性方程组应用初等变换得
$
  cases(
    x_1 &- x_2 &= a_1,
    x_1 &- x_3 &= a_1 + a_2,
    x_1 &- x_4 &= a_1 + a_2 + a_3,
    x_1 &- x_5 &= a_1 + a_2 + a_3 + a_4,
  )
$

故原线性方程组的通解为
$
  cases(
    x_1 &= t,
    x_2 &= t - a_1,
    x_3 &= t - a_1 - a_2,
    x_4 &= t - a_1 - a_2 - a_3,
    x_5 &= t - a_1 - a_2 - a_3 - a_4,
  ) quad quad t in RR
$
故而可以说明充分性．


= P16 习题一 13
#prob[
判断下列论断是否成立．若成立，请给出证明；若不成立，请给出一个反例：

(1) 方程个数小于未知量个数的齐次线性方程组必有非零解；

(2) 方程个数小于未知量个数的线性方程组必有无穷多个解．
]

(1) 成立．通过重排标号可使得应用 Gauss 后线性方程组形如
$
  cases(
    x_1 + a_(1,2)x_2 + a_(1,3)x_3 + dots.c + a_(1,m)x_m &= b_1,
    x_2 + a_(2,3)x_3 + a_(2,4)x_4 + dots.c + a_(2,m)x_m &= b_2,
    &dots.c,
    x_r + a_()
  )
$

其中 $r<m$．那么必存在 $r<i<=n$，令符合条件的 $x_i$ 取非零常数并代入．得到新的线性方程组有 $r=n$．由定理可知此时必有唯一解．

且由于 $exists r<i<=n, x_i != 0$，这组解是非零解．即原线性方程组必有非零解．

(2) 成立．同 (1) 理转化后可知随意调整 $r<i<=n$ 的 $x_i$ 后一定有唯一解．由于 $x_n in RR$，实数域有无穷多元素，故原线性方程组有无穷多解．


= P16 补充题一 1
#prob[
  设空间中三张平面的方程为
  $
    pi_1 &:space 2x_1 + a x_2 + b x_3 = 0,\
    pi_2 &:space 2x_1 +   x_2 +   x_3 = 0,\
    pi_3 &:space x_1  + a x_2 - b x_3 = -1.\
  $
  若该三张平面有一公共点 $(-1,1,1)$，试求 $a$ 和 $b$ 的值以及这三张平面的所有公共点．
]

代入 $display(mat(x_1;x_2;x_3) = mat(-1;1;1))$ 得：
$
  cases(
    -2 + a + b = 0,
    -2 + 1 + 1 = 0,
    -1 + a - b = -1,
  )
$

解得 $display(cases(a = 1, b = 1))$．代入方程组得
$
  cases(
    2x_1 + x_2 + x_3 = 0,
    2x_1 + x_2 + x_3 = 0,
    x_1 + x_2 - x_3 = -1,
  )
$

对其应用 Gauss 消元可知原线性方程组同解于
$
  cases(
    x_1 + x_2 - x_3 = -1,
    x_2 - 3 x_3 = -2,
  )
$

故原线性方程组的通解为
$
  cases(
    x_1 = -2t + 1,
    x_2 = 3t - 2,
    x_3 = t,
  ) quad quad t in RR
$

可知三张平面的所有公共点为 ${(-2t + 1, 3t - 2, t) | t in RR}$．


= P16 补充题一 3
#prob[
  解齐次线性方程组
  $
    cas(
      quad &+ x_2 &+ x_3 &+ &dots.c &+ x_(n-1) &+ x_n &= 0,
      x_1 &+ quad &+ x_3 &+ &dots.c &+ x_(n-1) &+ x_n &= 0,
      x_1 &+ x_2 &+ quad &+ &dots.c &+ x_(n-1) &+ x_n &= 0,
      &&&&&&&dots.c,
      x_1 &+ x_2 &+ quad &+ &dots.c &+ x_(n-1) &+ quad &= 0,
    )
  $
  其中 $n>1$
]
 
对原线性方程组应用初等变换得
$
  dxarrow(display(R_(i mod n + 1) - R_i  "," i in [1,n] sect ZZ)) cases(
    x_1 - x_2 = 0,
    x_2 - x_3 = 0,
    dots.c,
    x_(n-1) - x_n = 0,
    x_n - x_1 = 0,
  )
$

故 $x_1 = x_2 = dots.c = x_n$，则有 $(n-1) x_1 = 0$．

由于 $n>1$，只能有 $x_1 = 0$，故原线性方程组的解为 $x_1 = x_2 = dots.c = x_n = 0$．
