#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Homework #5",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "October 23, 2023",
)

= P66 习题三 3

#prob[
  设矩阵 $display(bold(A) = mat(lambda,1,1;0,lambda-1,0;1,1,lambda)\,sp bold(b) = mat(a;1;1))$．已知线性方程组 $bold(A X) = bold(b)$ 存在两个不同的解．

  (1) 求 $lambda$、$a$．\
  (2) 求线性方程组 $bold(A X) = bold(b)$ 的通解．
]

= P67 习题三 6

#prob[
  设矩阵 $ bold(A) = mat(1,-1,-1;2,a,1;-1,-1,a),quad bold(B) = mat(2,2;1,a;-a-1,-2) $ 问当 $a$ 为何值时，方程 $bold(A X) = bold(B)$ 无解，有唯一解，有无穷多个解？在有解时，求解此方程．
]

= P67 习题三 7

#prob[
  设 $n$ 元线性方程组 $bold(A X) = bold(b)$，其中 $ bold(A) = mat(2a,1;a^2,2a,1;,a^2,2a,1;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a),quad bold(X) = mat(x_1;x_2;dots.v;x_n),quad bold(b) = mat(1;0;dots.v;0) $

  (1) 证明行列式 $|bold(A)| = (n+1)a^n$；\
  (2) 问当 $a$ 为何值时，该方程组有唯一解，并求 $x_1$；\
  (3) 问当 $a$ 为何值时，该方程组有无穷多个解，并求通解．
]

= P67 习题三 9

#prob[设 $bold(A) in PP^(n times n)$，证明：如果对 $PP^(n times 1)$ 中的所有矩阵 $bold(X)$ 都有 $bold(A X) = bold(O)$，那么 $bold(A) = bold(O)$．]

假设 $bold(A) != bold(O)$，那么一定存在 $a_(i,j) != 0$，我们只需要令 $x_(j,1) = 1$ 且 $forall t != j,sp x_(t,1)=0$．那么 $(bold(A X))_(i,1) = a_(i,j) != 0$，此时 $bold(A X) != bold(O)$．与题设矛盾，故应有 $bold(A) = bold(O)$ 恒成立．

= P67 习题三 10

#prob[设 $bold(e)_(i j) in PP^(m times n)$ 表示第 $i$ 行和第 $j$ 列交叉位置元素为 $1$，其余元素均为零的矩阵．若 $bold(A) in PP^(n times m),sp bold(B) in PP^(m times n)$，请计算 $bold(A e)_(i j)$ 以及 $bold(e)_(i j)bold(B)$．]

= P67 习题三 12(1)

#prob[求所有与矩阵 $bold(A) = display(mat(0,1,0,dots.c,0,0;0,0,1,dots.c,0,0;0,0,0,dots.c,0,0;dots.v,dots.v,dots.v,,dots.v,dots.v;0,0,0,dots.c,0,1;0,0,0,dots.c,0,0))_(n times n)$ 可交换的矩阵．]

设可交换的矩阵为 $bold(X)$，即解 $bold(A X) = bold(X A)$．显然 $bold(X) in PP^(n times n)$．

$
(bold(A X))_(i,j) = sum_(k=1)^n a_(i,k) x_(k,j) = cases(x_(i+1,j)\,quad& i<n, 0\,quad& i=n)\
(bold(X A))_(i,j) = sum_(k=1)^n x_(i,k) a_(k,j) = cases(x_(i,j-1)\,quad& j>1, 0\,quad& j=1)\
$

故 $forall 1<=i<n, 1<j<=n$，有 $x_(i+1,j) = x_(i,j-1)$ 恒成立时可交换．即满足每一条沿着主对角线方向的数字全相同的 $n$ 阶方阵 $bold(X)$ 都是与 $bold(A)$ 可交换的矩阵．

= P67 习题三 12(2)

#prob[设 $bold(B)$ 是一个对角线上元素互不相同的对角矩阵，求所有与矩阵 $bold(B)$ 可交换的矩阵．]

设可交换的矩阵为 $bold(X)$，即解 $bold(B X) = bold(X B)$．

$
(bold(B X))_(i,j) = sum_(k=1)^n b_(i,k) x_(k,i) = b_(i,i) x_(i,j)\
(bold(X B))_(i,j) = sum_(k=1)^n x_(i,k) b_(k,j) = x_(i,j) b_(j,j)\
$

