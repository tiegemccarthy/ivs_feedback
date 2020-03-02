%function [ ] = plo( id,specif )
function [ ] = plo( station,id,varargin )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
global parameters
global colorMap
global X
global Y
global stations

nVarargs = length(varargin);
% for k = 1:nVarargs
%     varInput=varargin{k};
%     switch varInput
%         case 'add'
%             j=varargin(k+1);
%     
% end

% if ~exist('specif','var')
%    if strcmp(specif,'add')  
% end
width=5;

for i=1:length(stations)
    if strcmp(stations{i},station)
        idS=i;
    end
end
    

% test if id is char or double
if ~isnumeric(id)
    for i=1:length(parameters)
        if strcmp(parameters{i},id)
            clear id
            id=i;
            break;
        end
    end
end
if ~isnumeric(id)
    disp('name of parameter doesnt exist')
    return;
end

Xp=permute(X{idS}{id},[2,1,3]);
Yp=permute(Y{idS}{id},[2,1,3]);
[rX,cX,lX]=size(Xp);
[rY,cY,lY]=size(Yp);

for i=1:lY
    switch i
        case 1
            if rX==rY
                Xp1=Xp(:,:,1);
                Yp1=Yp(:,:,i);

                Xp1=Xp1(:);
                Yp1=Yp1(:);
            else
                Xp1=Xp(:,:,1);
                Xp1=Xp1(:);
                Yp1=Yp(:,:,i);                
            end
        case 2
            Ep1=Yp(:,:,i);
            Ep1=Ep1(:);
    end        
       
end
    


% 
%         switch i
%             case {1,2}
%                 if rX==rY
%                     Xp1=Xp(:,:,1);
%                     Yp1{i}=Yp(:,:,i);
% 
%                     Xp1=Xp1(:);
%                     Yp1{i}=Yp1{i}(:);
%                 else
%                     Xp1=Xp1(:);
%                     Yp1{i}=Yp1(:);
%                 end
%         end
%         if i==2
%             if rX==rY
%                 Xp1=Xp(:,:,1);
%                 Yp1{1}=Yp(:,:,1);
%                 Ep1=Yp(:,:,2);
%                 
%                 Xp1=Xp1(:);
%                 Yp1{1}=Yp1{1}(:);
%                 Ep1=Ep1(:);
%                 
%                 %figure(3)
%                 %h(i)=errorbar(Xp1(Xp1~=0),Yp1(Xp1~=0),Ep1(Xp1~=0),'x','Color',colorMap(id,1:3));                                
%             end
%         end    
%     end
caseSession=0;
if nVarargs==0
    
    for i=1:lY
        switch i
            case 1
                if rX==rY
                    x=Xp1(Xp1~=0);
                    y=Yp1(Xp1~=0);
                    
                else                    
                    x=Xp1(Xp1~=0);
                    y=sum(Yp1);
                end
            case 2
                if rX==rY
                    x=Xp1(Xp1~=0);
                    y=Yp1((Xp1~=0));
                    e=Ep1(Xp1~=0);                             
                end                
        end  
    end
else
    
    for k = 1:nVarargs
        varInput=varargin{k};

%     for i=1:lY
%         switch i
%             case {1,2}
%                 if rX==rY
%                     
%                     figure(i)
%                     h(i)=plot(Xp1((Xp1~=0)),Yp1{i}((Xp1~=0)),'x','Color',colorMap(id,1:3),'LineWidth',width);
%                 else
%                     
%                     figure(i)
%                     h(i)=plot(Xp1(Xp1~=0),sum(Yp1{i},2));
%                 end
%         end
%         if i==2
%             if rX==rY
%                                 
%                 figure(3)
%                 h(i)=errorbar(Xp1(Xp1~=0),Yp1{1}(Xp1~=0),Ep1(Xp1~=0),'x','Color',colorMap(id,1:3),'LineWidth',width);                                
%             end
%         end    
%     end

   
    switch varInput
        case 'session'
            caseSession=1;
            for i=1:lY
                switch i
                    case 1
                        if rX==rY
                            Xp1=Xp(:,:,1);
                            x=find(Xp1(1,1:cX)~=0);
                            Yp1=Yp(:,x,i);
                            y=mean(Yp1);
                        else
                            x=find(Xp1~=0);
                            y=sum(Yp1(x));
                        end
                    case 2
                       if rX==rY
                           x=find(Xp1(1,1:cX)~=0);
                           y=mean(Yp1);
                           e=std(Yp1);
                       end 
                end                
            end
        case 'add'
            hold on
            f=varargin{k+1};
            
    end
    end
end

if nVarargs~=0 && caseSession==0
    for i=1:lY
        switch i
            case 1
                if rX==rY
                    x=Xp1(Xp1~=0);
                    y=Yp1(Xp1~=0);
                    
                else                    
                    x=Xp1(Xp1~=0);
                    y=sum(Yp1);
                end
            case 2
                if rX==rY
                    x=Xp1(Xp1~=0);
                    y=Yp1((Xp1~=0));
                    e=Ep1(Xp1~=0);                             
                end                
        end  
    end
end

if ~exist('f')
    f=1;
end
    
for i=1:lY
        switch i
            case 1                 
                    figure(f)
                    h(i)=plot(x,y,'x','Color',colorMap(idS,1:3),'MarkerSize',width);
            case 2
                
                    figure(f+1)
                    h(i)=plot(x,e,'x','Color',colorMap(idS,1:3),'MarkerSize',width);
                    figure(f+2)
                    h(i)=errorbar(x,y,e,'x','Color',colorMap(idS,1:3),'MarkerSize',width);                               
                                
        end
end


end

