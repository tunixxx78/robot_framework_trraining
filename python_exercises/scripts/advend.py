
result = 0

fp = open("input_data.txt", "r")
outcome = fp.read()
result_list = outcome.split('\n')

for i in result_list:
    sum = ""
    for j in i:        
        if j.isnumeric():
            sum += str(j)
            break
    index = -1
    while True:
        if i[index].isnumeric():
            sum += str(i[index])
            break
        else:
            index -= 1
    result += int(sum)
    sum = 0
    index = -1

print(result)