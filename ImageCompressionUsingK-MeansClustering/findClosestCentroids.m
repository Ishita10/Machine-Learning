function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
%m=size(X,2);
%for i=1:size(X,1)
%dist=(X'*X).-(2*X*centroids').+(centroids'*centroids);
%for j=1:K,
%ipxc(K,m)=2*centroids*X';
%ipc(K,m)=centroids'*centroids;
%mindist=bsxfun(@minus , ipc , ipxc);

%[mindist1,ind]=min(mindist);

%idx(i)=ind;

%i=i+1;
%j=j+1;
%end
%end



for i=1:size(X,1)
for j=1:size(centroids,1)
dist=sum((X(i,:).-centroids(j,:)).^2);
array(j)=dist;
j=j+1;
end
[mindist,ind]=min(array);
idx(i)=ind;
i=i+1;
end




























% =============================================================

end

