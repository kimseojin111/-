import math
PRIMES = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103]
n = len(PRIMES)+1
M = matrix(QQ,n,n)
N = 1000000000000000000000000
N1 = 10000000000
for i in range(n):
    M[i,i]=1

for i in range(7):
    M[i,i] = N1
    
for i in range(n-1):
    M[i,n-1] = math.floor(N*PRIMES[i].sqrt())
M[n-1,n-1] = math.floor(N*1350995397927355657956786955603012410260017344805998076702828160316695004588429433/16**64)
M[n-1,0] = ord('c')*N1-1/2
M[n-1,1] = ord('r')*N1
M[n-1,2] = ord('y')*N1
M[n-1,3] = ord('p')*N1
M[n-1,4] = ord('t')*N1
M[n-1,5] = ord('o')*N1
M[n-1,6] = ord('{')*N1
print(M)
print("\n\n")
M = M.LLL()
print(M)
