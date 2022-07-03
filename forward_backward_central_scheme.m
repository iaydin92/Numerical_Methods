x0 = 1;
dx = 10.^[-3:.1:0];
for k=1:length(dx)
    %forward difference scheme 
    dudx_f(k) = ((x0 + dx(k))^3-(x0+dx(k))^2-x0^3+x0^2)/dx(k);
    %backward difference scheme 
    dudx_b(k) = (x0^3-x0^2-(x0-dx(k))^3+(x0-dx(k))^2)/dx(k);
    %central difference scheme 
    dudx_c(k) = ((x0+dx(k))^3-(x0+dx(k))^2-(x0-dx(k))^3+(x0-dx(k))^2)/(2*dx(k));
end

%%plot results 

figure(1);
semilogx(dx,dudx_f,'red','LineWidth',2)
hold on
semilogx(dx,dudx_b,'green','LineWidth',2)
semilogx(dx,dudx_c,'black','LineWidth',2)
set(gca,'fontsize',16)
xlabel('x','FontSize',18)
ylabel('y','FontSize',18)
legend('Forward difference','Backward difference','Central difference','location','northwest');

