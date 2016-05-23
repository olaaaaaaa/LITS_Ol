def fib(num)
# first 5 in the sequence 0,1,1,2,3
fib1 = 1 #3
fib2 = 2 #4
i = 5 #start at 5 or 4 depending on wheather you want to include 0 as the first number
while i <= num
    temp = fib2
    fib2 = fib2 + fib1
    fib1 = temp
    i += 1
end
p fib2
end
fib(50000)