n = read("input.txt");



\\ on écrit n-1=2^val.m avec m impair à l'aide de la fonction de valuation
val=valuation(n-1,2);
m=(n-1)/(2^val);

\\ Comme il a été vu en cours que les petits nombres premiers échouent souvent
\\ au test avec 2 pour témoin, on teste cette valeur.
a=2;
b=Mod(a,n)^(2*m);
\\ on a b = a^(2m) [n]
p=gcd(n,lift(b-1));
q=n/p;
\\ on affiche le plus petit des deux diviseurs de n
if(!(isprime(p) && isprime(q)),print("erreur de factorisation."));
print(min(p,q));

