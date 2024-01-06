#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Note #1",
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

= 行列式

设 $bold(A) = (a_(i,j))_(n times n)$ 是数域 $PP$ 上的 $n$ 阶方阵，则它的行列式定义为：

#set math.mat(delim: "|")
$ |bold(A)| = mat(
  a_11,a_12,dots.c,a_(1 n);
  a_21,a_22,dots.c,a_(2 n);
  dots.v,dots.v,dots.down,dots.v;
  a_(n 1),a_(n 2),dots.c,a_(n n);
) = sum_(j_1 j_2 dots.c j_n)
(-1)^tau(j_1 j_2 dots.c j_n)
a_(1 j_1) a_(2 j_2) dots.c a_(n j_n) $

== 行列式的性质

#def[性质1]$|bold(A)| = |bold(A)^T|$；（在行列式中，行与列的地位一样）

#def[性质2.1]交换矩阵的两行（列）改变行列式的符号（#bb[互换]）；

#def[性质2.2]把某行（列）乘以非零的 $c$ 倍，行列式的值也乘以 $c$（#bb[倍乘]）；

#def[性质2.3]把某行（列）的 $c$ 倍加到另一行（列）上，不改变行列式的值（#bb[倍加]）；


#warn[
  #def[易错点]
  1. 把矩阵的第一行放到最后一行，实际上发生了 $n-1$ 次交换．故应乘以 $(-1)^(n-1)$ 的系数．
  2. $|k bold(A)| = k^n bold(A)$ 而不是 $k bold(A)$．同理 $|-bold(A)| = (-1)^n |bold(A)|$ 而不是 $-|bold(A)|$！
]

== 行列式的展开

=== 主子式

设 $bold(A) = (a_(i j))_(m times n)$，在 $bold(A)$ 中选取 $k$ 行 $(i_1,i_2,dots,i_k)$，选取 $k$ 列 $(j_1,j_2,dots,j_k)$，取位于交叉位置的 $k^2$ 个元素，按照原来的位置构成的 $k$ 阶行列式称为矩阵 $bold(A)$ 的 $k$ 阶 *主子式*，记为 $N=D display(vec(i_1 i_2 dots.c i_k, j_1 j_2 dots.c j_k))$．

=== 余子式与代数余子式

在 $bold(A) = (a_(i j))_(n times n)$ 中，划掉元素 $a_(i j)$ 所在的第 $i$ 行和第 $j$ 列，余下的位置按原来的位置构成 $n-1$ 阶行列式称为元素 $a_(i j)$ 的#bb[余子式]，记为 $M_(i j)$．

再记 $A_(i j) = (-1)^(i+j) M_(i j)$ 称为元素 $a_(i j)$ 的#bb[代数余子式]．

类似的，对于矩阵的 $k$ 阶子式 $N$，定义去掉其所在的 $k$ 行 $k$ 列后，余下元素按照原来位置组成的 $n-k$ 阶行列式，称为 $N$ 的#bb[余子式]，记为 $M=M display(vec(i_1 i_2 dots.c i_k, j_1 j_2 dots.c j_k))$．类似的有，$N$ 的#bb[代数余子式]，记为 $A=A display(vec(i_1 i_2 dots.c i_k, j_1 j_2 dots.c j_k)) = (-1)^(i_1+i_2+dots.c+i_k+j_1+j_2+dots.c+j_k) M display(vec(i_1 i_2 dots.c i_k, j_1 j_2 dots.c j_k))$．

=== 行列式按某一行或某一列展开

按照行展开有：
$ a_(i 1)A_(j 1) + a_(i 2)A_(j 2) + dots.c + a_(i n)A_(j n) = cases(D\,quad& i=j,0\,quad& i!=j) $
按照列展开有
$ a_(1 i)A_(1 j) + a_(2 i)A_(2 j) + dots.c + a_(n i)A_(n j) = cases(D\,quad& i=j,0\,quad& i!=j) $
#note[在后文证明伴随矩阵（$bold(A)^*$）相关性质的时候会用到．]

=== Laplace 定理

