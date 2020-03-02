function [ params,PARAMS,nBL__,X0 ] = estimation( stationNames,nBL_,yAx_X_,X0_,X_ )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

%% Sessionwise adjustment
params=zeros(length(nBL_(1,:)),length(stationNames));
X0=zeros(length(nBL_(1,:)),length(stationNames));
nBL__=nBL_; % number of Baselines changes if stations are delteted due to singularity
for k=1:length(nBL_(1,:))
    
    
    if k==1
        
        for i=1:nBL_(1,k)
            
            for j=1:length(stationNames)
                if strcmp(X_{i,1},stationNames(j))
                    A(i,j)=0.5*(yAx_X_(i,2)*yAx_X_(i,3))^(-0.5)*yAx_X_(i,3);
                    
                end
                if strcmp(X_{i,2},stationNames(j))
                    A(i,j)=0.5*(yAx_X_(i,2)*yAx_X_(i,3))^(-0.5)*yAx_X_(i,2);                 
                end
            end
        end
        
        [r,c]=size(A);
        if r<2
            disp('more unkowns than observations, no re-estimation in this session')
            x_=0;
            params(k,1:length(x_))=x_';
            X0_row=X0_(k,:);
            X0(k,find(x_'~=0))=X0_row(x_'~=0);
            
            clear A
            
            continue
        end
        
        % weight
        P=diag(yAx_X_(1:nBL_(1,k),4));
        
        % Delete zero Columns in A Matrix to avoid singularity
        lostColumn=[];
        d=1;
        A_=A;
   
        for j=1:length(A_(1,:))
           if (A_(:,j)==zeros(nBL_(1,k),1))

                B=[A(:,1:j-d),A(:,j+2-d:length(A(1,:)))];
                A=B;
                lostColumn(d)=j;
                d=d+1;
           end

        end
        
        if isempty(lostColumn)
            %X
            B=A;
            L0=sqrt(yAx_X_(1:nBL_(1,k),2).*yAx_X_(1:nBL_(1,k),3));
            L=yAx_X_(1:nBL_(1,k),1);
            l=L-L0;
            N=B'*P*B;
            x_=inv(N)*B'*P*l;
            params(k,1:length(x_))=x_';
        else
            %X
            L0=sqrt(yAx_X_(1:nBL_(1,k),2).*yAx_X_(1:nBL_(1,k),3));
            L=yAx_X_(1:nBL_(1,k),1);
            l=L-L0;
            N=B'*P*B;
            x_=inv(N)*B'*P*l;
            % Insert zero values to correspond to correct column indices
            for j=1:length(lostColumn)
                x=x_(1:lostColumn(j)-1);
                x(lostColumn(j))=0;
                x(lostColumn(j)+1:length(x_)+1)=x_(lostColumn(j):end);
                x_=x;
 
            end
            
            if rcond(N)<10^-10
            
                badStations=find(N(1,:)==0);
                disp(['Session ' num2str(k) ': singularity in N'])
                disp('Following stations are not used to avoid singularity:')
                for j=badStations
                    disp(stationNames{j})
                end

                d=1;
                A_=A;
                for j=badStations
                    B=[A(:,1:j-d),A(:,j+2-d:length(A(1,:)))];
                    A=B;
                    lostColumn(d)=j;
                    d=d+1;                    
                end
                for j=1:length(lostColumn)
                    deleteBL(j,1)=find(A_(:,lostColumn(j))~=0);                
                end
                if deleteBL(1)==deleteBL(2)
                    deleteBL=deleteBL(1);
                end
                L0=sqrt(yAx_X_(sum(nBL_(1,1:k-1))+1:sum(nBL_(1,1:k)),2).*yAx_X_(sum(nBL_(1,1:k-1))+1:sum(nBL_(1,1:k)),3));
                L=yAx_X_(sum(nBL_(1,1:k-1))+1:sum(nBL_(1,1:k)),1);            

                d=1;            
                for j=deleteBL
                    L0=[L0(1:j-d);L0(j+2-d:length(L0(:,1)))];                
                    L=[L(1:j-d);L(j+2-d:length(L(:,1)))];
                    B=[B(1:j-d,:);B(j+2-d:length(B(:,1)),:)];
                    d=d+1;
                end

                nBL__(1,k)=nBL_(1,k)-length(deleteBL);


                l=L-L0;
                N=B'*P*B;
                x_=inv(N)*B'*P*l;

                % Insert zero values to correspond to correct column indices
                for j=1:length(lostColumn)
                    x=x_(1:lostColumn(j)-1);
                    x(lostColumn(j))=0;
                    x(lostColumn(j)+1:length(x_)+1)=x_(lostColumn(j):end);
                    x_=x;
                end   
          

            end
           
            params(k,1:length(x_))=x_';
            X0_row=X0_(k,:);
            X0(k,find(x_'~=0))=X0_row(x_'~=0);
            
        end
        clear A
        clear A_
        clear B
        clear lostColumn
        clear x_
        clear x
        
    else
        
        a=0;
        for i=sum(nBL_(1,1:k-1))+1:sum(nBL_(1,1:k))
            a=a+1;
            for j=1:length(stationNames)
                if strcmp(X_{i,1},stationNames(j))
                    A(a,j)=0.5*(yAx_X_(i,2)*yAx_X_(i,3))^(-0.5)*yAx_X_(i,3);                   

                end
                if strcmp(X_{i,2},stationNames(j))
                    A(a,j)=0.5*(yAx_X_(i,2)*yAx_X_(i,3))^(-0.5)*yAx_X_(i,2);                   
                end
            end
        end
        
        [r,c]=size(A);
        if r<2
            disp('more unkowns than observations, no re-estimation in this session')
            x_=0;
            params(k,1:length(x_))=x_';
            X0_row=X0_(k,:);
            X0(k,find(x_'~=0))=X0_row(x_'~=0);
            
            clear A
            
            continue
        end
            
        
        % weight
        P=diag(yAx_X_(sum(nBL_(1,1:k-1))+1:sum(nBL_(1,1:k)),4));
        
        % Delete zero Columns in A Matrix to avoid singularity
        lostColumn=[];
        d=1;
        A_=A;
        A__=A;
        for j=1:length(A_(1,:))
           if (A_(:,j)==zeros(nBL_(1,k),1))

                B=[A(:,1:j-d),A(:,j+2-d:length(A(1,:)))];
                A=B;
                lostColumn(d)=j;
                d=d+1;
                
           end

        end
        
        if isempty(lostColumn)
           
            B=A;
            L0=sqrt(yAx_X_(sum(nBL_(1,1:k-1))+1:sum(nBL_(1,1:k)),2).*yAx_X_(sum(nBL_(1,1:k-1))+1:sum(nBL_(1,1:k)),3));
            L=yAx_X_(sum(nBL_(1,1:k-1))+1:sum(nBL_(1,1:k)),1);
            l=L-L0;
            N=B'*P*B;
            x_=inv(N)*B'*P*l;
            
        else
          
            L0=sqrt(yAx_X_(sum(nBL_(1,1:k-1))+1:sum(nBL_(1,1:k)),2).*yAx_X_(sum(nBL_(1,1:k-1))+1:sum(nBL_(1,1:k)),3));
            L=yAx_X_(sum(nBL_(1,1:k-1))+1:sum(nBL_(1,1:k)),1);
            l=L-L0;
            N=B'*P*B;
            x_=inv(N)*B'*P*l;
            
             % Insert zero values to correspond to correct column indices
            for j=1:length(lostColumn)
                x=x_(1:lostColumn(j)-1);
                x(lostColumn(j))=0;
                x(lostColumn(j)+1:length(x_)+1)=x_(lostColumn(j):end);
                x_=x;
            end         
                    
        end
        
        % Singualrity
        if rcond(N)<10^-10
            
            badStations=find(N(1,:)==0);
            for j=lostColumn
                for d=1:length(badStations)
                    if j<badStations(d)
                        badStations(d)=badStations(d)+1;
                    end
                end
            end

            disp(['Session ' num2str(k) ': singularity in N'])
            disp('Following stations are not used to avoid singularity:')
            for j=badStations
                disp(stationNames{j})
            end
            
            badStations=find(N(1,:)==0);
            d=1;
            A_=A;
            for j=badStations
                B=[A(:,1:j-d),A(:,j+2-d:length(A(1,:)))];
                A=B;
                lostColumn(d)=j;
                d=d+1;                    
            end
            for j=1:length(lostColumn)
                deleteBL(j,1)=find(A_(:,lostColumn(j))~=0);                
            end
            if (deleteBL(1)==deleteBL(2))&&length(deleteBL)>1
                deleteBL=deleteBL(1);
            end
            L0=sqrt(yAx_X_(sum(nBL_(1,1:k-1))+1:sum(nBL_(1,1:k)),2).*yAx_X_(sum(nBL_(1,1:k-1))+1:sum(nBL_(1,1:k)),3));
            L=yAx_X_(sum(nBL_(1,1:k-1))+1:sum(nBL_(1,1:k)),1);            
            
            if length(deleteBL)>1
                d=1;            
                for j=deleteBL
                    L0=[L0(1:j-d);L0(j+2-d:length(L0(:,1)))];                
                    L=[L(1:j-d);L(j+2-d:length(L(:,1)))];
                    B=[B(1:j-d,:);B(j+2-d:length(B(:,1)),:)];
                    P=diag([yAx_X_(1:j-d,4); yAx_X_(j+2-d:length(P(:,1)),4)]);
                    d=d+1;
                end
            end
            
            nBL__(1,k)=nBL_(1,k)-length(deleteBL);
            
            
            l=L-L0;
            N=B'*P*B;
            x_=inv(N)*B'*P*l;            
                  
            A_A_=A__'*A__;
            lostColumn=find(A_A_(1,:)==0);
            
            % Insert zero values to correspond to correct column indices
            for j=1:length(lostColumn)
                %X0_(k,lostColumn(j))=0;
                x=x_(1:lostColumn(j)-1);
                x(lostColumn(j))=0;
                x(lostColumn(j)+1:length(x_)+1)=x_(lostColumn(j):end);
                x_=x;
            end   
          

        end
        
        
        params(k,1:length(x_))=x_';
        X0_row=X0_(k,:);
        X0(k,find(x_'~=0))=X0_row(x_'~=0);
       
        
        clear A
        clear A_
        clear A_A_
        clear A__
        clear B
        clear lostColumn
        clear deleteBL
        clear N
        clear L0
        clear L
        clear l
        clear x_
        clear x
        clear P

    end
end        

PARAMS=X0+params;
end

