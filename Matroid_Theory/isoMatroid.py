import pprint
import itertools
import copy

def generateI(E):
    powE = []
    setOfIs = []
    for i in range(1, len(E) + 1):
        powE.extend([frozenset(t) for t in itertools.combinations(E, i)])
    for i in range(len(powE) + 1):
        setOfIs.extend([set(t) for t in itertools.combinations(powE, i)])
    return setOfIs

def checkI2(I):
    for subsetE in I:
        for i in range(1, len(subsetE) + 1):
            for subsetSubsetE in itertools.combinations(subsetE, i):
                if not set(subsetSubsetE) in I:
                    return False
    return True

def checkI3(I):
    for X, Y in itertools.combinations(I, 2):
        if len(X) == len(Y) + 1:
            flag = False
            for x in X - Y:
                if Y | {x} in I:
                    flag = True
                    break
            if not flag:
                return False
        if len(Y) == len(X) + 1:
            flag = False
            for y in Y - X:
                if X | {y} in I:
                    flag = True
                    break
            if not flag:
                return False
    return True

def getAllIs(E):
    allIs = set([])
    setOfIs = generateI(E)
    for I in setOfIs:
        if checkI2(I) and checkI3(I):
            allIs.add(frozenset(I))
    return allIs

def getAllNonIsoIs(E):
    E = list(E)
    perms = []
    for t in itertools.permutations(E):
        perm = {}
        for i, e in enumerate(E):
            perm[e] = t[i]
        perms.append(perm)
    allIs = getAllIs(E)
    allIsCopy = copy.copy(allIs)
    allNonIsoIs = set({})
    for I in allIs:
        if I in allIsCopy:
            allNonIsoIs.add(I)
            for perm in perms:
                J = set([])
                for X in I:
                    J.add(frozenset({perm[e] for e in X}))
                allIsCopy.discard(frozenset(J))
    return allNonIsoIs

def printAllNonIsoIs(E):
    allNonIsoIs = getAllNonIsoIs(E)
    print("non-isomorphic matroids on \{", end="")
    for i in range(len(E)-1):
        print(str(E[i]) + ", ", end="")
        print(str(E[i+1]) + "\}  ")
    n = 0
    for I in allNonIsoIs:
        n = n + 1
        if len(I) == 0:
            print("$I_{" + str(n) + "} = \{\emptyset", end="")
        else:
            print("$I_{" + str(n) + "} = \{\emptyset, ", end="")
        nI = 0
        for X in I:
            nI = nI + 1
            print("\{", end="")
            nX = 0
            for e in X:
                nX = nX + 1
                if nX != len(X):
                    print(str(e) + ", ", end="")
                elif nI != len(I):
                    print(str(e) + "\}, ", end="")
                else:
                    print(str(e) + "\}", end="")

        print("\}$  ")

printAllNonIsoIs([1,2,3,4])
