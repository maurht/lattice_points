clear all;
for k=0:300
    
    R=k;
    n=0;
    Rf=floor(R);
    
    for i=0:R
        for j=0:R
            m=sqrt(i^2+j^2);
            if m>R
                break
            endif
        n=n+1;
        endfor
    endfor
    P(k+1)= 4*n - 4*Rf -3;
endfor


s=0:k;
scatter(s,P), xlabel('R')
hold on
grid on
P_ar=floor(3.14159265*(s.^2));
scatter(s,P_ar)
P_pol=floor(2.2673-0.59545*s+3.1496*s.^2);
scatter(s,P_pol)

legend('P(R)','[\pi R^2]', '0.8303+0.53593*x+2.9913*x^2','Location','northwest')
xlabel('R')
