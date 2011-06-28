import geometry; size(10cm,0);
currentcoordsys=rotate(20)*defaultcoordsys;
point C=(1,1); dot(C);
ellipse el=ellipse(C,2,1); draw(el, grey);
arc AE=arc(el, 45, 180, fromCenter); draw(AE, linewidth(bp), Arrow(3mm));
draw(scale(0.5,C)*AE, bp+0.8red, Arrow(3mm));
draw(scale(-0.5,C)*AE, bp+0.8blue,Arrow(3mm));
draw(scale(1.1,C)*AE, bp+0.8*yellow, Arrow(3mm));
transform t=scale(-0.5,line(el.F1,el.F2), line(S,N));
draw(t*AE, bp+0.8(red+blue), Arrow(3mm));