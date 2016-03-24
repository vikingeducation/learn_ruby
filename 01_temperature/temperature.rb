def ftoc (fdegree)
    cdegree = (fdegree-32)*5/9
    return cdegree
end

def ctof (cdegree)
    cdegree = cdegree.to_f
    fdegree = (cdegree*9/5)+32.0
    return fdegree
end