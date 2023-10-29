#import "../template.typ": *

#show: project.with(
  title: "Linear Algebra\nBonus Problems #1 (Cp. 1~2)",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "October 29, 2023",
)

= #ac

#prob[
	#set math.mat(delim: "|")
	解行列式：$ D_n = mat(
		0,a_1+a_2,a_1+a_3,dots.c,a_1+a_n;
		a_2+a_1,0,a_2+a_3,dots.c,a_2+a_n;
		a_3+a_1,a_3+a_2,0,dots.c,a_3+a_n;
		dots.v,dots.v,dots.v,,dots.v;
		a_n+a_1,a_n+a_2,a_n+a_3,dots.c,0
	) $
]