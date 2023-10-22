#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
  title: "Linear Algebra Homework #4",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "October 20, 2023",
)

= P38 习题二 19

#prob[证明 $bold(A)$ 为数域 $PP$ 上的 $n$ 阶方阵，证明：$r(bold(A))=n <==> |bold(A)|!=0$。]

- $=>$
  
  反证法：若 $|bold(A)|=0$，说明通过初等行变换将 $bold(A)$ 变为约化阶梯形矩阵 $bold(A_1)$ 后，至少有一个空行。即说明 $r(bold(A_1))<n$。由于初等行变换不改变矩阵的秩。我们有 $r(bold(A))=r(bold(A_1))!=n$。

- $arrow.l.double$

  若 $|bold(A)|!=0$，说明通过初等行变换将 $bold(A)$ 变为约化阶梯形矩阵 $bold(A_2)$ 后，没有空行。同理可以说明 $r(bold(A))=n$。

= P38 习题二 20

#prob[
  判断下列命题是否正确（给出理由）：

  (1) 如果 $m times n$ 矩阵 $bold(A)$ 的秩为 $m$，那么 $m<=n$；\
  (2) 矩阵的秩等于该矩阵的非零行的个数；\
  (3) 阶梯形矩阵的秩等于该矩阵的非零行的个数；\
  (4) 阶梯型矩阵的秩等于该矩阵的非零列的个数；\
]

(1) 正确；$m=r(bold(A))<=min{n,m} => m<=n$。

(2) 错误；反例：令 $bold(A)=mat(1,1;1,1)$，则 $r(bold(A))=1!=2$。

(3) 正确；设非零行个数为 $k$。选阶梯头所在的 $k$ 行 $k$ 列构成的子式行列式不为 $0$，故 $r(bold(A))>=k$。只有 $k$ 个非零行，故 $r(bold(A))<=k$。综上 $r(bold(A))=k$。

(4) 错误；反例：$ mat(1,2,3,1;0,0,1,4;0,0,0,2;0,0,0,0) $

= P39 习题二 25

#prob[
  设有三张平面两两相交，且交线相互平行，由它们的方程
  $ a_(i 1)x + a_(i 2)y + a_(i 3)z = d_i\,quad i=1,2,3 $
  组成的线性方程组的系数矩阵与增广矩阵分别记为 $bold(A),overline(bold(A))$，则（$quad$）。 

  *(A)* $r(bold(A))=2, r(overline(bold(A)))=3$\
  *(B)* $r(bold(A))=2, r(overline(bold(A)))=2$\
  *(C)* $r(bold(A))=1, r(overline(bold(A)))=3$\
  *(D)* $r(bold(A))=1, r(overline(bold(A)))=1$\
]

TBD

= P39 习题二 28(2)

#prob[
  用初等变换将矩阵化为标准形：
  $ mat(
    1,-1,2,1,0;
    2,-2,4,3,0;
    4,0,7,3,2;
  ) $
]

$
mat(
  1,-1,2,1,0;
  2,-2,4,3,0;
  4,0,7,3,2;
) xarrow(R_2-2R_1\ R_3-4R_1) mat(
  1,-1,2,1,0;
  0,0,0,1,0;
  0,4,-1,-1,2;
) xarrow(R_1-R_2\ R_3+R_2) mat(
  1,-1,2,0,0;
  0,0,0,1,0;
  0,4,-1,0,2;
) \ xarrow(1/2R_3) mat(
  1,-1,2,0,0;
  0,0,0,1,0;
  0,2,-1/2,0,1;
) xarrow(C_(24)\ C_(35)) mat(
  1,0,0,-1,2;
  0,1,0,0,0;
  0,0,1,2,-1/2;
) xarrow(C_4+C_1\ C_4-2C_3\ C_5-2C_1\ C_5+1/2C_3) mat(
  1,0,0,0,0;
  0,1,0,0,0;
  0,0,1,0,0;
)
$

= P39 习题二 29

