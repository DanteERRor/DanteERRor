%% 1-1 %%
clc;
clear;

f=fopen('1.txt','r');
GGAn=zeros(1,353); %%%%%%%%% Сделать понятные обозначения и пометки а то забуду!!!  %%%%%%%%%%%%
GGAe=zeros(1,353);
GGA1=zeros(1,353);
GGA2=zeros(1,353);
GGA3=zeros(1,353);
GGA4=zeros(1,353);
GGA5=zeros(1,353);
GGAt=zeros(1,353);

GPVTGn=zeros(1,340);
GPVTGk=zeros(1,340);

i=0;
i1=0;
while ~feof(f) 
    k1=fscanf(f,'%s>');
    k2=fscanf(f,'\n$GPGGA,%f,%f,N,%f,E,%f,%f,%f,%f,M,%f,M,,*%s');
    k3=fscanf(f,'%s>\n');
    k4=fscanf(f,'%s>');
    k5=fscanf(f,'%s>');
    k6=fscanf(f,'\n$GPVTG,,T,,M,%f,N,%f,K,A*%s\n');
    if k2~=[0]
        if length(k2)>8
            i=i+1;
            GGAn(i)=k2(2);
            GGAe(i)=k2(3);
            GGAt(i)=k2(1);
            GGA1(i)=k2(4);
            GGA2(i)=k2(5);
            GGA3(i)=k2(6);
            GGA4(i)=k2(7);
            GGA5(i)=k2(8);
        end
    end

    if k6~=[0]
        if length(k6)>2
            i1=i1+1;
            GPVTGn(i1)=k6(1);
            GPVTGk(i1)=k6(2);
        end
    end
end
fclose(f);



%% 1-3 %%
Laitude_OT_Longitude(s.GGA_Latitude_n,s.GGA_Longitude_e)
% plot(s.GGAn,s.GGAe)

