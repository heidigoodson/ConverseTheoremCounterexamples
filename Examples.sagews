︠b78a5d24-f50f-4749-9ca6-aa2374f2031fs︠
from sage.rings.algebraic_closure_finite_field import AlgebraicClosureFiniteField #This is needed for the algebraic closure command
attach('ConverseTheoremCounterexample.sage')
︡8e945989-60c7-472f-a922-0b038202779a︡{"done":true}
︠a5da1c1b-ceca-4a13-80c7-5ac027e177bbs︠
#Choice of parameters to test for counterexamples
ell = 3
q= 7

#setting up our fields
C=AlgebraicClosureFiniteField(GF(ell), 'y')
L.<w>=GF(q^2, modulus="primitive") #w is a generator of the multiplicative group

#Choice of primitive roots of unity
m=q^2-1 #size of mult group of the quadratic extension L
v_m=ell_adic_valuation(q^2-1) #ell-adic valuation of m
coprime_m=Integer((q^2-1)/(ell^v_m)) # part of m coprime to ell
nu=C.zeta(coprime_m)# our choice of mth root of unity

n=q-1 #size of mult group of F
v_n=ell_adic_valuation(q-1) #ell-adic valuation of n
coprime_n=Integer((q-1)/(ell^v_n)) #part of n coprime to ell
omega=C.zeta(coprime_n)# our choice of nth root of unity

psi=C.zeta(q) #primitive qth root of unity mod ell the character psi sends 1 to this root

###########################
#Testing for duplicate gamma factors
iscounterexample(q)
︡ca8e4409-2539-44d9-8fe8-aec12ada0b0e︡{"stdout":"Initial parameters: (ell, q, coprime_m, coprime_n) =  (3, 7, 16, 2)\n\nPowers of nu = [1, 2, 3, 4, 6, 9, 11]\nPowers of nu that potentially lead to duplicate gamma factors: "}︡{"stdout":" [6, 2]\n\nWe now compute their gamma factors:\nnu_power:"}︡{"stdout":" 6  has gamma factors:  [1, 1, 1]\nnu_power:"}︡{"stdout":" 2  has gamma factors:  [1, 1, 1]\n\nFor ell= 3 and q= 7  the duplicate gamma factors are the following:\n[(1, 1, 1)]\n"}︡{"done":true}
︠e7f71605-41b9-4434-881d-e96fce525191︠
#Choice of parameters to test for counterexamples
ell = 5
q= 11

#setting up our fields
C=AlgebraicClosureFiniteField(GF(ell), 'y')
L.<w>=GF(q^2, modulus="primitive") #w is a generator of the multiplicative group

#Choice of primitive roots of unity
m=q^2-1 #size of mult group of the quadratic extension L
v_m=ell_adic_valuation(q^2-1) #ell-adic valuation of m
coprime_m=Integer((q^2-1)/(ell^v_m)) # part of m coprime to ell
nu=C.zeta(coprime_m)# our choice of mth root of unity

n=q-1 #size of mult group of F
v_n=ell_adic_valuation(q-1) #ell-adic valuation of n
coprime_n=Integer((q-1)/(ell^v_n)) #part of n coprime to ell
omega=C.zeta(coprime_n)# our choice of nth root of unity

psi=C.zeta(q) #primitive qth root of unity mod ell the character psi sends 1 to this root

