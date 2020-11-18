# Part1  如何实现列表实例化(using Python)
singer = ['Qingfeng Wu', 'Taylor Swift', 'Troye Sivan', 'Adele', 'Lady GaGa', 'Tiffany Young', 'Rose']
random_num = list(range(1, 3))

# Part2  如何实现列表元素的增删改查
#  增加元素
singer.append('Conan Grey')
singer.insert(0, 'Ariana Grande')
print(singer)

#  删除元素
del random_num[0]
print(random_num)

poped_singer = singer.pop(-1)
print(singer)
print(poped_singer)

# 索引列表中的元素
print(singer[0])
print(singer[-1])
