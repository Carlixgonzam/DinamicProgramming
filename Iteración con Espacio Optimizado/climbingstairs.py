def climbingSatris(n):
    if n==0 or n==1:
        return 1
    p, c = 1,1
    for i in range(2, n+1):
        te= c
        c= p+c
        p= te
    return c