#zad 1
wynagrodzenie = c(7.41,3.47,7.22,6.65,6.79,3.48,7.66,4.9,3.38,3.92,3.5,6.81)
wynagrodzenie

hist(wynagrodzenie, main = "Histogram liczebnosci wynagrodzenia", col="green")
rug(jitter(wynagrodzenie, factor = 2), side=1, ticksize=0.05, col="red")

#zad2
Q1=quantile(wynagrodzenie, probs = 0.25, type=6)
Me=quantile(wynagrodzenie, probs = 0.5, type=6)
Q3=quantile(wynagrodzenie, probs = 0.75, type=6)
R=max(wynagrodzenie)-min(wynagrodzenie)
Q=0.5*(Q3-Q1)

#zad3

VodQ=(Q/Me)*100
AodQ=(Q3-2*Me+Q)/(Q3-Q1)

#zad4
plot(1:5, axes=FALSE, xaxt='n',type='n', ann=FALSE)
axis(1, c(1:5), c('Min','Q1','Me','Q3', 'Max'))
text(1.05,1.5,min(wynagrodzenie))
text(2,1.5,Q1)
text(3,1.5,Me)
text(4,1.5,Q3)
text(4.9,1.5,max(wynagrodzenie))