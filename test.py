for i in range(1, 201):
    skip = False
    j = 2
    while j ** 2 <= i:
        if i % j == 0:
            skip = True
            break
        j += 1
    if not skip:
        print(i)