应有 $forall 1<=i,j<=n$，$(bold(B X))_(i,j) = (bold(X B))_(i,j) <==> b_(i,i) x_(i,j) = b_(j,j) x_(i,j)$．由于 $bold(B)$ 是一个对角线上元素互不相同的对角矩阵，所以当 $i!=j$ 时，必须有 $x_(i,j)=0$；当 $i=j$ 时，$x_(i,j)$ 无论取何值都满足．所以可以与 $bold(B)$ 交换的所有矩阵应是对角矩阵．

= P68 习题三 14(4)

#prob[计算矩阵的幂：$ mat(1,-1,-1,-1;-1,1,-1,-1;-1,-1,1,-1;-1,-1,-1,1)^n $]

我们用 $bold(F_(x,y))$ 表示满足 $(bold(F_(x,y)))_(i,j) = display(cases(x\,quad& i=j,y\,quad& i!=j))$ 的 $m$ 阶矩阵．其中 $m=4$．题目中我们有 $bold(A)=bold(F_(1,-1))$．考虑 $bold(F_(x,y)) times bold(A)$，我们有：

$
x' = sum_(k=1)^4 (bold(F_(x,y)))_(i,k) bold(A)_(k,i) = x-3y\
y' = sum_(k=1)^4 (bold(F_(x,y)))_(i,k) bold(A)_(k,j) = -x-y\
$

考虑

$
mat(x_n;y_n)
= mat(1,-3;-1,-1)^(n-1) mat(1;-1)
= cases(
  display(mat(4^((n-1)/2);-4^((n-1)/2))) \,quad& n mod 2 = 1,
  display(mat(4^(n/2);0)) \,quad& n mod 2 = 0,
)
$

代入到原命题中，我们有：

$
mat(1,-1,-1,-1;-1,1,-1,-1;-1,-1,1,-1;-1,-1,-1,1)^n = cases(
  display(mat(4^((n-1)/2),-4^((n-1)/2),-4^((n-1)/2),-4^((n-1)/2);-4^((n-1)/2),4^((n-1)/2),-4^((n-1)/2),-4^((n-1)/2);-4^((n-1)/2),-4^((n-1)/2),4^((n-1)/2),-4^((n-1)/2);-4^((n-1)/2),-4^((n-1)/2),-4^((n-1)/2),4^((n-1)/2)))\,quad& n mod 2 = 1,
  display(mat(4^(n/2),0,0,0;0,4^(n/2),0,0;0,0,4^(n/2),0;0,0,0,4^(n/2)))\,quad& n mod 2 = 0,
)
$

= P68 习题三 17

#prob[
  称 $n$ 阶矩阵 $bold(A)$ 的主对角线上所有元素之和为该矩阵的 *迹*，记为 $tr(bold(A))$．证明：

  (1) $forall bold(A) in PP^(m times n),sp forall bold(B) in PP^(n times m)$，均有 $tr(bold(A B)) = tr(bold(B A))$．
]

$
tr(bold(A B))
= sum_(i=1)^m sum_(j=1)^n a_(i,j) dot b_(j,i)
= sum_(j=1)^m sum_(i=1)^n a_(j,i) dot b_(i,j)
= sum_(i=1)^n sum_(j=1)^m b_(i,j) dot a_(j,i)
= tr(bold(B A))
$

#prob[(2) 不存在 $n$ 阶矩阵 $bold(A),bold(B)$ 使得 $bold(A B) - bold(B A) = bold(E)$ 成立．]

对于 $n$ 阶方阵 $bold(A),bold(B)$，有 $tr(bold(A)+bold(B)) = sum_(i=1)^n (a_(i,i) + b_(i,i)) = tr(bold(A)) + tr(bold(B))$．

反证法，假设存在矩阵 $bold(A),bold(B)$ 使等式成立，那么有 $bold(A B) = bold(B A) + bold(E)$，则应有
$ tr(bold(A B)) = tr(bold(B A)) + tr(bold(E)) = tr(bold(B A)) + n > tr(bold(B A)) $
与第一问得到的 $tr(bold(A B)) = tr(bold(B A))$ 矛盾．故假设不成立，这样的矩阵不存在．

= P68 习题三 20

#prob[设线性方程组 $bold(A X) = bold(b)$ 的系数矩阵 $bold(A)$ 的秩等于矩阵 $bold(B) = display(mat(bold(A),bold(b);bold(b)^T,0))$ 的秩，证明该线性方程组有解．]

= P68 习题三 21

#prob[如果 $bold(A)^T = bold(A)$，那么称 $bold(A)$ 为 *对称矩阵*．证明：若 $bold(A)$ 实对称且 $bold(A)^2 = bold(O)$，则 $bold(A) = bold(O)$．]

