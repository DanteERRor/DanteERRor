function Laitude_OT_Longitude(Laitude,Longetude)
    figure(1)
    clf;
    title('Laitude from Longetude')
    plot(Laitude,Longetude,'Color','g')
    xlabel('Laitude','Color','r')
    ylabel('Longetude','Color','m')
    grid on
    hold on
    legend('SSAU TOPAET')
end