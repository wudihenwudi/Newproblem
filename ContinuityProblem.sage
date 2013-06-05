Newproblem
==========
import random
def gen_points(n, d, mu, sigma):
    points = []
    for i in range(0, n-1):
        p = [0] * d
        for j in range(0, d):
            p[j] = random.normalvariate(mu, sigma)
        points.append(p)
    return points
pointlist = gen_points(100,3,0,4)
def gen_list(points):
    valuelist = []
    for i in range(0,len(points)-1):
        p = pointlist[i]
        temp = p[0] + p[1] + p[2]
        if (temp < 0):
            temp = 10
        valuelist.append(temp)
    return valuelist
valuelist = gen_list(pointlist)
def median(values):
    values.sort()
    if(len(values)%2 == 0):
        median = (values[len(values)/2-1] + values[len(values)/2])/2
    else:
        median = (values[len(values)/2])
    return median
median = median(valuelist)
print median
