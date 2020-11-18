# Excercise 1
'''
begin
    sum([1,2,3])
    import Statistics
    println(Statistics.mean([1,2,3]))
end
'''
# 对向量 [1,2,3] 求和、调用Statistic对其求均值

'''
using GLM, DataFrames
'''
# using 或许应该...类似 import

'''
StatsModels.TableRegressionModel{
                                LinearModel{
                                    GLM.LmResp{Array{Float64,1}},
                                    GLM.DensePredChol{Float64,LinearAlgebra.Cholesky{Float64,Array{Float64,2}}}},
                                Array{Float64,2}
                                }
'''
# 回归模型，包括LinearModel{}和Array{}两项参数

'''
begin
    x = [3,6,9,12,15]
    y = [4,7,10,13,16]

    test_data = DataFrames.DataFrame(x = x, y = y);
    GLM.lm(@formula(y ~ x), test_data)
end
'''
# 对五个数据点 (x,y) 进行线性模型拟合

# Exercise 2
'''
任务1: 按照统计公式求数组 [1,3,9,12,15,20] 的标准差和方差
'''
# 定义求标准差函数SD、求方差函数SS
# 数据初始化，令a = [1,3,9,12,15,20]
# standard_deviation <= SD(a)
# square_sum <= SS(a)

'''
任务2: 请让计算机找出一个整数，它加上100和加上268后都是一个完全平方数
'''
# 标志变量初始化 mark = True、i = 0
# 定义判断完全平方数的函数f：是返回1；不是返回0
# while + 标志变量mark 循环结构：
#     if 判断语句 f(i+100) == 1 and f(i+268) == 1:
#         mark == False
#     end
    