$
bold(A) = bold(O)
<==> forall 1<=i,j<=n,sp sum_(k=1)^n a_(i,k) a_(k,j) = 0
==> forall 1<=i<=n,sp sum_(k=1)^n a_(i,k)^2 = 0
$

由于 $forall x in RR,sp x^2>=0$，取到等号当且仅当 $x=0$．所以当且仅当 $forall 1<=i,k<=n, a_(i,k) = 0$ 时等式成立．即 $bold(A) = bold(O)$．

= P69 习题三 24

#prob[
  如果 $bold(A)^T = -bold(A)$，那么称 $bold(A)$ 为 *反对称矩阵*．证明：

  (1) 如果 $bold(A) = (a_(i j))_(n times n)$，那么 $forall 1<=i,j<=n$，均有 $a_(i j) = - a_(j i)$ 成立；
]

$ bold(A)^T = -bold(A) <==> forall 1<=i,j<=n,sp a_(j i) = -a_(i j) <==> forall 1<=i,j<=n,sp a_(i,j) = -a_(j,i) $

所以命题得证．

#prob[(2) 如果 $bold(A) = (a_(i j))_(n times n)$，那么 $forall 1<=i<=n$，均有 $a_(i i) = 0$ 成立；]

根据 (1)，$forall 1<=i<=n$，$a_(i i)=-a_(i i)$，当且仅当 $a_(i,i) = 0$ 时成立，原命题得证．

#prob[(3) 矩阵 $bold(A) pm bold(B)$ 都是反对称矩阵；]

$(bold(A)+bold(B))_(i,j) = a_(i,j) + b_(i,j) = -a_(j,i) - b_(j,i) = -(bold(A)+bold(B))_(j,i) ==> (bold(A) + bold(B))^T = -(bold(A) + bold(B)) ==> bold(A) + bold(B)$ 是反对称矩阵．

$(bold(A)-bold(B))_(i,j) = a_(i,j) - b_(i,j) = -a_(j,i) + b_(j,i) = -(bold(A)-bold(B))_(j,i) ==> (bold(A) - bold(B))^T = -(bold(A) - bold(B)) ==> bold(A) - bold(B)$ 是反对称矩阵．

#prob[(4) $forall k in PP$，矩阵 $k bold(A)$ 都是反对称矩阵；]

$ forall k in PP,sp (k bold(A))^T = k bold(A)^T = k (- bold(A)) = -(k bold(A)) $

所以 $k bold(A)$ 也是反对称矩阵．

#prob[(5) 矩阵 $bold(A B)$ 是对称矩阵当且仅当 $bold(A B) = bold(B A)$；]

$
bold(A B) = (bold(A B))^T
&<==> forall 1<=i,j<=n,sp sum_(k=1)^n a_(i,k) b_(k,j) = sum_(k=1)^n a_(j,k) b_(k,i)\
&<==> forall 1<=i,j<=n,sp sum_(k=1)^n a_(i,k) b_(k,j) = sum_(k=1)^n (-a_(k,j)) (-b_(i,k)) = sum_(k=1)^n b_(i,k) a_(k,j)\
&<==> bold(A B) = bold(B A)
$

#prob[(6) 矩阵 $bold(A B) - bold(B A)$ 是反对称矩阵．]

$
(bold(A B) - bold(B A))_(i,j)
&= sum_(k=1)^n (a_(i,k) b_(k,j) - b_(i,k) a_(k,j))\
&= sum_(k=1)^n (a_(k,i) b_(j,k) - b_(k,i) a_(j,k))\
&= sum_(k=1)^n -(a_(j,k) b_(k,i) - b_(j,k) a_(k,i))\
&= -(bold(A B) - bold(B A))_(j,i)
$

所以有 $(bold(A B) - bold(B A))^T = -(bold(A B) - bold(B A))$，即 $bold(A B) - bold(B A)$ 是反对称矩阵．

= P69 习题三 25

#prob[
  对任意一个方阵 $bold(A)$，证明：

  (1) 矩阵 $bold(A) + bold(A)^T$ 是对称矩阵；
]

设 $bold(B) = bold(A) + bold(A)^T$，要使 $b_(i,j) = b_(j,i) <==> a_(i,j) + a_(j,i) = a_(j,i) + a_(i,j)$，显然成立．

#prob[(2) 矩阵 $bold(A) - bold(A)^T$ 是反对称矩阵；]

设 $bold(B) = bold(A) - bold(A)^T$，要使 $b_(i,j) = -b_(j,i) <==> a_(i,j) - a_(j,i) = -(a_(j,i) - a_(i,j))$，显然成立．

