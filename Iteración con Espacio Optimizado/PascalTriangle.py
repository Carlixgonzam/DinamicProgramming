def generate(numRows: int)->list:
    resp= []
    for n in range(numRows):
        row= [1]*(n+1)
        for k in range(1, n):
            row[k]= resp[n-1][k-1] + resp[n-1][k]
        
        resp.append(row)
    return resp

numRows=5
print(generate(numRows))