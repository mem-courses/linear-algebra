#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Homework #14",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "December 26, 2023",
)

#let AA = math.bold(math.italic("A"))
#let BB = math.bold(math.italic("B"))
#let XX = math.bold(math.italic("X"))
#let YY = math.bold(math.italic("Y"))
#let EE = math.bold(math.italic("E"))
#let OO = math.bold(math.italic("O"))
#let TT = math.upright("T")
#let x1 = math.attach(math.italic("x"), br: math.upright("1"))
#let x2 = math.attach(math.italic("x"), br: math.upright("2"))
#let x3 = math.attach(math.italic("x"), br: math.upright("3"))
#let y1 = math.attach(math.italic("y"), br: math.upright("1"))
#let y2 = math.attach(math.italic("y"), br: math.upright("2"))
#let y3 = math.attach(math.italic("y"), br: math.upright("3"))
#let alpha = math.bold(math.alpha)
#let beta = math.bold(math.beta)
#let Lambda = math.bold(math.Lambda)
#let diag = math.upright("diag")
#let ssim = math.attach(sp + math.upright("~") + sp, tl: "", tr:"", t: math.upright("S"))

= P148 习题六 1 & 2 & 11 & 15 #ac
#prob[
  用配方法化二次型为标准形，并写出所用的非退化线性替换；然后用矩阵形式将其化为标准形、二次型在复数域及实数域上的规范形、用正交替换将二次型化为标准形．
  
  (1) $f(x1,x2,x3) = x1^2 + 2x1 x2 + 2 x2^2 + 4 x2 x3 + x3 ^2$．
]

#prob[(4) $f(x1,x2,x3) = 2 x1 x3 + 4 x2 x3$．]

比较复杂，写在纸上了．

= P149 习题六 6
#prob[
  证明：一个可逆的对称矩阵必与它的逆矩阵合同．
]

注意到：
$
AA^TT AA^(-1) AA = AA^TT = AA
$
故矩阵 $AA$ 和逆矩阵 $AA^(-1)$ 合同．

= P149 习题六 8
#prob[
  设 $f(seqn(x,n))$ 是一个实二次型，其秩为 $r$，证明：在 $RR^n$ 中存在 $n-r$ 维子空间 $V$，使得对任意的 $display(mat(x_1^0,x_2^0,dots.c,x_n^0))^TT in V$，均有 $f(x_1^0,x_2^0,dots.c,x_n^0) = 0$．
]

可通过非退化线性变换 $YY = bold(C) XX$ 将 $f(seqn(x,n))$ 化为标准形
$
f(seqn(y,n)) = d_1 y_1 ^2 + d_2 y_2^2 + dots.c + d_r y_r^2 + 0 dot y_(r+1)^2 + dots.c + 0 dot y_n^2
$
设 $V_y = {YY in RR^n | y_1=y_2=dots.c=y_r}$，显然有 $dim V_y = n-r$．

而对于 $V_x = {bold(C)^(-1) YY | YY in V_y }$，$V_x$ 中的向量和 $V_y$ 中的向量一一对应，故有 $dim V_x = n-r$ 也成立，这个 $V_x$ 即所求的子空间 $V$．

= P149 习题六 10
#prob[
  设 $AA$ 是二阶实对称矩阵．若 $AA^2 + AA = 2 EE$ 且 $|AA| = 4$，则二次型 $XX^TT AA XX$ 的实规范形为（$quad$）

  (A) $y1^2+y2^2+y3^2$

  (B) $y1^2+y2^2-y3^2$

  (C) $y1^2-y2^2-y3^2$

  (D) $-y1^2-y2^2-y3^2$
]

设 $AA = display(mat(a,b;b,c))$，则
$
AA^2 + AA = 2 EE <=> mat(
  a^2 + b^2 + a, a b + b c + b;
  a b + b c + b, b^2 + c^2 + c;
) = mat(
  2, 0;
  0, 2;
)\
|AA| = a c - b^2 = 4
$
综上，有
$
cases(
  a^2 + a + b^2 = 2,
  c^2 + c + b^2 = 2,
  (a+c+1) b = 0,
  a c - b^2 = 4,
)
$

TBD

= P149 习题六 13
#prob[如果把 $n$ 阶实对称矩阵按实数域上的合同关系分类（即两个 $n$ 阶实对称矩阵数域同一类，当且仅当他们是合同的），问共有几类？]

所对应标准形的秩 $r$ 和正惯性系数 $p$ 可以确定一类实对称矩阵．
$
sum_(r=0)^n sum_(p=0)^(r) 1
= sum_(r=0)^n (r+1)
= ((n+1)(n+2))/2
$
共有 $display(((n+1)(n+2))/2)$ 类．

