#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra Quiz #3",
  authors: (
  (name: "memset0", email: "memset0@outlook.com", phone: ""),
  ),
  date: "December 18, 2023",
)

#note[2023-2024 学年秋冬学期周一第九节小测（汤数元班）试题回忆版．]

#let alpha = math.bold(math.alpha)
#let beta = math.bold(math.beta)

= T1

#prob[求基 $alpha_1,1/2alpha_2,1/3alpha_3$ 到基 $alpha_1+alpha_2,alpha_2+alpha_3,alpha_3+alpha_1$ 的过渡矩阵．]

= T2

#prob[在线性空间 $PP[x]_n$ 中，令 $f_i = (x - a_1)(x - a_2) dots.c (x-a_(i-1)) (x-a_(i+1)) dots.c (x-a_n) sp (i=1,2,dots.c,n)$，其中 $a_i$ 两两不同．证明 $seqn(f,n)$ 是线性空间的一组基．]

= T3

#prob[
	在线性空间 $PP^n$ 中，向量组 $seqn(alpha,s)$ 可被 $seqn(beta,t)$ 线性表示，且 $seqn(alpha,s)$ 线性无关．求证 $s<=t$．
]

= T4

#prob[
	设二阶对称矩阵构成 $PP^(2 times 2)$ 的一个子空间 $W$，给定：
	$
	bold(A)_1 = mat(1,-2;-2,1) quad 
	bold(A)_2 = mat(2,1;1,3) quad
	bold(A)_3 = mat(-4,1;1,-5) quad
	$
	求证 $bold(A)_1,bold(A)_2,bold(A)_3$ 是 $W$ 的一组基．并对其正交化．

	#warn[具体系数可能有误．]
]

= T5

#prob[在 $n$ 维线性空间中，$seqn(alpha,n-1)$ 是一组线性无关的向量组，且与向量 $beta_1,beta_2$ 正交．求证：$beta_1,beta_2$ 线性相关．]