  
function [] =plot_acc_4lines(n)  
%data is saved as r=2,g=3			r=2,g=6			r=2,g=9			r=4,g=3			r=4,g=6			r=4,g=9			r=8,g=3			r=8,g=6			r=8,g=9		
%s	k	ks sCAT																							
if n==512 
Acc_result= xlsread('W:\Multicategory clustering\Numerical experiment\Synthetic data.xlsx','512miss095_099_spe_km_ks_sCAT');
elseif n==1024
Acc_result= xlsread('W:\Multicategory clustering\Numerical experiment\Synthetic data.xlsx','1024miss095_099_spe_km_ks_sCAT');
end
kk=0;
for j=1:12:25 %for r=2,4,8
  kk=kk+1;
    k=0;
    for i=j:4:j+8  
       k=k+1;
       pos1 = [0.1+(k-1)*0.3 0.7-(kk-1)*0.3 0.3 0.23];
      
      % pos1 = [0.1+(k-1)*0.3 0.3 0.3 0.6];    
        %pos1 = [0.1+(k-1)*0.5 0.15 0.4 0.7]; 
       subplot('Position',pos1)
       %p=plot(Acc_result(:, i:i+3),'- .', 'LineWidth',1.5, 'MarkerSize',1.5);
       p=plot(Acc_result(:, i:i+3),'- .', 'LineWidth',1.2, 'MarkerSize',1.2);
      %p=errorbar(Acc_result(:, i:i+2),Acc_result(:, 27+i:27+i+2));

 
if n==512 & j==1  
       ylim([60 100]);
   elseif n==512 & j==13  
       ylim([20 100]);
   elseif n==512 & j==25 
       ylim([10 100]);
       
  elseif n==1024 & j==1  
     ylim([96 100]);  
  elseif n==1024 & j==13  
      ylim([30 100]);
  elseif n==1024 & j==25  
      ylim([10 100]);
end
 
    
    
  
    p(1).Marker = 'd';
    p(2).Marker = 'o';
    p(3).Marker = 's';
    p(4).Marker = 'x';
     
    
    %p(4).MarkerSize=6;
    
    p(1).LineStyle = '-.';
    p(2).LineStyle = '--';
    p(3).LineStyle = '-'; 
    p(4).LineStyle = ':';
     

    p(1).Color=[0.6350, 0.0780, 0.1840];
    p(2).Color=[0.61, 0.7, 0.9];
    p(3).Color=[0.3010, 0.7450, 0.9330];
    p(4).Color=[0.9290, 0.6940, 0.1250];
     
     xticks([1 2 3 4 5 6 7 8 9 10] )
    %xticklabels({'0.95','0.955','0.96','0.965','0.97','0.975','0.98','0.985','0.99'})
     xticklabels({'95',' ','96',' ','97',' ','98',' ','99'})
     %xticklabels({'90','','92','','94','','96','','98',''})
     set(gca, 'FontSize', 8)
    %set(gca,'YTick',[]);
    if k==2 | k==3
       set(gca,'Yticklabel',[]) 
    end
    %hFig = gcf;
    %grid on; 
    %set(gca, 'YMinorgrid', 'off');
    %set(gca, 'XMinorgrid', 'off');

     %Set figure size
    %set(gcf, 'units', 'points', 'Position', [0 0 300 150])
    %set(gcf, 'units', 'points', 'Position', [0 0 600 300])
     
    
    %pos = get(gcf,'Position');
    %set(gcf, 'PaperPositionMode','manual', 'paperunits','points',...
	%'PaperSize', [pos(3), pos(4)]);
    if j==1 & i==j
    title('r = 2,   g = 3','FontSize',10,'fontweight','normal')
    elseif j==1 & i==j+4  
    title('r = 2,   g = 6','FontSize',10,'fontweight','normal')
    elseif j==1 & i==j+8    
    title('r = 2,   g = 9','FontSize',10,'fontweight','normal')

    elseif j==13 & i==j
    title('r = 4,   g = 3','FontSize',10,'fontweight','normal')
    elseif j==13 & i==j+4  
    title('r = 4,   g = 6','FontSize',10,'fontweight','normal')
    elseif j==13 & i==j+8    
    title('r = 4,   g = 9','FontSize',10,'fontweight','normal')
    
    elseif j==25 & i==j
    title('r = 8,   g = 3','FontSize',10,'fontweight','normal')
    elseif j==25 & i==j+4  
    title('r = 8,   g = 6','FontSize',10,'fontweight','normal')
    elseif j==25 & i==j+8    
    title('r = 8,   g = 9','FontSize',10,'fontweight','normal')
    end  
    
    if k==3 & kk==1
    legend('S','K','KS','S-CAT') ;
    legend({},'FontSize',4);
    legend({},'Location','southwest');
    %legend({},'Location',[0.4 0.4 0.4 0.4]);
    %newPosition = [0.4 0.4 0.2 0.2];
    end
     
 
     
    if k==1 & kk==2
    ylabel('Accuracy Rate (%)', 'FontSize',10);
    end
    if k==2 & kk==3
    xlabel('\epsilon : Missing Probability (%)', 'FontSize',10); 
    else xlabel(''); 
    end
      
    end
   
    %{
    if n==512
     suptitle('n=512');
    elseif n==1024
        suptitle('n=1024');
    end
    %}

    
     
    % Write to files
    if n==512
       % savefilename = ['Acc_512_', int2str(j)];
       savefilename = 'Acc_512_'
    elseif n==1024
        %savefilename = ['Acc_1024_', int2str(j)];
        savefilename = 'Acc_1024_';
    end
    

%saveas(hFig, ['./fig_files/',savefilename], 'fig'); % save .fig files in a separate subfolder
%saveas(hFig, savefilename, 'fig'); % save .fig files in a separate subfolder
if n==512
    fname = 'W:\Multicategory clustering\Numerical experiment\512\plot';
elseif n==1024
    fname = 'W:\Multicategory clustering\Numerical experiment\1024\plot';
end
%saveas(hFig, fullfile(fname, savefilename), 'fig');
%saveas(hFig, fullfile(fname, savefilename), 'pdf');
%print(hFig,fullfile(fname, savefilename),'-dpdf','-r0') 
%saveas(hFig, fullfile(fname, savefilename), 'jpg');

%hgexport(gcf, fullfile(fname, savefilename), hgexport('factorystyle'), 'Format', 'jpeg') 
 

%Set figure size
    %set(gcf, 'units', 'points', 'Position', [0 0 300 150])
    set(gcf, 'units', 'points', 'Position', [0 0 400 400])
     
end   
print(gcf,fullfile(fname, savefilename), '-dpng','-r300');  
 
   



 