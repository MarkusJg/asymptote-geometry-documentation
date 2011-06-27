import geometry;
size(9.5cm,0); usepackage("mathrsfs"); currentpen=fontsize(8); pen bpp=linewidth(bp);
circle C1=circle((point)(0,0),2), C2=circle((point)(5,5), 3), C3=circle((point)(6,-2),1);
draw(Label("$\mathscr{C}_1$",Relative(0.375)), C1, bp+0.8*red);
draw("$\mathscr{C}_2$", C2, bp+0.8*red);
dot(C1.C, 0.8*red); dot(C2.C, 0.8*red); dot(C3.C, 0.8*red);
inversion S1=inversion(C2,C3), S2=inversion(C1,C3);
dot("$S_1$", S1.C, 2S+W); dot("$S_2$", S2.C, 2S);
line cl=line(S1.C,S2.C); draw(cl);
point M=relpoint(C3,0.125), M2=S2*M, M1=S1*M;
dot("$M$", M, 2*E); dot("$M_2$", M2, NW); dot("$M_1$", M1, 2*dir(-10));
draw(segment(S2.C,M2), dashed+grey); draw(segment(S1.C,M1), dashed+grey);
circle C=circle(M,M2,M1);
draw(Label("$\mathscr{C}$", Relative(0.375)), C, lightblue);
line L=radicalline(C,C3); draw("$(d)$", L, grey);
point H=intersectionpoint(L,cl); dot("$H$", H, 2*dir(260));
circle Cp=circle(H,C3.C);
clipdraw(Label("$\mathscr{C'}$", Relative(0.9)), Cp, lightblue);
point[] T=intersectionpoints(Cp,C3);
point[][] Tp= new point[][] {{S2*T[0], S1*T[0]},{S2*T[1], S1*T[1]}};
draw(S2.C--Tp[0][0], dashed+grey); draw(S1.C--Tp[0][1], dashed+grey);
draw(S2.C--Tp[1][0], dashed+grey); draw(S1.C--Tp[1][1], dashed+grey);
dot(Label("$T_0$",UnFill), T[0], 2*dir(-20));
dot(Label("$T_1$",UnFill), T[1], W);
dot("$T''_0$", Tp[0][0], SW); dot("$T'_0$", Tp[0][1], NE);
dot("$T''_1$", Tp[1][0], W); dot("$T'_1$", Tp[1][1], N);
draw(Label("$\mathscr{T}_0$", Relative(0.375)), circle(T[0],Tp[0][0],Tp[0][1]), bpp);
draw(Label("$\mathscr{T}_1$", Relative(0.375)), circle(T[1],Tp[1][0],Tp[1][1]), bpp);
draw(Label("$\mathscr{C}_3$",Relative(0.625),UnFill), C3, bp+0.8*red);
