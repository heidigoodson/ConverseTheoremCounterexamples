"""
This file stores the functions we are using when we compute counterexamples to the Converse Theorem.
The algorithms are based on [1] J. Bakeberg, M. Gerbelli-Gauthier, H. Goodson, A. Iyengar, G. Moss, R. Zhang "Mod ell gamma factors and a converse theorem for finite general linear groups"

When using this code in your research, please cite as:
"the software of [1], where [1] is as above."

This package contains the following functions:

- gammafactor
- gammafactorarray
- iscounterexample

"""


##########################################################################
#
# Utility Functions
#

#Creates a character of order q.
def char(C,q,a):
    return C.zeta(q)^(a)

#Finds the ell-adic valuation of base
def ell_adic_valuation(base):
    v_ell = QQ.valuation(ell)
    return v_ell(base)

def find_duplicates(dictionary):
    seen = set()
    duplicates = [x for x in [tuple(y[1]) for y in dictionary.items()] if x in seen or seen.add(x)]
    return duplicates

def print_dictionary(dictionary):
    for key, value in dictionary.items(): #the key is the nu_power, the value is the list of gamma factors
        print(key, " : ", value)
    return 0

##########################################################################

#Main functions needed to identify counterexamples


#Construct the gamma factor for a single cuspidal and a single character of F_q*
# nu_power should be the exponent of the root of unity of order the prime-to-ell part of |F_{q^2}|
# omega_power determines omega -- really this computes the gamma factor for the character omega^{1-}
def gammafactor(q,nu_power,omega_power):
    nuchar=nu^nu_power #sends a generator w of the units in L to this power of nu
    omegachar=omega^omega_power #sends a generator w^{q+1} of the units in F to this power of omega
    ordernu=Integer(coprime_m/gcd(coprime_m,nu_power)) #order of the root of unity that the generator maps to under nu
    orderomega=Integer(coprime_n/gcd(coprime_n,omega_power)) #order of the root of unity that the generator maps to under nu
    f=nu^(Integer(m/2)) #this is the constant nu(-1)
    gf=f * sum((nuchar^(mod(k,ordernu)))*(omegachar^(mod(k,orderomega)))*(psi^(Integer(w^k+w^(q*k)))) for k in [0..m-1])
    return gf

def gammafactorarray(q): #returns an array of gamma factors. One row for each cuspidal, one column for each character of F_q*
    #Filtering for decomposable characters & representatives of conjugate pairs of non-decomposable characters
    nonDecompChars = [a for a in range(coprime_m) if (a % coprime_m) != (q*a % coprime_m)] #the non-decomposable characters
    decompChars1 = [a for a in range(coprime_m) if (a % coprime_m) == (q*a % coprime_m)] # the decomposable characters
    decompChars = [a for a in decompChars1 if ell_adic_valuation(q+1) > 0] # only includes the decomposable characters if they actually give rise to cuspidals
    nonConjChars = []
    conjPairs = [[a, q*a % coprime_m] for a in nonDecompChars] # a list of pairs, each of which is a non-decomposable character and its conjugate
    for p in conjPairs: #a conjugate pair of non-decomposable characters yield equivalent cuspidals, therefore select one character from each pair
        if p[1] < p[0]:
            nonConjChars.append(p[1])
    nonConjChars.sort()
    powers_of_nu = nonConjChars + decompChars
    print ('Powers of nu =', powers_of_nu)
    potential_duplicates = [] #create a sublist of powers of nu where the gamma factor evaluated at the first character are equal
    omega_0 = [] #this is a list of gamma factors against the trivial character
    for a in powers_of_nu:
        g = gammafactor(q,a,0)
        if g in omega_0: #this runs only if the gamma factor already appears in the list
            b = powers_of_nu[omega_0.index(g)] #if it does, we extract the first power of nu on the list to which it corresponds
            if a not in potential_duplicates:
                potential_duplicates.append(a)
            if b not in potential_duplicates:
                potential_duplicates.append(b) #if b is not already in the potential duplicate list, we also add it to the list
        omega_0.append(g) #then we append g, whether or not it was a duplicate, just so we can keep a bijection between powers_of_nu and omega_0.
    print ("Powers of nu that potentially lead to duplicate gamma factors: ",potential_duplicates)
    print("")
    #Computing the array of gamma factors
    print("We now compute their gamma factors:")
    array = {}     #one row for each cuspidal, one column for each mod-ell character of F_q*
    for nu_power in potential_duplicates:
        row=[gammafactor(q,nu_power,omega_power) for omega_power in range(coprime_n)] #gives the list of gamma factors
        row.append(C.zeta(coprime_m)^(nu_power*(q+1)))
        print ("nu_power:", nu_power, " has gamma factors: ", row) #optional row-by-row print statement
        array[nu_power] = tuple(row) #this means that the rows in the array are indexed by the powers of nu in possible_duplicates
    return(array)

def iscounterexample(q):
    print ("Initial parameters: (ell, q, coprime_m, coprime_n) = ", (ell, q, coprime_m, coprime_n)) #optional print statement
    print("")
    gammafactors = gammafactorarray(q) #makes the array of gamma factors whose first entry is a potential duplicate
    duplicates = find_duplicates(gammafactors)
    print("")
    print("For ell=",ell,"and q=",q," the duplicate gamma factors are the following:")
    print(duplicates)
