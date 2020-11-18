# Part1  如何实现列表实例化(using R language)

# Method 1  列表函数
me_1 <- list("Isak",
             "21",
             matrix(c(1999, 8, 28), nrow = 1),
             "Hubei province",
             list("Taylor", "Rose", "Adele"))
names(me_1) <- c("name", "age", "birthday", "hometown", "favourite_musicians")
print(me_1)

# Method 2  创建一个空列表，然后通过逐个访问列表中的元素来添加列表内容
me_2 <- list()
me_2[["name"]] <- "Isak"
me_2[["age"]] <- "21"
me_2[["birthday"]] <- matrix(c(1999, 8, 28), nrow = 1)
me_2[["hometown"]] <- "Hubei province"
me_2[["favourite_musicians"]] <- list("Taylor", "Rose", "Adele")
print(me_2)

# Part2  如何实现列表元素的增删改查
# 增加列表元素---注：这种方式实质上是在列表后继续增加元素
me_1$tutor <- "Wang Ling"
me_2["tutor"] <- "Wang Ling"

# 删除并替换（更新/修改）列表元素
me_1$name <- NULL
me_1$name <- "Isak Gideon"  # 这种删除后更改元素的方式会使得原本在列表中第一个的元素被补充在列表的最后

me_2$name <- "Isak Gideon"  # 直接对列表中的元素进行修改，不会改变元素所在位置（索引值不变）

# 查询（访问）列表元素
print(me_1[[1]])  # 按索引访问
print(me_2$age)  # 元素名称访问

print(me_2[[5]][1])  # 对列表中的列表元素访问
