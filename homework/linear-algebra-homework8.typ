#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Homework #8",
  authors: (
  (name: "Yulun Wu (#95)", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "November 13, 2023",
)

#let TT = math.upright("T")

= P101 习题四 1(2)
#prob[在线性空间 $PP^4$ 中，将向量 $beta=(0,2,0,-1)^TT$ 表示成向量组 $alpha_1=(1,1,1,1)^TT$，$alpha_2=(1,1,1,0)^TT$，$alpha_3=(1,1,0,0)^TT$，$alpha_4=(1,0,0,0)^TT$ 的线性组合：]

= P101 习题四 2
#prob[设 $bold(A) = display(mat(bold(alpha)_1, bold(alpha)_2, bold(alpha)_3))$ 为三阶矩阵，$bold(beta)$ 是一个三元向量。若 $bold(beta)=-bold(alpha)_1+2bold(alpha)_2-2bold(alpha)_3$，试给出线性方程组 $bold(A X)=bold(beta)$ 的一个解。]

= P101 习题四 3(3)
#prob[判断向量组的线性相关性：$bold(alpha)_1=(2,2,7,-1)^TT$，$bold(alpha)_2=(3,-1,2,4)^TT$，$bold(alpha)_3=(1,1,3,1)^TT$。]

= P101 习题四 6
#prob[设 $bold(alpha)_1=(1,1,-1,-1)^TT$，$bold(alpha)_2=(1,2,0,3)^TT in PP^4$，这里 $PP$ 是一个数域，求两个向量 $bold(alpha)_3,bold(alpha)_4 in PP^4$ 使得 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3,bold(alpha)_4$ 线性无关。]

取 $bold(alpha)_3 = (0,0,1,0)^TT,sp bold(alpha)_4 = (0,0,0,1)^TT$，下证明此时四个向量线性无关：

= P102 习题四 8
#prob[
  设 $alpha,beta$ 为三元列向量，矩阵 $bold(A) = bold(alpha alpha)^TT + bold(beta beta)^TT$，其中 $bold(alpha)^TT,bold(beta)^TT$ 分别是 $bold(alpha),bold(beta)$ 的转置，证明：

  (1) 秩 $r(bold(A)) <= 2$。
]

#prob[(2) 若 $bold(alpha),bold(beta)$ 线性相关，则秩 $r(bold(A))<2$。]

= P102 习题四 11
#prob[
  设 $bold(A) = display(mat(1,-1,-1;-1,1,1;0,-4,-2)),sp bold(xi)_1=display(mat(-1;1;-2))$。

  (1) 求满足 $bold(A xi)_2 = bold(xi)_1,sp bold(A)^2 bold(xi)_3 = bold(xi)_1$ 的所有向量 $bold(xi)_2,bold(xi_3)$。
]

#prob[(2) 对 (1) 中的任一向量 $bold(xi)_2,bold(xi)_3$，证明 $bold(xi)_1,bold(xi)_2,bold(xi)_3$ 线性无关。]

= P102 习题四 12
#prob[
  已知 $m$ 个向量 $bold(alpha)_1,bold(alpha)_2,dots.c,bold(alpha)_m$ 线性相关，但其中任意 $m-1$ 个向量都线性无关，证明：

  (1) 如果 $c_1 bold(alpha)_1 + c_2 bold(alpha)_2 + dot.c + c_m bold(alpha)_m = bold(theta)$，那么 $c_1,c_2,dots.c,c_m$ 或全为零或全不为零。
]

#prob[(2) 如果存在等式 $c_1 bold(alpha)_1 + c_2 bold(alpha)_2 + dot.c + c_m bold(alpha)_m = bold(theta)$ 及 $d_1 bold(alpha)_1 + d_2 bold(alpha)_2 + dot.c + d_m bold(alpha)_m = bold(theta)$ 且 $d_1 != 0$，那么 $display(c_1/d_1 = c_2/d_2 = dots.c = c_m/d_m)$。]

14,15，17，18，

习题7（P172）

2,4(2)(3),5,6,7,8，10，

