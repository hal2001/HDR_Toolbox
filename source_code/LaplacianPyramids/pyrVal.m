function img=pyrVal(pyramid)
%
%
%        img=pyrVal(pyramid)
%
%
%        Input:
%           -pyramid: an image pyramid
%
%        Output:
%           -img: an image
% 
%     This program is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>.
%

list=pyramid.list;
base=pyramid.base;

n = length(list);

img=[];
for i=1:n
    ind=n-i+1;
    [r,c]=size(list(ind).detail);
    if(i==1)        
        base = imresize(base, [r,c]);
        img=base+list(ind).detail;
    else
        img = imresize(img, [r,c]);
        img=img+list(ind).detail;        
    end
end

end