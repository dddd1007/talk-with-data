### A Pluto.jl notebook ###
# v0.12.4

using Markdown
using InteractiveUtils

# ╔═╡ 7c094ad8-1852-11eb-3012-9592e722ea67
using GLM, DataFrames

# ╔═╡ 918c488a-183c-11eb-2ba7-f70bb291887e
md"# 第一课: 科学计算编程和统计的基本问题"

# ╔═╡ 6541116a-183d-11eb-16da-d34c787cd774
md"## Outline"

# ╔═╡ 7644567a-183d-11eb-2dd3-915e6f4faa3d
html"<ul>
<li>科学计算编程和统计都是与数据交互的方法

<ul>
<li>编程是操纵数据的工具

<ul>
<li>编程的核心概念是抽象，或封装</li>
<li>抽象是指描述事情的方法，基本的构成包括对象和行为</li>
<li>编程语言的抽象方法被称为范式，包括函数式，面向对象式，命令式等</li>
</ul></li>
</ul></li>
<li><p>统计是从数据中获取信息的工具</p></li>
<li>问题先于工具，先搞清楚问题，再选择合适的工具

<ul>
<li>学习编程语言的方法

<ul>
<li>理解范式</li>
<li>掌握查询方法</li>
<li>理解基本语法</li>
<li>理解语言特性</li>
</ul></li>
<li>学习统计的方法

<ul>
<li>理解数据</li>
<li>提出问题</li>
<li>找到合适的工具</li>
</ul></li>
</ul></li>
<li>为什么要学编程

<ul>
<li>可以直接与数据交互</li>
</ul></li>
</ul>
"

# ╔═╡ dd5f6162-184d-11eb-0d37-255951c24199
md"## Exercise"

# ╔═╡ ebf4e1ae-184d-11eb-19e6-69cc8346ae96
md"### 练习 1

请按照自己的理解 (猜想) 将下列代码的含义用自然语言描述出来"

# ╔═╡ 0c040ccc-184e-11eb-0687-61062ca8ba0f
begin
	sum([1,2,3])
	
	import Statistics
	println(Statistics.mean([1,2,3]))
end

# ╔═╡ 51678558-184e-11eb-324a-3f9796accd45
begin
	x = [3,6,9,12,15]
	y = [4,7,10,13,16]
	
	test_data = DataFrames.DataFrame(x = x, y = y);
	GLM.lm(@formula(y ~ x), test_data)
end

# ╔═╡ cf391fcc-184e-11eb-0cec-7576ab2de117
md"### 练习2

请按照自己的理解将下列任务写成中文伪代码

无标准答案, 请随意编写"

# ╔═╡ d5bf7cd2-1852-11eb-2fe9-0fdef704000c
md"**任务1**: 按照统计公式求数组 [1,3,9,12,15,20] 的标准差和方差"

# ╔═╡ 38ff0740-1853-11eb-0eb7-3d6e782c97de
md"**任务2**: 请让计算机找出一个整数，它加上100和加上268后都是一个完全平方数"

# ╔═╡ Cell order:
# ╟─918c488a-183c-11eb-2ba7-f70bb291887e
# ╟─6541116a-183d-11eb-16da-d34c787cd774
# ╟─7644567a-183d-11eb-2dd3-915e6f4faa3d
# ╟─dd5f6162-184d-11eb-0d37-255951c24199
# ╟─ebf4e1ae-184d-11eb-19e6-69cc8346ae96
# ╠═0c040ccc-184e-11eb-0687-61062ca8ba0f
# ╠═7c094ad8-1852-11eb-3012-9592e722ea67
# ╠═51678558-184e-11eb-324a-3f9796accd45
# ╟─cf391fcc-184e-11eb-0cec-7576ab2de117
# ╟─d5bf7cd2-1852-11eb-2fe9-0fdef704000c
# ╟─38ff0740-1853-11eb-0eb7-3d6e782c97de
