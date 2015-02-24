
% x is the data to be tabled (2d matrix only)
% figNo is the figure number 
% tableTitle is the title to be displayed for the table

%function[] = createTable(x,figNo,tableTitle)
%f = figure(figNo);
%t = uitable(f,'Data',x,'ColumnWidth',{50});
%end



function[] = createTable(varargin)
f = figure(cell2mat(varargin(nargin-1)));
data = cell2mat(varargin(1));


i = 2;
while i<nargin-1 ;
data = [data,cell2mat(varargin(i))];
i = i+1;
end

t = uitable(f,'Data',data,'ColumnWidth',{50});

end