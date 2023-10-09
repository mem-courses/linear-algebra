#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
	title: "线性代数 第三周 附加题",
	authors: (
		(name: "memset0", email: "memset0@outlook.com", phone: ""),
	),
	date: "October 9, 2023",
)

= 附加题1

#prob[
	#set math.mat(delim: "(")
	$
	bold(A)&=(a_(i j))_(n times n)\
	bold(B)&=mat(
		a_11,a_12b^(-1),a_13b^(-2),dots.c,a_(1n)b^(1-n);
		a_21b,a_22,a_23b^(-1),dots.c,a_(2n)b^(2-n);
		dots.v,dots.v,dots.v,,dots.v;
		a_(n 1)b^(n-1),a_(n 2)b^(n-2),a_(n 3)b^(n-3),dots.c,a_(n n);
	) quad (b!=0)\
	$
	已知 $|bold(A)|=t$，求 $|bold(B)|$．
]

= 附加题2

#set math.mat(delim: "|")
#prob[
	计算：$
		D_n = mat(
			1,1,1,dots.c,1,1,1;
			0,0,0,dots.c,0,2,1;
			0,0,0,dots.c,3,0,1;
			dots.v,dots.v,dots.v,,dots.v,dots.v,dots.v;
			0,n-1,0,dots.c,0,0,1;
			n,0,0,dots.c,0,0,1;
		)
	$
]

= 附加题3

#prob[
	计算：$
		D_n = mat(
			a_1+b_1,a_2,dots.c,a_n;
			a_1,a_2+b_2,dots.c,a_n;
			dots.v,dots.v,,dots.v;
			a_1,a_2,dots.c,a_n+b_n;
		)
	$
]

= 附加题4

#prob[
	计算：$
		D_n = mat(
			1,2,3,dots.c,n-1,n;
			2,3,4,dots.c,n,1;
			3,4,5,dots.c,1,2;
			dots.v,dots.v,dots.v,,dots.v,dots.v;
			n-1,n,1,dots.c,n-3,n-2;
			n,1,2,dots.c,n-2,n-1;
		)
	$
]

= 附加题5

#prob[
	将 $n$ 阶矩阵 $bold(D)$ 的每个元素减去其同行其余元素之和，得到 $bold(D_1)$，若 $|bold(D)|=t$，求 $|bold(D_1)|$．
]