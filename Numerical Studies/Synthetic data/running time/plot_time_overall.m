%time_097= xlsread('W:\Multicategory clustering\Numerical experiment\Running time.xlsx','overallrunning_time_097plot'); 
time_097= xlsread('W:\Multicategory clustering\Numerical experiment\Running time.xlsx','overallrun_time_097p02r4g6plot'); 
p=plot(time_097(:, 1:4),'- .', 'LineWidth',1.3, 'MarkerSize',2)
%ylim([-1.5 3.5]);
  ylim([-4.3 11.2]);
  %xlim([7.8 12.2])
  xlim([0.8 5.2])
    p(1).Marker = 'd';
    p(2).Marker = 'o';
    p(3).Marker = 's';
    p(4).Marker = 'x';
     
    
    p(4).MarkerSize=4;
    
    p(1).LineStyle = '-.';
    p(2).LineStyle = '--';
    p(3).LineStyle = '-'; 
    p(4).LineStyle = ':';
     

    p(1).Color=[0.6350, 0.0780, 0.1840];
    p(2).Color=[0.61, 0.7, 0.9];
    p(3).Color=[0.3010, 0.7450, 0.9330];
    p(4).Color=[0.9290, 0.6940, 0.1250];
     
    
     xticks([1 2 3 4 5] )
      
     xticklabels({'7','8','9','10 ','11'})
     set(gca, 'FontSize', 8)
    %set(gca,'YTick',[]);
      
     %Set figure size
    %set(hFig, 'units', 'points', 'Position', [0 0 800 300])
    set(gcf, 'units', 'points', 'Position', [0 0 280 210])
      
     
    legend('S','K','KS','S-CAT') ;
    legend({},'FontSize',7);
    legend({},'Location','northwest');
     
    ylabel('log_2(Average Running Time in Seconds)', 'FontSize',8);
     
    xlabel('log_2(Sample Size)', 'FontSize',8); 
     
      
     
   
     
     savefilename = ['logtime_'];
 fname = 'W:\Multicategory clustering\Numerical experiment\Running time\plot';
 
print(gcf,fullfile(fname, savefilename), '-dpng','-r300');  
    



 