#prob[(3) 矩阵 $bold(A)$ 是一个对称矩阵与一个反对称矩阵的和．]

取 $bold(X) = display(frac(bold(A) + bold(A)^T, 2))$，$bold(Y) = display(frac(bold(A) - bold(A)^T, 2))$．根据前两问所证明，$bold(X)$ 是对称矩阵，$bold(Y)$ 是反对称矩阵．且有 $bold(A) = bold(X) + bold(Y)$．故原命题得证．

= P69 习题三 26

#prob[
  判断下列命题是否成立：

  (1) 若矩阵乘积 $bold(A B) in PP^(m times n)$，则矩阵 $bold(A)$ 有 $m$ 行；
]

正确；说明 $exists k in NN_+$，有 $bold(A) in PP^(m times k)$ 且 $bold(B) in PP^(k times n)$，故矩阵 $bold(A)$ 有 $m$ 行．

#prob[(2) 设 $bold(A),sp bold(B)$ 是两个 $n$ 阶矩阵，则 $|bold(A B)| = |bold(B A)|$；]

正确；$|bold(A B)| = |bold(A)| dot |bold(B)| = |bold(B)| dot |bold(A)| = |bold(B A)|$，得证．

#prob[(3) 设 $bold(A) in PP^(m times n),sp bold(B) in PP^(n times m)$，则 $|bold(A B)| = |bold(B A)|$；]

错误；设 $bold(A) = display(mat(1,2)),sp bold(B) = display(mat(3;4))$，那么有 $bold(A B) = display(mat(11)),sp bold(B A) = display(mat(3, 6; 4, 8))$，显然 $|bold(A B)| = 11 != 0 = |bold(B A)|$．

#prob[(4) 对任意的三阶矩阵 $bold(A)$ 和任意一个数 $lambda$，都有 $(lambda bold(E_3)) bold(A) = bold(A) (lambda bold(E_3))$；]

正确；$(lambda bold(E_3)) bold(A) = lambda (bold(E_3 A)) = lambda bold(A) = lambda bold(A E_3) = bold(A) (lambda bold(E_3))$．

#prob[(5) 如果矩阵 $bold(A),sp bold(B),sp bold(C)$ 满足 $bold(A B) = bold(A C)$ 且 $bold(A) != bold(O)$，那么 $bold(B) = bold(C)$；]

错误；取 $bold(A) = display(mat(1,0;0,0)), bold(B) = display(mat(1;2)), bold(C) = display(mat(1;3))$．那么 $bold(A B) = display(mat(1;0)) = bold(A C)$，但 $bold(B) != bold(C)$．实际上，当 $bold(A)$ 为可逆矩阵时此命题成立．

#prob[(6) 如果对两个不同的数 $a,b$，矩阵 $bold(A)$ 满足 $a bold(A) = b bold(A)$，那么 $bold(A) = bold(O)$；]

正确；反证法，设 $bold(A)$ 不是零矩阵，则一定存在 $a_(i j) != 0$．根据 $a bold(A) = b bold(A)$，应有 $a dot a_(i j) = b dot a_(i j)$，显然矛盾．故 $bold(A) = bold(O)$．

#prob[(7) 设 $bold(A)$ 是一个方阵，$m,n$ 是两个正整数，则 $bold(A)^m bold(A)^n = bold(A)^n bold(A)^m$；]

正确；因为矩阵乘法满足结合律．

#prob[(8) 对角矩阵都是对称矩阵；]

正确；对角矩阵一定是方阵．那么对于 $1<=i,j<=n$：

- 当 $i=j$ 时，$a_(i,j) = a_(j,i)$ 是同一个数，显然成立；
- 当 $i!=j$ 时，$a_(i,j) = a_(j,i) = 0$，也成立．

所以原命题得证．

#prob[(9) 零矩阵都是对称矩阵；]

正确；设 $n,m in NN_+$ 且 $m!=n$，则对于 $O in PP^(m times n)$，有 $O^T in PP^(n times m)$，两者显然不相等．

#prob[(10) 若矩阵乘积 $bold(A B)$ 是方阵，则矩阵 $bold(A),bold(B)$ 也都是方阵．]

错误；设 $n,m in NN_+$ 且 $m!=n$，满足 $bold(A) in PP^(n times m)$ 且 $bold(B) in PP^(m times n)$，则 $bold(A B) in PP^(n times n)$ 为方阵而 $bold(A)$ 和 $bold(B)$ 均不是方阵．