###########################
#Testing for duplicate gamma factors
iscounterexample(q)
︡8f0bc534-add4-4e04-97b9-0f468638fe4c︡{"stdout":"Initial parameters: (ell, q, coprime_m, coprime_n) =  (5, 11, 24, 2)\n\nPowers of nu = [1, 2, 3, 4, 5, 6, 8, 10, 13, 15, 17]\nPowers of nu that potentially lead to duplicate gamma factors: "}︡{"stdout":" [6, 2, 8, 4, 10]\n\nWe now compute their gamma factors:\nnu_power:"}︡{"stdout":" 6  has gamma factors:  [1, 1, 1]\nnu_power:"}︡{"stdout":" 2  has gamma factors:  [1, 1, 1]\nnu_power:"}︡{"stdout":" 8  has gamma factors:  [4, 4, 1]\nnu_power:"}︡{"stdout":" 4  has gamma factors:  [4, 4, 1]\nnu_power:"}︡{"stdout":" 10  has gamma factors:  [1, 1, 1]\n\nFor ell= 5 and q= 11  the duplicate gamma factors are the following:\n[(1, 1, 1), (4, 4, 1), (1, 1, 1)]\n"}︡{"done":true}
︠28245274-352b-4ffd-abf8-9e42f1e7326cs︠
#Choice of parameters to test for counterexamples
ell = 11
q= 23

#setting up our fields
C=AlgebraicClosureFiniteField(GF(ell), 'y')
L.<w>=GF(q^2, modulus="primitive") #w is a generator of the multiplicative group

#Choice of primitive roots of unity
m=q^2-1 #size of mult group of the quadratic extension L
v_m=ell_adic_valuation(q^2-1) #ell-adic valuation of m
coprime_m=Integer((q^2-1)/(ell^v_m)) # part of m coprime to ell
nu=C.zeta(coprime_m)# our choice of mth root of unity

n=q-1 #size of mult group of F
v_n=ell_adic_valuation(q-1) #ell-adic valuation of n
coprime_n=Integer((q-1)/(ell^v_n)) #part of n coprime to ell
omega=C.zeta(coprime_n)# our choice of nth root of unity

psi=C.zeta(q) #primitive qth root of unity mod ell the character psi sends 1 to this root

###########################
#Testing for duplicate gamma factors
iscounterexample(q)
︡4c7a0f05-51c5-490d-a145-33118f09411b︡{"stdout":"Initial parameters: (ell, q, coprime_m, coprime_n) =  (11, 23, 48, 2)\n\nPowers of nu = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 14, 16, 18, 20, 22, 25, 27, 29, 31, 33, 35]\nPowers of nu that potentially lead to duplicate gamma factors: "}︡{"stdout":" [6, 2, 8, 4, 10, 12, 14, 16, 18, 20, 22]\n\nWe now compute their gamma factors:\nnu_power:"}︡{"stdout":" 6  has gamma factors:  [1, 1, 1]\nnu_power:"}︡{"stdout":" 2  has gamma factors:  [1, 1, 1]\nnu_power:"}︡{"stdout":" 8  has gamma factors:  [10, 10, 1]\nnu_power:"}︡{"stdout":" 4  has gamma factors:  [10, 10, 1]\nnu_power:"}︡{"stdout":" 10  has gamma factors:  [1, 1, 1]\nnu_power:"}︡{"stdout":" 12  has gamma factors:  [10, 10, 1]\nnu_power:"}︡{"stdout":" 14  has gamma factors:  [1, 1, 1]\nnu_power:"}︡{"stdout":" 16  has gamma factors:  [10, 10, 1]\nnu_power:"}︡{"stdout":" 18  has gamma factors:  [1, 1, 1]\nnu_power:"}︡{"stdout":" 20  has gamma factors:  [10, 10, 1]\nnu_power:"}︡{"stdout":" 22  has gamma factors:  [1, 1, 1]\n\nFor ell= 11 and q= 23  the duplicate gamma factors are the following:\n[(1, 1, 1), (10, 10, 1), (1, 1, 1), (10, 10, 1), (1, 1, 1), (10, 10, 1), (1, 1, 1), (10, 10, 1), (1, 1, 1)]\n"}︡{"done":true}
︠85017e75-c25d-42d6-8f0f-006cf1bba136s︠
#Choice of parameters to test for counterexamples
#This pair is NOT a counterexample to the Converse Theorem
ell = 3
q= 11

#setting up our fields
C=AlgebraicClosureFiniteField(GF(ell), 'y')
L.<w>=GF(q^2, modulus="primitive") #w is a generator of the multiplicative group