= P149 习题六 14
#prob[证明：一个实二次型可以分解成两个实系数的一次齐次多项式的乘积，当且仅当它的秩为 $2$ 且符号差为 $0$，或者秩等于 $1$．]

设两个一次齐次多项式的系数向量分别为 $alpha$ 和 $beta$，则有

$
AA = 1/2 (alpha beta^TT + beta alpha^TT)
$

其中由于 $alpha,beta$ 非零向量，故 $r(AA)>0$．同时有 $r(alpha beta^TT) = r(beta alpha^TT) = 1$，故有 $1<=r(AA)<=2$．

TBD

= P150 习题六 18
#prob[
  已知二次曲面方程 $x^2 + a y^2 + z^2 + 2b x y + 2 x z + 2 y z= 4$ 可经过正交替换：
  $
  mat(x;y;z) = bold(U) mat(xi;eta;zeta)
  $
  化为椭圆柱面方程 $eta^2 + 4 zeta^2 = 4$，求 $a,b$ 的值和正交矩阵 $bold(U)$．
]

设二次型 $f(x,y,z) = x^2 + a y^2 + z^2 + 2b x y + 2 x z + 2 y z= 4$，则对应的矩阵表达式为：

$
AA = mat(
  1,b,1;
  b,a,1;
  1,1,1;
)
=> exists sp bold(U) st bold(U)^TT AA bold(U) = mat(
  0,0,0;
  0,1,0;
  0,0,4;
)
$

且可知特征多项式 $|lambda EE - AA| = lambda(lambda-1)(lambda-4)$．
$
tr(AA) = 0 + 1 + 4 = 1 + a + 1 => a = 3\
r(AA) <= 2 => k_1 mat(1,b,1) + k_2 mat(b,3,1) = mat(1,1,1) => b=1
$
解得 $AA$ 每个特征值对应的特征向量分别为：
$
cases(
  xi_1=display(mat(1,0,-1)),
  xi_2=display(mat(1,-1,1)),
  xi_3=display(mat(1,2,1)),
) sp ==> sp bold(U) = mat(
  1/sqrt(2),1/sqrt(3),1/sqrt(6);
  0,-1/sqrt(3),sqrt(2)/sqrt(3);
  -1/sqrt(2),1/sqrt(3),1/sqrt(6);
)
$

= P150 习题六 20
#prob[
  设二次型 $f(x1,x2) = x1^2 - 4 x1 x2 + 4 x2^2$ 经正交替换 $display(mat(x1;x2) = bold(U) mat(y1;y2))$ 化为二次型
  $
  g(y1,y2) = a y1^2 + 4 y1 y2 + b y2^2
  $
  其中 $a>=b$．求 $a,b$ 的值和正交矩阵 $bold(U)$．
]

= P150 习题六 21
#prob[
  设实二次型
  $
  f(x1,x2,x3) = (x1-x2+x3)^2 + (x2+x3)^2 + (x1+a x3)^2
  $
  其中 $a$ 是参数．

  (1) 求 $f(x1,x2,x3) = 0$ 的解．
]

#prob[(2) 求 $f(x1,x2,x3)$ 的规范形．]

= P150 习题六 24
#prob[设二次型 $f(x1,x2,x3) = x1^2 - x2^2 + x3^2 + 2 a x1 x3 + 4 x2 x3$ 的负惯性指数为 $1$，求 $a$ 的取值范围．]

= P150 习题六 25
#prob[
  设二次型
  $
  f(x1,x2,x3) = 2 (a_1 x1 + a_2 x2 + a_3 x3)^2 + (b_1 x1 + b_2 x2 + b_3 x3)^2
  $
  记 $alpha = display(mat(a_1,a_2,a_3))^TT,sp beta = display(mat(b_1,b_2,b_3))^TT$．

  (1) 证明：二次型 $f$ 对应的矩阵为 $2 alpha alpha^TT + beta beta^TT$．
]

#prob[(2) 证明：若 $alpha,beta$ 正交且均为单位向量，则 $f$ 在正交替换下的标准形为 $2 y1^2 + y2^2$．]

= P151 习题六 28
#prob[
  设二次型 $f(x1,x2,x3) = a x1^2 + a x2^2 + (a-1) x3^2 + 2 x1 x3 - 2 x2 x3$．

  (1) 求二次型 $f$ 的矩阵的所有特征值．
]

#prob[(2) 若二次型 $f$ 的规范形为 $y1^2 + y2^2$，求 $a$ 的值．]