对于任取 $n$ 阶方阵 $bold(A)$，任取其中 $k$ 行（列），则由这 $k$ 行（列）构成的一切 $k$ 阶子式 $N_1,N_2,dots,N_t$（其中 $t=C_n^k$）与他们所对应的代数余子式 $A_1,A_2,dots,A_t$ 相乘的和等于 $|bold(A)|$．即：
$
|bold(A)| = sum_(1<=j_1<j_2<dots.c<j_k<=n) D display(vec(i_1 i_2 dots.c i_k, j_1 j_2 dots.c j_k)) A display(vec(i_1 i_2 dots.c i_k, j_1 j_2 dots.c j_k))
$

== Cramer 法则

在线性方程组中，如果 $m=n$，且系数矩阵行列式 $D!=0$，则线性方程组有唯一解，且可用行列式表示为：

$
x_1 = D_1/D,sp x_2 = D_2/D,dots,sp x_n=D_n/D\
"其中 " D_j = mat(
  a_11,dots.c,a_(1,j-1),b_1,a_(1,j+1),dots.c,a_(1 n);
  a_21,dots.c,a_(2,j-1),b_2,a_(2,j+1),dots.c,a_(2 n);
  dots.v,,dots.v,dots.v,dots.v,,dots.v;
  a_(n 1),dots.c,a_(n,j-1),b_n,a_(n,j+1),dots.c,a_(n n);
) quad (j=1,2,dots,n)
$

== 特殊类型的行列式

=== 关于主对角线的上（下）三角行列式

$ mat(
  a_11,a_12,dots.c,a_(1 n);
  " ",a_22,dots.c,a_(2 n);
  " ",,dots.down,dots.v;
  " ",,,a_(n n);
) = mat(
  a_11,,,;
  a_21,a_22,,;
  dots.v,dots.v,dots.down,;
  a_(n 1),a_(n 2),dots.c,a_(n n);
) = mat(
  a_11,,;
  " ",a_22,,;
  " ",,dots.down,;
  " ",,,a_(n n);
) = a_11 a_(22) dots.c a_(n n) $

=== 关于次对角线的上（下）三角行列式

$ mat(
  " ",,,a_(1 n);
  " ",,a_(2,n-1),a_(2 n);
  " ",dots.up,dots.v,dots.v;
  a_(n 1),dots.c,a_(n,n-1),a_(n n);
) = mat(
  a_11,dots.c,a_(1,n-1),a_(1 n);
  a_21,dots.c,a_(2,n-1),;
  dots.v,dots.up,,;
  a_(n 1),,,;
) = mat(
  " ",,,a_(1 n);
  " ",,a_(2,n-1),;
  " ",dots.up,,;
  a_(n 1),,,;
) = (-1)^(n(n-1)/2) a_11 a_(22) dots.c a_(n n) $

#warn[注意不要忘记乘以 $(-1)^(n(n-1)/2)$ 的系数．]

=== Vandermonde 行列式

$
D(a_1,a_2,dots.c,a_n) = mat(
  1,1,dots.c,1;
  a_1,a_2,dots.c,a_n;
  a_1^2,a_2^2,dots.c,a_n^2;
  dots.v,dots.v,,dots.v;
  a_1^(n-1),a_2^(n-1),dots.c,a_n^(n-1)
) = product_(1<=i<j<=n) (a_j - a_i)
$

#note[
  有时可以通过对整行（列）作乘法将矩阵调整到 Vandermonde 矩阵的形式．
  
  #def[易错]注意到是 $1$ 的行（列）在最上面（最左边），否则需要乘以左右翻转矩阵带来的系数 $(-1)^(n(n-1)/2)$．
]

=== “箭形”行列式

$
D_n = mat(
  x_1,1,1,dots.c,1;
  1,x_2,0,dots.c,0;
  1,0,x_3,dots.c,0;
  dots.v,dots.v,dots.v,,dots.v;
  1,0,0,dots.c,x_n;
) = mat(
  x_1,1/x_2,1/x_3,dots.c,1/x_n;
  1,1,0,dots.c,0;
  1,0,1,dots.c,0;
  dots.v,dots.v,dots.v,,dots.v;
  1,0,0,dots.c,1;
) = mat(
  x_1-sum_(i=2)^n x_i,1/x_2,1/x_3,dots.c,1/x_n;
  0,1,0,dots.c,0;
  0,0,1,dots.c,0;
  dots.v,dots.v,dots.v,,dots.v;
  0,0,0,dots.c,1;
) = x_1-sum_(i=2)^n x_i
$

