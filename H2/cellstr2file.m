function [  ] = cellstr2file( strings, filename )
%cellstr2file writes the strings in a cell string to a file.
%   If no filename is given, the user will be prompted to create a file.
narginchk(1,2);
if nargin < 2
    filename = uiputfile;
end
assert(iscellstr(strings),'Error: input needs to be a cell array of strings.');
assert(ischar(filename),'Error: filename needs to be a string.');

fileid = fopen(filename,'w');
for row_number = 1:length(strings)
    fprintf(fileid, strings{row_number});
    fprintf(fileid,'\n');
end
fclose(fileid);
end

