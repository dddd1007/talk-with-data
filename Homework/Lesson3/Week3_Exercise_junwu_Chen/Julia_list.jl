# Part1 如何实现列表实例化（using Julia）

# 数组是元素的有序集合。它通常用方括号和逗号分隔的项表示。可以创建已满或为空的数组，以及保存不同类型的值或仅限于特定类型的值的数组
# 数组被用作列表、向量、表和矩阵；一维数组充当矢量或列表；二维数组可以用作表或矩阵；三维数组和多维数组同样被看作是多维矩阵

# 直接定义数组
array_1 = Int64[1, 2, 3]  # 逗号分隔，空格分隔用于创建二维数组（或称行向量）
print(array_1)

# 创建未初始化的一维数组（vector/list），再对数组中的各个元素进行定义
array_2 = Array{Int64}(undef, 3)  # 该数组中的元素是随机数，表明未初始化
array_2[1] = 1;
array_2[2] = 2; 
array_2[3] = 3; 
print(array_2)

# 创建一个空数组（0-element array），再向数组中“加入元素”的方法在julia中行不通
# array_3 = Int64[] 
# array_3[1] = 1
# array_3[2] = 2
# array_3[3] = 3
# print(array_3) 

# 生成器表达式
array_3 = [i+j for i in 1:3 for j in 1:3]
print(array_3)

# Comprehensions
array_4 = [ array_2[i]^2 for i=1:length(array_2) ]
print(array_4)

# Part2  如何实现列表元素的增删改查
# 索引
print(array_1[1])

# 增加和删除元素---blank

# 替换元素
for i in 1:length(array_4)
    array_4[i] = array_4[i]^2
end
print(array_4)