#prob[
  判断下面命题是否正确（给出理由）：

  (1) 任意一个矩阵都可以通过初等行变换化为阶梯形矩阵；\
  (2) 任意一个给定的矩阵都可以通过不同的初等行变换化为不同的阶梯形矩阵；\
  (3) 任意一个矩阵都可以通过初等行变换化为它的相抵标准形；\
  (4) 任意一个矩阵都可以通过初等变换化为它的相抵标准形；\
  (5) 任意一个给定的矩阵都可以通过不同的初等变换化为不同的相抵标准形；\
  (6) 某些矩阵可以通过不同的初等变换化为不同的相抵标准形；\
  (7) 如果两个矩阵相抵，那么它们的相抵标准形相同；\
  (8) 如果两个矩阵的秩相等，那么它们的相抵标准形相同。
]

(1) 正确；可以通过 Gauss 消元完成。

(2) 错误；如单位矩阵就不可。

(3) 错误；如 $mat(1,0,0;0,0,0;0,0,1)$ 就不可能在不进行初等列变换的情况下化为相抵标准形。

(4) 正确。

(5) 错误；一个矩阵的相抵标准形唯一。

(6) 错误。

(7) 正确。

(8) 正确。

= P41 补充题二 6

#prob[
  试证明 $n$ 次多项式 $f(x) = a_n x^n + a_(n-1) x^(n-1) + dots.c + a_1 x + a_0$（其中 $a_n!=0$）最多只有 $n$ 个互异的根。
]

若已知 $f(x)$ 的 $m$ 个互异根 $x_1,x_2,dots,x_m$，要求系数向量 $arrow(a) = (a_0,a_1,dots,a_n)$ 存在。

- 考虑 $m<=n$ 时，方程个数 $m$ 小于未知数个数 $n+1$，故系数向量一定有解。

- 考虑 $m=n+1$ 时，线性方程组形如：

  $ cases(
  a_0 + a_1 x_1 + a_2 x_1^2 + dots.c + a_n x_1^n &= 0,
  a_0 + a_1 x_2 + a_2 x_2^2 + dots.c + a_n x_2^n &= 0,
  &dots.c,
  a_0 + a_1 x_(n+1) + a_2 x_(n+1)^2 + dots.c + a_n x_(n+1)^n &= 0,
  ) $

  根据 Crammer 法则，求其系数矩阵（实际上为 Vandermonde 矩阵）的行列式：

  #set math.mat(delim: "|")
  $ |bold(D)| = mat(
    1,x_1,x_1^2,dots.c,x_1^n;
    1,x_2,x_2^2,dots.c,x_2^n;
    dots.v,dots.v,dots.v,,dots.v;
    1,x_(n+1),x_(n+1)^2,dots.c,x_(n+1)^n;
  ) = product_(1<=i<j<=n+1) (x_j - x_i) != 0 $

  故系数向量 $arrow(a)$ 应当由唯一解，且：

  $
  a_n = |bold(D_n)| / |bold(D)| = mat(
    1,x_1,x_1^2,dots.c,x_1^(n-1),0;
    1,x_2,x_2^2,dots.c,x_2^(n-1),0;
    dots.v,dots.v,dots.v,,dots.v,dots.v;
    1,x_(n+1),x_(n+1)^2,dots.c,x_(n+1)^(n-1),0;
  ) / |bold(D)| = 0
  $

  与题设中的 $a_n!=0$ 矛盾，故此时解得的系数向量 $arrow(a)$ 不合法。

- 考虑 $m>n+1$ 时，考虑满足其中任取 $n$ 个根的情况，根据上面的方法可得系数向量无解。

故 $n$ 次多项式 $f(x)$ 最多有 $n$ 个互异的根。

= （自选）P41 补充题二 3(7)

#prob[
  试计算行列式的值：
  #set math.mat(delim: "|")
  $ mat(
    a_0,a_1,dots.c,a_n;
    a_1,a_2,dots.c,a_0;
    dots.v,dots.v,,dots.v;
    a_n,a_0,dots.c,a_(n-1);
  ) (n+1 "阶循环矩阵的行列式") $
]

= （自选）P41 补充题二 3(8)

#prob[
  试计算行列式的值：
  #set math.mat(delim: "|")
  $ mat(
    1,1,dots.c,1;
    cos a_1, cos a_2, dots.c, cos a_n;
    dots.v,dots.v,,dots.v;
    cos (n-1) a_1, cos(n-1) a_2,dots.c, cos(n-1) a_n;
  ) $
  其中 $a_1,a_2,dots,a_n in CC$。
]