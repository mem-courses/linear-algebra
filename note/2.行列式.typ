#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra #2",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "October 28, 2023",
)

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