=== “两三角形”行列式

对角线上方元素均为 $a$，下方元素均为 $b$，对角线上元素全为 $x_1,x_2,dots.c,x_n$ 的矩阵的行列式．
==== $a=b$ 的情况
将第 $i=2,3,dots.c,n$ 行都减去第一行得
$
D_n = mat(
  x_1,a,a,dots.c,a;
  a-x_1,x_2-a,0,dots.c,0;
  a-x_1,0,x_3-a,dots.c,0;
  dots.v,dots.v,dots.v,,dots.v;
  a-x_1,0,0,dots.c,x_n-a;
)
$
即化成了箭形行列式，所以：
$
D_n = (product_(i=2)^n (x_i-a)) (x_1 - a(a-x_1)sum_(i=2)^n 1/(x_i-a))
$

==== $a!=b$ 或对角线上元素全相等的情况．

$
D_n &= mat(
  x_1,a,a,dots.c,a;
  b,x_2,a,dots.c,a;
  b,b,x_3,dots.c,a;
  dots.v,dots.v,dots.v,,dots.v;
  b,b,b,dots.c,x_n;
) = mat(
  x_1,a,a,dots.c,a;
  b,x_2,a,dots.c,a;
  b,b,x_3,dots.c,a;
  dots.v,dots.v,dots.v,,dots.v;
  b,b,b,dots.c,b;
) + mat(
  x_1,a,a,dots.c,0;
  b,x_2,a,dots.c,0;
  b,b,x_3,dots.c,0;
  dots.v,dots.v,dots.v,,dots.v;
  b,b,b,dots.c,x_n-b;
)\ &= b product_(i=1)^(n-1) (x_i-a) + (x_n-b) D_(n-1)
$
如果 $a=b$ 且 $x_1=x_2=dots.c=x_n$，这里也可用数列递推的方法计算．

否则可同理得到 $D_n = display(a product_(i=1)^(n-1) (x_i-b) + (x_n-a) D_(n-1))$．两式联立可得
$
D_n = 1/(a-b) (a product_(i=1)^n (x_i-b) - b product_(i=1)^n (x_j - a))
$

=== 特殊的分块矩阵

$
D_(s+t) = mat(bold(A_(s times s)),bold(O);bold(C_(t times s)),bold(B_(t times t))) = mat(bold(A_(s times s)),bold(C_(s times t));bold(O),bold(B_(t times t))) = |bold(A_(s times s))| |bold(B_(t times t))|\
D_(s+t) = mat(bold(O),bold(A_(s times s));bold(B_(t times t)),bold(C_(t times s))) = mat(bold(C_(s times t)),bold(A_(s times s));bold(B_(t times t)),bold(O)) = (-1)^(s times t) |bold(A_(s times s))| |bold(B_(t times t))|
$

可以由 Laplace 定理得到．

== 求行列式的一些技巧

=== 递推法

$ "eg. " D_n = mat(
  a,b,0,0,dots.c,0,0;
  c,a,b,0,dots.c,0,0;
  0,c,a,b,dots.c,0,0;
  0,0,c,a,dots.c,0,0;
  dots.v,dots.v,dots.v,dots.v,,dots.v,dots.v;
  0,0,0,0,dots.c,a,b;
  0,0,0,0,dots.c,c,a;
) $

按照第一列 Laplace 展开可以得到 $D_n = a D_(n -1) - b c D_(n-2)$．根据#bb[特征方程法]可以求得递推式，或可考虑#bb[归纳证明]．

=== 累加法

$ "eg. " D_n = mat(
  1,2,3,dots.c,n-2,n-1,n;
  1,-1,0,dots.c,0,0,0;
  0,2,-2,dots.c,0,0,0;
  dots.v,dots.v,dots.v,,dots.v,dots.v,dots.v;
  0,0,0,dots.c,2-n,n-2,0;
  0,0,0,dots.c,0,1-n,n-1;
) $

可以将每一列都累加到第一列，这样第一列仅有第一个元素为 $display(n(n+1)/2)$，其余项皆为 $0$．重复此过程，每次可以使问题降低一个维度，最后得到 $display(D_n = (-1)^(n-1) (n+1)!/2)$．

对于整行（列）元素和相同的矩阵也可以类比此方法． 


#set math.mat(delim: "(")