#Choice of primitive roots of unity
m=q^2-1 #size of mult group of the quadratic extension L
v_m=ell_adic_valuation(q^2-1) #ell-adic valuation of m
coprime_m=Integer((q^2-1)/(ell^v_m)) # part of m coprime to ell
nu=C.zeta(coprime_m)# our choice of mth root of unity

n=q-1 #size of mult group of F
v_n=ell_adic_valuation(q-1) #ell-adic valuation of n
coprime_n=Integer((q-1)/(ell^v_n)) #part of n coprime to ell
omega=C.zeta(coprime_n)# our choice of nth root of unity

psi=C.zeta(q) #primitive qth root of unity mod ell the character psi sends 1 to this root

###########################
#Testing for duplicate gamma factors
iscounterexample(q)
︡d47e1dd2-1e6a-4559-a41f-157f30bbeca0︡{"stdout":"Initial parameters: (ell, q, coprime_m, coprime_n) =  (3, 11, 40, 10)\n\nPowers of nu = [1, 2, 3, 5, 6, 7, 9, 10, 13, 14, 17, 18, 21, 25, 29, 0, 4, 8, 12, 16, 20, 24, 28, 32, 36]\nPowers of nu that potentially lead to duplicate gamma factors: "}︡{"stdout":" [10, 5, 0, 25, 20]\n\nWe now compute their gamma factors:\nnu_power:"}︡{"stdout":" 10  has gamma factors:  [2, y20^19 + y20^18 + 2*y20^17 + y20^16 + y20^12 + y20^11 + 2*y20^9 + 2*y20^8 + 2*y20^6 + y20^5 + y20^4 + 2*y20^3 + y20^2 + y20, 2*y20^19 + y20^16 + y20^12 + y20^11 + y20^10 + y20^7 + y20^6 + y20^3 + y20 + 2, y20^18 + 2*y20^17 + 2*y20^15 + 2*y20^14 + y20^13 + y20^12 + 2*y20^11 + y20^9 + 2*y20^8 + y20^7 + y20^6 + 2*y20^5 + 2*y20^4 + 2*y20^3 + 2*y20^2 + 2*y20 + 2, 2*y20^19 + 2*y20^18 + 2*y20^17 + y20^16 + y20^10 + y20^9 + y20^8 + y20^6 + y20^5 + 2*y20^3 + 2*y20^2 + 2*y20, 2, y20^19 + y20^18 + 2*y20^17 + y20^16 + y20^12 + y20^11 + 2*y20^9 + 2*y20^8 + 2*y20^6 + y20^5 + y20^4 + 2*y20^3 + y20^2 + y20, 2*y20^19 + y20^16 + y20^12 + y20^11 + y20^10 + y20^7 + y20^6 + y20^3 + y20 + 2, y20^18 + 2*y20^17 + 2*y20^15 + 2*y20^14 + y20^13 + y20^12 + 2*y20^11 + y20^9 + 2*y20^8 + y20^7 + y20^6 + 2*y20^5 + 2*y20^4 + 2*y20^3 + 2*y20^2 + 2*y20 + 2, 2*y20^19 + 2*y20^18 + 2*y20^17 + y20^16 + y20^10 + y20^9 + y20^8 + y20^6 + y20^5 + 2*y20^3 + 2*y20^2 + 2*y20, 1]\nnu_power:"}︡{"stdout":" 5  has gamma factors:  [2, y20^19 + 2*y20^18 + 2*y20^17 + 2*y20^16 + 2*y20^15 + y20^14 + y20^13 + y20^12 + 2*y20^11 + 2*y20^10 + 2*y20^9 + 2*y20^8 + 2*y20^7 + y20^5 + y20^4 + y20^3 + y20^2 + 2*y20 + 2, y20^19 + 2*y20^18 + y20^17 + 2*y20^15 + y20^13 + y20^9 + 2*y20^6 + y20^4 + y20^2 + y20 + 2, y20^19 + 2*y20^18 + y20^16 + y20^15 + y20^14 + y20^11 + y20^9 + 2*y20^7 + y20^6 + 2*y20^5 + y20^4 + y20^3 + 2*y20, y20^19 + y20^18 + 2*y20^15 + 2*y20^12 + y20^11 + 2*y20^10 + y20^7 + y20^4 + y20^2 + 2, 1, y20^19 + 2*y20^18 + y20^16 + 2*y20^15 + 2*y20^12 + y20^11 + y20^10 + 2*y20^9 + y20^8 + y20^5 + y20^4 + y20^2 + y20 + 2, y20^17 + 2*y20^15 + 2*y20^14 + y20^11 + y20^10 + 2*y20^9 + y20^8 + 2*y20^7 + 2*y20^6 + 2*y20^5 + 2*y20^3 + y20 + 1, y20^19 + 2*y20^16 + 2*y20^15 + 2*y20^14 + 2*y20^11 + 2*y20^9 + 2*y20^7 + 2*y20^6 + y20^5 + 2*y20^4 + y20^3 + 2*y20^2 + y20 + 2, 2*y20^19 + y20^15 + 2*y20^14 + 2*y20^12 + y20^11 + 2*y20^10 + 2*y20^9 + y20^6 + 2*y20^3 + y20^2 + 2, 2]\nnu_power:"}︡{"stdout":" 0  has gamma factors:  [1, 2*y20^19 + 2*y20^17 + 2*y20^15 + 2*y20^14 + 2*y20^12 + 2*y20^11 + 2*y20^10 + 2*y20^8 + y20^7 + 2*y20^6 + y20^3 + y20 + 1, y20^18 + y20^17 + 2*y20^16 + 2*y20^15 + y20^14 + 2*y20^13 + 2*y20^12 + y20^11 + y20^10 + 2*y20^8 + y20^6 + y20^5 + 2*y20^4 + 2*y20^2 + 1, 2*y20^18 + 2*y20^17 + 2*y20^16 + 2*y20^15 + 2*y20^14 + 2*y20^13 + y20^12 + 2*y20^11 + 2*y20^8 + 2*y20^4 + 2*y20^3 + y20^2 + 2*y20 + 1, y20^19 + y20^17 + 2*y20^16 + y20^14 + 2*y20^12 + y20^11 + y20^10 + 2*y20^8 + 2*y20^7 + y20^6 + 2*y20^5 + 2*y20^4 + 2*y20^3 + 2*y20^2 + y20 + 2, 1, y20^18 + 2*y20^17 + 2*y20^16 + 2*y20^15 + 2*y20^14 + 2*y20^13 + 2*y20^12 + 2*y20^11 + y20^8 + y20^7 + y20^6 + 2*y20 + 2, y20^19 + y20^18 + 2*y20^17 + y20^14 + 2*y20^13 + 2*y20^12 + 2*y20^9 + 2*y20^7 + y20^6 + y20^5 + 2*y20^4 + y20^3 + 2*y20^2 + y20 + 2, y20^19 + y20^17 + y20^15 + y20^14 + 2*y20^13 + 2*y20^12 + y20^11 + 2*y20^9 + y20^8 + y20^7 + 2*y20^6 + y20^5 + y20^4 + 2*y20^3 + 2*y20^2 + y20 + 2, y20^19 + 2*y20^18 + 2*y20^17 + y20^15 + 2*y20^13 + y20^12 + y20^7 + y20^6 + 2*y20^5 + y20^2 + 2*y20, 1]\nnu_power:"}︡{"stdout":" 25  has gamma factors:  [1, y20^19 + 2*y20^18 + y20^16 + 2*y20^15 + 2*y20^12 + y20^11 + y20^10 + 2*y20^9 + y20^8 + y20^5 + y20^4 + y20^2 + y20 + 2, y20^17 + 2*y20^15 + 2*y20^14 + y20^11 + y20^10 + 2*y20^9 + y20^8 + 2*y20^7 + 2*y20^6 + 2*y20^5 + 2*y20^3 + y20 + 1, y20^19 + 2*y20^16 + 2*y20^15 + 2*y20^14 + 2*y20^11 + 2*y20^9 + 2*y20^7 + 2*y20^6 + y20^5 + 2*y20^4 + y20^3 + 2*y20^2 + y20 + 2, 2*y20^19 + y20^15 + 2*y20^14 + 2*y20^12 + y20^11 + 2*y20^10 + 2*y20^9 + y20^6 + 2*y20^3 + y20^2 + 2, 2, y20^19 + 2*y20^18 + 2*y20^17 + 2*y20^16 + 2*y20^15 + y20^14 + y20^13 + y20^12 + 2*y20^11 + 2*y20^10 + 2*y20^9 + 2*y20^8 + 2*y20^7 + y20^5 + y20^4 + y20^3 + y20^2 + 2*y20 + 2, y20^19 + 2*y20^18 + y20^17 + 2*y20^15 + y20^13 + y20^9 + 2*y20^6 + y20^4 + y20^2 + y20 + 2, y20^19 + 2*y20^18 + y20^16 + y20^15 + y20^14 + y20^11 + y20^9 + 2*y20^7 + y20^6 + 2*y20^5 + y20^4 + y20^3 + 2*y20, y20^19 + y20^18 + 2*y20^15 + 2*y20^12 + y20^11 + 2*y20^10 + y20^7 + y20^4 + y20^2 + 2, 2]\nnu_power:"}︡{"stdout":" 20  has gamma factors:  [1, y20^18 + 2*y20^17 + 2*y20^16 + 2*y20^15 + 2*y20^14 + 2*y20^13 + 2*y20^12 + 2*y20^11 + y20^8 + y20^7 + y20^6 + 2*y20 + 2, y20^19 + y20^18 + 2*y20^17 + y20^14 + 2*y20^13 + 2*y20^12 + 2*y20^9 + 2*y20^7 + y20^6 + y20^5 + 2*y20^4 + y20^3 + 2*y20^2 + y20 + 2, y20^19 + y20^17 + y20^15 + y20^14 + 2*y20^13 + 2*y20^12 + y20^11 + 2*y20^9 + y20^8 + y20^7 + 2*y20^6 + y20^5 + y20^4 + 2*y20^3 + 2*y20^2 + y20 + 2, y20^19 + 2*y20^18 + 2*y20^17 + y20^15 + 2*y20^13 + y20^12 + y20^7 + y20^6 + 2*y20^5 + y20^2 + 2*y20, 1, 2*y20^19 + 2*y20^17 + 2*y20^15 + 2*y20^14 + 2*y20^12 + 2*y20^11 + 2*y20^10 + 2*y20^8 + y20^7 + 2*y20^6 + y20^3 + y20 + 1, y20^18 + y20^17 + 2*y20^16 + 2*y20^15 + y20^14 + 2*y20^13 + 2*y20^12 + y20^11 + y20^10 + 2*y20^8 + y20^6 + y20^5 + 2*y20^4 + 2*y20^2 + 1, 2*y20^18 + 2*y20^17 + 2*y20^16 + 2*y20^15 + 2*y20^14 + 2*y20^13 + y20^12 + 2*y20^11 + 2*y20^8 + 2*y20^4 + 2*y20^3 + y20^2 + 2*y20 + 1, y20^19 + y20^17 + 2*y20^16 + y20^14 + 2*y20^12 + y20^11 + y20^10 + 2*y20^8 + 2*y20^7 + y20^6 + 2*y20^5 + 2*y20^4 + 2*y20^3 + 2*y20^2 + y20 + 2, 1]\n"}︡{"stdout":"\nFor ell= 3 and q= 11  the duplicate gamma factors are the following:\n[]\n"}︡{"done":true}
︠c00c4b45-98fc-4af7-a3ab-fa96be03c03c︠









