function y = tempFT(x,datasize,mode)

% y = tempFT(x,datasize,mode)
%
% Temporal Fourier transform for 2D+time sequence of dim [nx ny nt]
% X = Vector of size nx*ny*nt or [nx ny nt]
%
%  mode = 1 = forward operator
%         2 = backward operator
%
% Benjamin Trémoulhéac
% UCL


nx = datasize(1);
ny = datasize(2);
nt = datasize(3);

if mode == 1   %  Forward map
    y = fft(reshape(x,[nx ny nt]),[],3)/sqrt(nt);
elseif mode == 2  %  Adjoint
    y = sqrt(nt)*ifft(reshape(x,[nx ny nt]),[],3);
end
y = y(:);
