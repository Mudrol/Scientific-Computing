function [ s ] = file2cellstr( filename )
%file2cellstr takes a text file as parameter and returns the nonempty
%lines of the file.
%   If there is no file as a parameter, the user will be prompted to locate
%   the file.
s = {};
narginchk(0,1);
if nargin < 1
    filename = uigetfile;
end

fileid = fopen(filename);
while ~feof(fileid)
    row = fgetl(fileid);
    if ~isempty(row)
        s{end+1, 1} = row;
    end
end
fclose(fileid);
end

